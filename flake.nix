{
  description = "Transit-over-WebSocket Message Hub";

  outputs = { self, nixpkgs, ... }:
    let
      supportedSystems = ["x86_64-linux" "x86_64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      packages = forAllSystems (system: {
        funnel = let
          pkgs = import nixpkgs { inherit system; };
          jdk = pkgs.graalvm17-ce;
          clojure = pkgs.clojure.override { inherit jdk; };
          cljdeps = import ./deps.nix { inherit (pkgs) fetchMavenArtifact fetchgit lib; };
        in
          pkgs.stdenv.mkDerivation rec {
            pname = "funnel";
            version = "1.4.71";

            src = pkgs.fetchFromGitHub {
              owner = "lambdaisland";
              repo = "funnel";
              rev = "v${version}";
              sha256 = "sha256-h+3SlXu1W5AyMX4iGehm1W4JXNjiFnvixkJiKIrT4e8=";
            };
            buildInputs =  [ clojure jdk ];
            HOME = "$TMPDIR";

            patches = [
              (pkgs.substituteAll {
                src = ./fix-classpath.patch;
                classpath = cljdeps.makeClasspaths { extraClasspaths = [ "src" "lib"]; };
              })
            ];

            installPhase = ''
              install -D funnel $out/bin/funnel
            '';
          };
      });
      defaultPackage = forAllSystems (system: self.packages."${system}".funnel);
      overlay = (final: prev: {
        inherit (self.packages.${final.stdenv.hostPlatform.system})
          funnel;
      });
    };
}

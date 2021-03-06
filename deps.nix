# generated by clj2nix-1.1.0-rc
{ fetchMavenArtifact, fetchgit, lib }:

let repos = [
        "https://repo1.maven.org/maven2/"
        "https://repo.clojars.org/" ];

  in rec {
      makePaths = {extraClasspaths ? []}:
        if (builtins.typeOf extraClasspaths != "list")
        then builtins.throw "extraClasspaths must be of type 'list'!"
        else (lib.concatMap (dep:
          builtins.map (path:
            if builtins.isString path then
              path
            else if builtins.hasAttr "jar" path then
              path.jar
            else if builtins.hasAttr "outPath" path then
              path.outPath
            else
              path
            )
          dep.paths)
        packages) ++ extraClasspaths;
      makeClasspaths = {extraClasspaths ? []}:
       if (builtins.typeOf extraClasspaths != "list")
       then builtins.throw "extraClasspaths must be of type 'list'!"
       else builtins.concatStringsSep ":" (makePaths {inherit extraClasspaths;});
      packageSources = builtins.map (dep: dep.src) packages;
      packages = [
  rec {
    name = "transit-java/com.cognitect";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "transit-java";
      groupId = "com.cognitect";
      sha512 = "660d4f034af67793ec53f00c661e57dd94817a3d1ab978163fe6289e06f16fe3f8431496c8e4eff1b9729cc2c47e906b6afb933605034fc2b64829c33fb47d99";
      version = "1.0.343";
      
    };
    paths = [ src ];
  }

  rec {
    name = "javax.inject/javax.inject";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "javax.inject";
      groupId = "javax.inject";
      sha512 = "e126b7ccf3e42fd1984a0beef1004a7269a337c202e59e04e8e2af714280d2f2d8d2ba5e6f59481b8dcd34aaf35c966a688d0b48ec7e96f102c274dc0d3b381e";
      version = "1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "clojure/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "clojure";
      groupId = "org.clojure";
      sha512 = "4bb567b9262d998f554f44e677a8628b96e919bc8bcfb28ab2e80d9810f8adf8f13a8898142425d92f3515e58c57b16782cff12ba1b5ffb38b7d0ccd13d99bbc";
      version = "1.10.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "joda-time/joda-time";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "joda-time";
      groupId = "joda-time";
      sha512 = "8c2725ddbb779442ad9a8417b594fd0d8ee4b3bba568d4f5f58de345c5de16aacf0777ce7bf01e943cc054cb2fc97d2702e181e0ce22453cc4386cef325d4902";
      version = "2.8.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "commons-codec/commons-codec";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-codec";
      groupId = "commons-codec";
      sha512 = "8edecc0faf38e8620460909d8191837f34e2bb2ce853677c486c5e79bb79e88d043c3aed69c11f1365c4884827052ee4e1c18ca56e38d1a5bc0ce15c57daeee3";
      version = "1.10";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.analyzer/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.analyzer";
      groupId = "org.clojure";
      sha512 = "c51752a714848247b05c6f98b54276b4fe8fd44b3d970070b0f30cd755ac6656030fd8943a1ffd08279af8eeff160365be47791e48f05ac9cc2488b6e2dfe504";
      version = "1.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-component-annotations/org.codehaus.plexus";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-component-annotations";
      groupId = "org.codehaus.plexus";
      sha512 = "e20aa9fdb3fda4126f55ef45c36362138c6554ede40fa266ff6b63fe1c3b4d699f9eb95793f26527e096ec7567874aa7af5fe84124815729fdb2d4abaa9ddea8";
      version = "1.7.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "commons-lang3/org.apache.commons";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-lang3";
      groupId = "org.apache.commons";
      sha512 = "9e6ff20e891b6835d5926c90f237d55931e75723c8b88d6417926393e077e71013dab006372d34a6b5801e6ca3ce080a00f202cba700cab5aabfc17bbbdcab36";
      version = "3.5";
      
    };
    paths = [ src ];
  }

  rec {
    name = "aws-maven/org.springframework.build";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "aws-maven";
      groupId = "org.springframework.build";
      sha512 = "2f7699aec317c4d2d8d6487c8c229c2033dbeed69b2d931afcba9911a4922b9a06283ef4177ed1767dbfb617e2de7d86fbfd6b82358419ad107afec5fbe5454a";
      version = "5.0.0.RELEASE";
      
    };
    paths = [ src ];
  }

  rec {
    name = "core.specs.alpha/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "core.specs.alpha";
      groupId = "org.clojure";
      sha512 = "c1d2a740963896d97cd6b9a8c3dcdcc84459ea66b44170c05b8923e5fbb731b4b292b217ed3447bbc9e744c9a496552f77a6c38aea232e5e69f8faa627dea4b5";
      version = "0.2.56";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jackson-databind/com.fasterxml.jackson.core";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jackson-databind";
      groupId = "com.fasterxml.jackson.core";
      sha512 = "0d637e544d078e14caa508474a50583d5da967824f10953886cb05a2c4a05af5c2fa277bbc21823f31401a3f774d013e09fb3668ada8bbc49470143ebb2a0a9f";
      version = "2.5.5";
      
    };
    paths = [ src ];
  }

  rec {
    name = "spec.alpha/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "spec.alpha";
      groupId = "org.clojure";
      sha512 = "0740dc3a755530f52e32d27139a9ebfd7cbdb8d4351c820de8d510fe2d52a98acd6e4dfc004566ede3d426e52ec98accdca1156965218f269e60dd1cd4242a73";
      version = "0.2.194";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.cli/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.cli";
      groupId = "org.clojure";
      sha512 = "1d88aa03eb6a664bf2c0ce22c45e7296d54d716e29b11904115be80ea1661623cf3e81fc222d164047058239010eb678af92ffedc7c3006475cceb59f3b21265";
      version = "1.0.206";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-transport-wagon/org.apache.maven.resolver";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-wagon";
      groupId = "org.apache.maven.resolver";
      sha512 = "f445e5c7de0ed02566d2ecf2b540599e4b58256cff84df1824911709dfa95a91c826655c74f2be7b9c70d7225a98e7042ed489bfd497cf5a262269f7e3e922e1";
      version = "1.1.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jcl-over-slf4j/org.slf4j";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jcl-over-slf4j";
      groupId = "org.slf4j";
      sha512 = "0a703864b269de6f7bc98df0fa98aa943cc327a4ca2915899d460e4a071fcc3fbe70957eb91b740cc935d0960b3d98f30c54a0a4019d7ae8c6d50f51edb8d149";
      version = "1.7.25";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.analyzer.jvm/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.analyzer.jvm";
      groupId = "org.clojure";
      sha512 = "36ad50a7a79c47dea16032fc4b927bd7b56b8bedcbd20cc9c1b9c85edede3a455369b8806509b56a48457dcd32e1f708f74228bce2b4492bd6ff6fc4f1219d56";
      version = "1.2.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jsch.agentproxy.jsch/com.jcraft";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.jsch";
      groupId = "com.jcraft";
      sha512 = "07e028fc7e47da2012116933d796ac75908e84eb5a42d8147aa11aa66c0c91ddd509628b19ad6603c7ce118a05e8985329fa0dc0dad7661d09ec5b3c76333ee0";
      version = "0.0.9";
      
    };
    paths = [ src ];
  }

  rec {
    name = "wagon-provider-api/org.apache.maven.wagon";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "wagon-provider-api";
      groupId = "org.apache.maven.wagon";
      sha512 = "4571002ad5bfc0442bb2eaf32ec42675dc0a179413230615475842bba12fb561159ffc0213127cf241088641a218627e84049b715b9e71ed83d960f4f09da985";
      version = "3.0.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jsch.agentproxy.sshagent/com.jcraft";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.sshagent";
      groupId = "com.jcraft";
      sha512 = "0898f33a1eae03ab3b0d78ad26076756ec0eec456e185b7d5057e003b33e0cb1b2ca57b8c4cdca48eae544daf36adcabd170138e5950b85ab8b64c97c094ba9d";
      version = "0.0.9";
      
    };
    paths = [ src ];
  }

  rec {
    name = "pedestal.log/io.pedestal";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "pedestal.log";
      groupId = "io.pedestal";
      sha512 = "32dd268f325ec4a1e2b64abf47995ed3281039136600e36ae5b3841c75d17679898c59daf830558d765a65c0ca5ddd0b7b5746e159d82bdce05f4b0d3c72cec4";
      version = "0.5.9";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jackson-dataformat-cbor/com.fasterxml.jackson.dataformat";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jackson-dataformat-cbor";
      groupId = "com.fasterxml.jackson.dataformat";
      sha512 = "d71d8a4e290231fdf99a0e5783809e6184406d8330c3bcdf6cd4f5061249bd9f0b28c06eeb76164c3cca7d9e2f6e8801fcaefe4010a585b00f93c6b51b38cd0d";
      version = "2.6.7";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-transport-http/org.apache.maven.resolver";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-http";
      groupId = "org.apache.maven.resolver";
      sha512 = "0dcfc242d10c9114ac176b68a1be49addf3fc50306cff5ac469ab5d72e595d0706d70055a3a6295e5a2bbe9c6f3d2d4e5db42af0059ac5de2fcbd540b1eff8da";
      version = "1.1.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-model-builder/org.apache.maven";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-model-builder";
      groupId = "org.apache.maven";
      sha512 = "1597b38914e4b6c46cead8c7859eb409503ce5852b33e0ad604767782623a26e8e8bf346ff9f26a6ac843529b5184265922d1682fedb0b6d3e737a45b9fa4b90";
      version = "3.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "JavaEWAH/com.googlecode.javaewah";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "JavaEWAH";
      groupId = "com.googlecode.javaewah";
      sha512 = "fea689d1e29761ce90c860ee3650c4167ae9e5ecaa316247bdafac5833bce48d2b3e04e633b426e3ab7ef3a5c9c7fd150ffa0c21afdcae9c945cb2bb85f8a82f";
      version = "1.1.6";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-utils/org.codehaus.plexus";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-utils";
      groupId = "org.codehaus.plexus";
      sha512 = "3805c57b7297459c5e2754d0fd56abd454eee08691974fb930ebb9b79a529fd874f16d40cec66e7fd90d4146c9d1fef45cdb59f9e359fce0c48ac77526fc320d";
      version = "3.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-transport-file/org.apache.maven.resolver";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-file";
      groupId = "org.apache.maven.resolver";
      sha512 = "abb8e769c1a541c8d73876d41725b9438e91f6e17d06c52ee1822d5bead7575679ec7a3a76e1f93e09d0acfd902af1bf47d279ed9af94aef60c7e736ab82de76";
      version = "1.1.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "org.eclipse.sisu.plexus/org.eclipse.sisu";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "org.eclipse.sisu.plexus";
      groupId = "org.eclipse.sisu";
      sha512 = "893a98877e760be8a8020e929aec36c5bfcbcbc08c83527e65e152f782da748cc6df3fa8fe74936e5fe30886bf9aa3096204c99cdc5f6229e9e2626be313b1c7";
      version = "0.3.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jsch.agentproxy.usocket-jna/com.jcraft";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.usocket-jna";
      groupId = "com.jcraft";
      sha512 = "3213e63895552aa33858ece929c84c140ea95d6c3835c88e150cd37f266fb69b48b9ff9921132c808d1909ad0e97dd497a28a34d051a0a8c06c18b5a0d5f2850";
      version = "0.0.9";
      
    };
    paths = [ src ];
  }

  rec {
    name = "commons-io/commons-io";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-io";
      groupId = "commons-io";
      sha512 = "1f6bfc215da9ae661dbabba80a0f29101a2d5e49c7d0c6ed760d1cafea005b7f0ff177b3b741e75b8e59804b0280fa453a76940b97e52b800ec03042f1692b07";
      version = "2.5";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-settings-builder/org.apache.maven";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-settings-builder";
      groupId = "org.apache.maven";
      sha512 = "3ced76df9e083bd9e929c6acceed3be4481d94dee0ccb9a506c90277d3973e987b4d73e91c6c664480d886d8b58f9098c66fcbe9d86ec8bf175df1064e2848a6";
      version = "3.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.namespace/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.namespace";
      groupId = "org.clojure";
      sha512 = "0a13ffed1f5ba5fd30aa7ebc3c8d8ecf96f1d264a8bd907728a4d1a8c02af738c415976adbcccc8afcf59fd0d3124c003e49f515da1a3596fc0ea232f7bea1d3";
      version = "0.3.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "org.eclipse.jgit/org.eclipse.jgit";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "org.eclipse.jgit";
      groupId = "org.eclipse.jgit";
      sha512 = "19ca3301391a4d4a6ca9c8ad2c936040497ee79b7c1e59c768636cf5d89f27329f808f8daaa74771bdedb877d694d9ae44dc8f94a932f4054d0c471efccf69d9";
      version = "4.10.0.201712302008-r";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jackson-core/com.fasterxml.jackson.core";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jackson-core";
      groupId = "com.fasterxml.jackson.core";
      sha512 = "a1bd6c264b9ab07aad3d0f26b65757e35ff47904ab895bb7f997e3e1fd063129c177ad6f69876907b04ff8a43c6b1770a26f53a811633a29e66a5dce57194f64";
      version = "2.8.7";
      
    };
    paths = [ src ];
  }

  rec {
    name = "asm/org.ow2.asm";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "asm";
      groupId = "org.ow2.asm";
      sha512 = "876eac7406e60ab8b9bd6cd3c221960eaa53febea176a88ae02f4fa92dbcfe80a3c764ba390d96b909c87269a30a69b1ee037a4c642c2f535df4ea2e0dd499f2";
      version = "9.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "cdi-api/javax.enterprise";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "cdi-api";
      groupId = "javax.enterprise";
      sha512 = "3e326196a2cbf19375803ce37d743a9818c4fa2292914439e748060d6889c997fe33077f52e52d4dd61b60e7342aa31b446d7571a92ec864f44cead45ebd612b";
      version = "1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-settings/org.apache.maven";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-settings";
      groupId = "org.apache.maven";
      sha512 = "39d7dec72f792a08fd188d5ab7ba9e19853bf19dc9a38dd1ccd1ee0d28cdc122152d2722ff2078e8de0200d5f10408fd60147a270d66fa956989ae2fdf113855";
      version = "3.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "httpcore/org.apache.httpcomponents";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "httpcore";
      groupId = "org.apache.httpcomponents";
      sha512 = "37e1c2a24c2512120061477e104950a923961c9cb1cc7d96a82ddba7f64a7cc2afe38334bc82389f24aa1d4eca69440317be07a3be400980d205f150f742d324";
      version = "4.4.8";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-core/org.apache.maven";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-core";
      groupId = "org.apache.maven";
      sha512 = "adedc901581ccc24355f793ac0515daef79bd90450607672ac47df48d312bd9501036e164d71abba19af98dad5c662e007a2ff990c0f5f63cb525d3e8d1bd67d";
      version = "3.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "metrics-core/io.dropwizard.metrics";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "metrics-core";
      groupId = "io.dropwizard.metrics";
      sha512 = "4b500efcc88e717dbbfff9629e12db0f23380bc7dbae820039ed730cdaf26fb6d5be6e58434bd6f688ea3d675576e2057ec183472aac99189817fc28b3c3489e";
      version = "4.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-cipher/org.sonatype.plexus";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-cipher";
      groupId = "org.sonatype.plexus";
      sha512 = "deb948be3a9f6a2fa74adca17e54b1074948267b3a35dd4000d92c559d0387650770ccee096ad8f01dd51c36caf63878dc0bcf57dfb1f2e3e1a9d51204096617";
      version = "1.4";
      
    };
    paths = [ src ];
  }

  (rec {
    name = "com.lambdaisland/clj.native-image";
    src = fetchgit {
      name = "clj.native-image";
      url = "https://github.com/lambdaisland/clj.native-image";
      rev = "373af196d156659c78a387986b6f3b9bfd542259";
      sha256 = "162am8hn1bhl6vdabpy1fri1wvqqly2zs4zs5dfnbp62pvacz2gf";
    };
    paths = map (path: src + path) [
      "/src"
    ];
  })

  rec {
    name = "jsch.agentproxy.pageant/com.jcraft";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.pageant";
      groupId = "com.jcraft";
      sha512 = "d141c49675f7f16ea4eacbf8c426764aa28bfacc598f07b72fd10228565000954e6fad5334ffa5e20b7f4400f2dd5641aa39e99b8e8dceaf12c9dfa39930074c";
      version = "0.0.9";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-api/org.apache.maven.resolver";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-api";
      groupId = "org.apache.maven.resolver";
      sha512 = "d00cd4ec92bfafe88d9c4f4ce91e6c2d581d416a096743d396c1712a5788239cf2d55f910e1c0024034f7e0d8028ff602339b87c8fd3ad54f665a8b63d142e67";
      version = "1.1.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "ion-java/software.amazon.ion";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "ion-java";
      groupId = "software.amazon.ion";
      sha512 = "6821a3fe0aa03a9a7421fa19e2dafea3f8af8162aeb7ee8c50735e5b1345a4adfe97822b166073b94d9aea01dc944f5558732348a448efdf350e29e160a7c38e";
      version = "1.0.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jackson-annotations/com.fasterxml.jackson.core";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jackson-annotations";
      groupId = "com.fasterxml.jackson.core";
      sha512 = "72e0428338c22657d7eabcfc92fdbc08fef267f03802fce910c3c6a10e525e2095e6bf228cb415df5ae2f983fb00b6cd2e6420f897bbc3593ead9dca6a465ed3";
      version = "2.5.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jsr250-api/javax.annotation";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jsr250-api";
      groupId = "javax.annotation";
      sha512 = "8b5dd24460e42763f3645205be4b4f80691e217d36bee5fc5b5df6ebc8782ed0f641fb9e2fe918a2d0eede32556656f6b61fe65d2cbec5086e61ef3d91e4d871";
      version = "1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "opentracing-api/io.opentracing";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "opentracing-api";
      groupId = "io.opentracing";
      sha512 = "931197ca33e509570e389cd163af96e277bb3635f019e34e2fc97d3fa9c34bb9042f25b2ba8aa59f8516cc044ec3e9584462601b8aa5f954bbc6ad88e5fbe5cd";
      version = "0.33.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-provider/org.apache.maven";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-provider";
      groupId = "org.apache.maven";
      sha512 = "78d62f1ff65269046ab99f7db1350ea0d72d1469bfc51b0b95784998178e6ba74b1715998e0f865de5a5347eb5d5523ce447edeb6546e66e05835a380e43d3e6";
      version = "3.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-shared-utils/org.apache.maven.shared";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-shared-utils";
      groupId = "org.apache.maven.shared";
      sha512 = "e6de41cf0f1e76684d2cdc06276efb5c95d83ef054792635477ca0e429dcb8c3b0d4c25a9e2e7e417363052e79348c15df232983013828df916d63ce5e9f528d";
      version = "3.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "java.classpath/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "java.classpath";
      groupId = "org.clojure";
      sha512 = "09ba3daebda6db994d8a99a1515324743e27430d95ff87f107b9821e4920b9b257f7e00e5f207acd87540e5705eca94728a09885b40933ec1851a5d4ab885c4c";
      version = "0.3.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.deps.alpha/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.deps.alpha";
      groupId = "org.clojure";
      sha512 = "05c7825bd87579616cad33b217ba5f33e4a7c01434da1e736db0bcf043b92c525950e634eef8e4d100ea927bcb8db702b9dee8d6ccd1979ad2eb6eaaffcdf748";
      version = "0.7.516";
      
    };
    paths = [ src ];
  }

  rec {
    name = "commons-logging/commons-logging";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-logging";
      groupId = "commons-logging";
      sha512 = "e5d1fc8ec4544e1fa0f7c4aae8dbcca466c4987bc92fbbc430b054b10d646b745add4a754b1be9d50edd64330c798c53173a97289db57a966312e16f934e9d1f";
      version = "1.1.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "guava/com.google.guava";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "guava";
      groupId = "com.google.guava";
      sha512 = "d8736b5151df2dd052c09548a118af15a8b8b40999954cd093cfd301445accb8b7e9532b36bac8b2fab9234a24e2e05009a33d0a8e149e841ebddbcc733a8e4c";
      version = "20.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "data.xml/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "data.xml";
      groupId = "org.clojure";
      sha512 = "db6edb16b486c500eede7c20bdbf5b83e52579ce5c4f251868acaa7c5594267eda9f1ef775f58b333fd7d4f8506595e58b4dee89df2de3e78a2ded16f01006e3";
      version = "0.2.0-alpha5";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jmespath-java/com.amazonaws";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jmespath-java";
      groupId = "com.amazonaws";
      sha512 = "2ac2dcab282ff19803f7a36645f11c791b535472af3c1406f2e6bacfdbe6561fd59dba89887b7fabb500ac388dc53ede87ef59164e12f437fbeb19399dacefbf";
      version = "1.11.184";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-spi/org.apache.maven.resolver";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-spi";
      groupId = "org.apache.maven.resolver";
      sha512 = "bb58083c5ef2b6d3915acb368c80bd55ca6318925c606ad74e3e4ab2fc0066c7fa2480cefa34487c5349f1edff02131bbaa4c3a426f9a52d5a6a66a4a023d452";
      version = "1.1.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "aws-java-sdk-core/com.amazonaws";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "aws-java-sdk-core";
      groupId = "com.amazonaws";
      sha512 = "289e6faa22498280e6c1190a0784b70176ec8352cdd263284b4f3525cd40cd6a2e965427cdc386518067592839a50ac7d7edcfba9b0adbdd4d19a0d0acb068a7";
      version = "1.11.184";
      
    };
    paths = [ src ];
  }

  rec {
    name = "transit-clj/com.cognitect";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "transit-clj";
      groupId = "com.cognitect";
      sha512 = "efe5483c188c8e6fb7327e2b312424de920b913ec9ca89580fddceb2a964de4ce75aab79d7d3671bb362b9af73a9e25a331abd4f53ce544d9b50f83a1a07adf4";
      version = "1.0.324";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-classworlds/org.codehaus.plexus";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-classworlds";
      groupId = "org.codehaus.plexus";
      sha512 = "5bbbce8880a8513ba1314c202005de96fe263b48f45d5cd6a3a3577fdfe7ccd88c2b908093eec237e6624f5dbba664dfb8aa82939cc540bb6652c0f4eea7b333";
      version = "2.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "opentracing-noop/io.opentracing";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "opentracing-noop";
      groupId = "io.opentracing";
      sha512 = "c727bcf20504fa72bfc07456bdde3b0b50988632d85c7af78df742efd90a431c125f5d644273203fa211a62fc4a282455cf281c7c82b82df4695afbc5488577f";
      version = "0.33.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "s3-wagon-private/s3-wagon-private";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "s3-wagon-private";
      groupId = "s3-wagon-private";
      sha512 = "bcff754a72e78cc90d18ff3732653111c4e33c218d61797b05991163104e54c1809480c233559c73762cc6a1b730c5d7880f87d081f7b6ddf567322c9bc99f60";
      version = "1.3.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-sec-dispatcher/org.sonatype.plexus";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-sec-dispatcher";
      groupId = "org.sonatype.plexus";
      sha512 = "5b947edcb05a1c17648ec9fe53dd2c66b4a86dd2b950d989255f6edd636fd5d50d18b8f31b3a1736dadd9cff6790a3d0355f2ed896c3eb7f72e009199fe9957d";
      version = "1.4";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-interpolation/org.codehaus.plexus";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-interpolation";
      groupId = "org.codehaus.plexus";
      sha512 = "d9183dc0920fb996901644903194883d1e1d1e8c4863f3c55bd6a9b14de996ee30651849435a92c8c55fc82be0e4524f1b2741957f9464434da292188ffcee70";
      version = "1.24";
      
    };
    paths = [ src ];
  }

  rec {
    name = "httpclient/org.apache.httpcomponents";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "httpclient";
      groupId = "org.apache.httpcomponents";
      sha512 = "7cc512de404e69cfad43d7bb80c441ca83710c1a8c6d410de1ff29f4313d85f2489a1f621c20171417e88cdb0ddfde5f92e62ffc213a04987683fb2e8411c032";
      version = "4.5.4";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jna/net.java.dev.jna";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jna";
      groupId = "net.java.dev.jna";
      sha512 = "ea1b400cf25c6032160553f19baedb21103341f1c4236fbecf5f8462cc4db06f3459d7812ed0ad07a0b9faa3b576f8fa6edbd9ed64f9486b85e5bf982c21775e";
      version = "4.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "guice/com.google.inject";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "guice";
      groupId = "com.google.inject";
      sha512 = "9af46efaacfa911f4f337785ef75df2013eecc64af3842d10df97f453b84d0e7990d3e981c27f315184390355744f4b8857eb87b5a45e24549251da4c4d387d9";
      version = "4.0";
      classifier = "no_aop";
    };
    paths = [ src ];
  }

  rec {
    name = "Java-WebSocket/org.java-websocket";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "Java-WebSocket";
      groupId = "org.java-websocket";
      sha512 = "5402516a67336e5a9753f642581c1a88992be5144e92829ae13035a44e2770aee3b5b7ec7c44f965e040eaaec0468cc1aa3cd67c258ca5175667bd65ba0e3cc5";
      version = "1.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jsch.agentproxy.connector-factory/com.jcraft";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.connector-factory";
      groupId = "com.jcraft";
      sha512 = "b4268c6d91899ffb82d5854eaef7c2bf7db3e1e223446d6ca10ae5d88174f944994e2d098582b6dd9ac0e45feacb9e52dd58ea9e41f4ff9b2241cbc5226fa567";
      version = "0.0.9";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.reader/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.reader";
      groupId = "org.clojure";
      sha512 = "3481259c7a1eac719db2921e60173686726a0c2b65879d51a64d516a37f6120db8ffbb74b8bd273404285d7b25143ab5c7ced37e7c0eaf4ab1e44586ccd3c651";
      version = "1.3.6";
      
    };
    paths = [ src ];
  }

  rec {
    name = "opentracing-util/io.opentracing";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "opentracing-util";
      groupId = "io.opentracing";
      sha512 = "fbba29ff3d6018561077e9539ad9b72876424600eca3addb6a26981a4a3e52cb3dfd30f27945aff2b6c222c42454ce3ba67597171fd809a74c65b920f3a47c7a";
      version = "0.33.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jna-platform/net.java.dev.jna";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jna-platform";
      groupId = "net.java.dev.jna";
      sha512 = "8ab09d04fd7e86b505f917e0a2b11d2c2e9f3a3e923a9fb94ad7e0bf6715f1923e02d8f3927f9580ab9f39f9fa213176013c3bcd977c2d1ef6461e2610571455";
      version = "4.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.gitlibs/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.gitlibs";
      groupId = "org.clojure";
      sha512 = "384e682c0b98fa77ec2cf3672a3b33346af19eafeff42f7af3d55a32225f7e261e16842cccc3c1d9c14ecf4559973f595e791e3c3be7b1eee9e082b8d1f016a7";
      version = "0.2.64";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-connector-basic/org.apache.maven.resolver";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-connector-basic";
      groupId = "org.apache.maven.resolver";
      sha512 = "1919682a60881c7dbc21a4c7a419c95e9a6eca86077c6c887d5a9c3585cc2311389228f0493d22967447969f7d773726141930fbc9f3e1ed3e05b67878f26a56";
      version = "1.1.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-impl/org.apache.maven.resolver";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-impl";
      groupId = "org.apache.maven.resolver";
      sha512 = "3ffcac7ed4a05b2b58669ce05cc348acad627be3e0941ee28a9a665fea43a571d554005dd72ec51130083f792e31894880525df3cd6962d7c95885340abfb7da";
      version = "1.1.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "slf4j-api/org.slf4j";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "slf4j-api";
      groupId = "org.slf4j";
      sha512 = "4ca4045775a879c3ce3021908db7b4778235a322fd8e2567da960156f24b9da86e6812a4956c8dc19920cd83e4c61141168c580829f43f10bbac925d465c3fd1";
      version = "1.7.32";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-model/org.apache.maven";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-model";
      groupId = "org.apache.maven";
      sha512 = "11466c597a4dfd8de650f7e987ca441dcca05bed28de2f6842fcf9d3ba76e899a279fbd39dabfe4e545d5b1286d1d02a35cdc9a8337c08589abcca1e5f69690f";
      version = "3.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "org.eclipse.sisu.inject/org.eclipse.sisu";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "org.eclipse.sisu.inject";
      groupId = "org.eclipse.sisu";
      sha512 = "cfedc8e9bae80492f2231dcf407abfde59b09f99154f5b5a225bc47c767df8bff7b929f6928e4f722cbb65d3a25327b3dd4dfc1e9e755dbe9e53ac6fd389dfb8";
      version = "0.3.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-util/org.apache.maven.resolver";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-util";
      groupId = "org.apache.maven.resolver";
      sha512 = "91dcbb8184f06e64da35d40c7b96e854f7311b6232d74b4b6d3489a51e0c05ebbee44f59367ab118974cdb6c5b3747981a41869cc7372691b2c2e1d0daa2ffa3";
      version = "1.1.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "metrics-jmx/io.dropwizard.metrics";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "metrics-jmx";
      groupId = "io.dropwizard.metrics";
      sha512 = "706f7428b967923d2792b0587684e972b1404d663a6ac3d661772a57edf096f0de0efac8bbfcead4576c008b096c33f77499e8f193ccbb8b072d7aa6e6d7a40d";
      version = "4.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "core.memoize/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "core.memoize";
      groupId = "org.clojure";
      sha512 = "67196537084b7cc34a01454d2a3b72de3fddce081b72d7a6dc1592d269a6c2728b79630bd2d52c1bf2d2f903c12add6f23df954c02ef8237f240d7394ccc3dde";
      version = "1.0.253";
      
    };
    paths = [ src ];
  }

  rec {
    name = "slf4j-jdk14/org.slf4j";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "slf4j-jdk14";
      groupId = "org.slf4j";
      sha512 = "447d5390e9732dd51f4a4fe5b127eaa2843200766655a32ba84b163c5f113ea9fef82b6781f3ed433e2eacc113a4493c203c40087a89369ca672e60ac9fcae75";
      version = "1.7.32";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-repository-metadata/org.apache.maven";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-repository-metadata";
      groupId = "org.apache.maven";
      sha512 = "711dfd8199a04758e986835d1bb286d964ef27cd55287ee5991716e4ce010a8adc83fde2490803273c56a1f5eabf89a428503be04d5aa5c20d0540ff1c7bd296";
      version = "3.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "data.priority-map/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "data.priority-map";
      groupId = "org.clojure";
      sha512 = "bb8bc5dbfd3738c36b99a51880ac3f1381d6564e67601549ef5e7ae2b900e53cdcdfb8d0fa4bf32fb8ebc4de89d954bfa3ab7e8a1122bc34ee5073c7c707ac13";
      version = "1.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "aopalliance/aopalliance";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "aopalliance";
      groupId = "aopalliance";
      sha512 = "3f44a932d8c00cfeee2eb057bcd7c301a2d029063e0a916e1e20b3aec4877d19d67a2fd8aaf58fa2d5a00133d1602128a7f50912ffb6cabc7b0fdc7fbda3f8a1";
      version = "1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-builder-support/org.apache.maven";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-builder-support";
      groupId = "org.apache.maven";
      sha512 = "28140f33ecf3a8d3e1413c8c97059a7b8f938f28f7c6795b6213d9de8b88347c4c85754adb70c0f74d80a58610fc9d843d1f49ffcf24af435b00fe1d461d9de9";
      version = "3.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jsch/com.jcraft";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch";
      groupId = "com.jcraft";
      sha512 = "97ec6de64f4870ee3c84f883bd3664562bfd600ca9f3364966e7dbee7e4e8520647c03f9f81d6808e330052ca1333e37f497d6252cd26fe721a90f573cbe2036";
      version = "0.1.54";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jsch.agentproxy.core/com.jcraft";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.core";
      groupId = "com.jcraft";
      sha512 = "b397effe92c9a93012ece3eb7660aacce3cef1c07d2b176cfcb7f7d8d735d22ca0c968e76fb36cb2a311566ee4b23982126671bff9baf11b4786606f2a6a0c81";
      version = "0.0.9";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jsch.agentproxy.usocket-nc/com.jcraft";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.usocket-nc";
      groupId = "com.jcraft";
      sha512 = "b1c67975955bc2ef240e05ecb4c82335f40b038ee4483190e346f633ca1b78de9bfb848a5bee803971acf6b7282b2343461a12615257b2fcb01e7e2c349fc084";
      version = "0.0.9";
      
    };
    paths = [ src ];
  }

  rec {
    name = "core.cache/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "core.cache";
      groupId = "org.clojure";
      sha512 = "0a07ceffc2fa3a536b23773eefc7ef5e1108913b93c3a5416116a6566de76dd5c218f3fb0cc19415cbaa8843838de310b76282f20bf1fc3467006c9ec373667e";
      version = "1.0.225";
      
    };
    paths = [ src ];
  }

  rec {
    name = "aws-java-sdk-kms/com.amazonaws";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "aws-java-sdk-kms";
      groupId = "com.amazonaws";
      sha512 = "d73f3186d3ce1bbe9cd4db7ebb06a23366decf2ff383ff161bb9ca921b3c2085e83d591f4338bfee26f20953194ad375b4bd20c8f95f86b2ac0cea7067cec856";
      version = "1.11.184";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-plugin-api/org.apache.maven";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-plugin-api";
      groupId = "org.apache.maven";
      sha512 = "1449f2b31dcdefe61a89f1ce782e58fa09ab7dd0ee16af64a1ac916004a10a8d7330f6cfe1e8a3d5bce18afcf42354862cff982b7b7be80a27430aa662df27f2";
      version = "3.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "core.async/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "core.async";
      groupId = "org.clojure";
      sha512 = "160a77da25382d7c257eee56cfe83538620576a331e025a2d672fc26d9f04e606666032395f3c2e26247c782544816a5862348f3a921b1ffffcd309c62ac64f5";
      version = "1.5.648";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-artifact/org.apache.maven";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-artifact";
      groupId = "org.apache.maven";
      sha512 = "15dbb653d2e115514ce92558599cbe7bbad43132c79b152021c1e04c4e51c62a5fbf1eb87ff200a0472d1ca5c806be36d1c755a03e338de8a9a1277e43981431";
      version = "3.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "data.codec/org.clojure";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "data.codec";
      groupId = "org.clojure";
      sha512 = "c324b62a5f14b2f17e49f1b0fffa3f44d195cb5261e03c5e472ba4f2972135f4b06fd321c0887717c727f025fc1a0121283d16fbf923d7469856702614a288f3";
      version = "0.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jaxb-api/javax.xml.bind";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "jaxb-api";
      groupId = "javax.xml.bind";
      sha512 = "0c5bfc2c9f655bf5e6d596e0c196dcb9344d6dc78bf774207c8f8b6be59f69addf2b3121e81491983eff648dfbd55002b9878132de190825dad3ef3a1265b367";
      version = "2.3.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "aws-java-sdk-s3/com.amazonaws";
    src = fetchMavenArtifact {
      inherit repos;
      artifactId = "aws-java-sdk-s3";
      groupId = "com.amazonaws";
      sha512 = "7b5f96f2e6f8b10006423149e035b776a5082dbc75c3a87d7985bd58fc969b918ddd6a83183a12f467602b5625dec0d63b7c0de8be9de87bbf16c0298b0dc5d5";
      version = "1.11.184";
      
    };
    paths = [ src ];
  }

  ];
  }
  
{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {
  name = "akka-grpc-maven-multi";
  targetPkgs = pkgs: [
    pkgs.glibc
    pkgs.jdk
    pkgs.maven
  ];
  
  runScript = "zsh";
}).env

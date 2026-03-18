{
  description = "kottesh resume";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self
    , nixpkgs
    }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      forEachSystem = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      devShells = forEachSystem (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            buildInputs = with pkgs; [
              typst
              typstyle
            ];
          };
        }
      );

      packages = forEachSystem (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          resume = pkgs.stdenv.mkDerivation {
            name = "resume";
            nativeBuildInputs = [ pkgs.typst ];
            src = ./.;

            buildPhase = ''
              typst compile \
                --font-path ./fonts \
                ./src/main.typ \
                resume.pdf
            '';

            installPhase = ''
              mkdir -p $out
              cp resume.pdf $out
            '';
          };
        }
      );
    };
}

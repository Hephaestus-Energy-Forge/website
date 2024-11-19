{
  description = "mkdocs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self , nixpkgs ,... }:
  let
    system = "x86_64-linux";
  in {
    devShells."${system}".default =
    let
      pkgs = import nixpkgs {
        inherit system;
      };
    in pkgs.mkShell {
      #LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";
      packages = with pkgs; [
        python311Packages.python
        python311Packages.notebook
        python311Packages.jupyter-book
        python311Packages.sphinx
        python311Packages.jupyter-sphinx
        python311Packages.sphinx-jupyterbook-latex
        python311Packages.myst-nb
        python311Packages.sphinx-book-theme
        python311Packages.regex
        python311Packages.matplotlib
        python311Packages.plotly
        python311Packages.numpy
        python311Packages.scipy
        python311Packages.pandas
        python311Packages.ipykernel
        python311Packages.ipython
        python311Packages.ipywidgets
        python311Packages.jupyterlab-widgets
        python311Packages.ipympl
        python311Packages.pyppeteer
        gnumake
        texlive.combined.scheme-full
        nodePackages.mathjax
        (
          python311Packages.buildPythonPackage rec {
            pname = "sphinx-proof";
            version = "0.1.3";
            src = fetchPypi {
              inherit pname version;
              sha256 = "db938da1ea18880f80f0e979cb895604a490beff3e8f3dd1945d4997451b373b";
            };
            doCheck = false;
            propagatedBuildInputs = [
              python311Packages.sphinx
              python311Packages.jupyter-sphinx
            ];
          }
        )
      ];
    };
  };
}

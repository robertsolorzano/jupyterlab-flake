{
  description = "A portable environment for running JupyterLab.";


  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: 
    let 
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in 
    {
      devShell.${system} = pkgs.mkShell {
        buildInputs = [
          pkgs.nodejs_22
          pkgs.python311
          pkgs.python311Packages.numpy
          pkgs.python311Packages.pandas
          pkgs.python311Packages.matplotlib
          pkgs.python311Packages.jupyterlab
        ];

      shellHook = ''
        echo "========================================================="
        echo "              Welcome to your JupyterLab"
        echo "               development environment"
        echo "---------------------------------------------------------"
        echo "         To start the JupyterLab server, type:"
        echo "                     jupyter-lab"
        echo "---------------------------------------------------------"
        echo "     Access JupyterLab at: http://localhost:8888/lab"
        echo "     Use the browser to shut down the server cleanly"
        echo "========================================================="
      '';

      };

      defaultApp.${system} = {
        type = "app";
        program = "${pkgs.python311Packages.jupyterlab}/bin/jupyter-lab";
      };
    };
}

with import <nixpkgs> {};

let
  # pythonEnv = python310.withPackages (ps: [
  #   ps.pygame
  # ]);
  # unstable = import <nixos-unstable> { };
in mkShell {
  buildInputs = [
    (python3.withPackages (ps: with ps; with python3Packages; [
      jupyter
      ipython

      # Uncomment the following lines to make them available in the shell.
      pandas
      numpy
      matplotlib
      scikit-learn
    ]))
  ];
    shellHook = "jupyter notebook";
}

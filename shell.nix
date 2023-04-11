with import <nixpkgs> {};

let
  # pythonEnv = python310.withPackages (ps: [
  #   ps.pygame
  # ]);
#   unstable = import <unstable> { };
in mkShell {
  buildInputs = [
    (python3.withPackages (ps: with ps; with python3Packages; [
      jupyter
      ipython
      pandas
      numpy
      matplotlib
      scikit-learn
      pydot
    ]))
  ];
    shellHook = "echo 'starting jupyter' && sleep 10 && jupyter notebook";
}

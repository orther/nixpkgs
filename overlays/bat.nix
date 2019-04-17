self: super:
{
  myBat = super.pkgs.symlinkJoin {
    name = "myBat";
    paths = [ self.pkgs.unstable.bat ];
    buildInputs = [ super.pkgs.makeWrapper ];
    postBuild = ''
      wrapProgram $out/bin/bat --add-flags "--style plain";
    '';
  };
}
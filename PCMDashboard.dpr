program PCMDashboard;

uses
  Vcl.Forms,
  PCM.Main in 'PCM.Main.pas' {frm_PCM_Main},
  PCMDashboard.dxSettings in 'PCMDashboard.dxSettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_PCM_Main, frm_PCM_Main);
  Application.Run;
end.

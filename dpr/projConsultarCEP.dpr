program projConsultarCEP;

uses
  Vcl.Forms,
  uniFrmConsultarCEP in '..\pas\uniFrmConsultarCEP.pas' {frmConsultarCEP},
  uLkJSON in '..\json\uLkJSON.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmConsultarCEP, frmConsultarCEP);
  Application.Run;
end.

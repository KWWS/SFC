program SCF;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uClientes in 'uClientes.pas' {FrmClientes},
  uDMdados in 'uDMdados.pas' {DMdados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDMdados, DMdados);
  Application.Run;
end.

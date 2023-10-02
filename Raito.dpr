program Raito;

uses
  Vcl.Forms,
  UDMRaito in 'UDMRaito.pas' {DMRaito: TDataModule},
  UCadastroDeClientes in 'UCadastroDeClientes.pas' {frmCadastroClientes},
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UImportarPlanilha in 'UImportarPlanilha.pas' {frmImportarPlanilha},
  Rotina in 'Rotina.pas',
  UCadastroDeProdutos in 'UCadastroDeProdutos.pas' {frmCadastroDeProdutos},
  UPedido in 'UPedido.pas' {frmPedido},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMRaito, DMRaito);
  Application.Run;
end.

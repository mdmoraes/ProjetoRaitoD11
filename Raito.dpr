program Raito;

uses
  Vcl.Forms,
  UDMRaito in 'UDMRaito.pas' {DMRaito: TDataModule},
  UCadastroDeClientes in 'UCadastroDeClientes.pas' {frmCadastroClientes},
  UImportarPlanilha in 'UImportarPlanilha.pas' {frmImportarPlanilha},
  Rotina in 'Rotina.pas',
  UCadastroDeProdutos in 'UCadastroDeProdutos.pas' {frmCadastroDeProdutos},
  UPedido in 'UPedido.pas' {frmPedido},
  Vcl.Themes,
  Vcl.Styles,
  Vcl.Consts in 'Vcl.Consts.pas',
  UCadastroTransportadora in 'UCadastroTransportadora.pas' {frmCadastroTransportadora},
  UDefinicaoRelComissao in 'UDefinicaoRelComissao.pas' {FrmRelatorioComissoes},
  UMensagem in 'UMensagem.pas',
  UPesquisarProdutos in 'UPesquisarProdutos.pas' {FrmPesquisarProdutos},
  UPesquisaPedido in 'UPesquisaPedido.pas' {FrmPesquisaPedido},
  URelatorioPedido in 'URelatorioPedido.pas' {frmRelatorioPedido},
  UPesquisarClientes in 'UPesquisarClientes.pas' {FrmPesquisarClientes},
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UTelaInicial in 'UTelaInicial.pas' {frmTelaInicial};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMRaito, DMRaito);
  Application.Run;
end.

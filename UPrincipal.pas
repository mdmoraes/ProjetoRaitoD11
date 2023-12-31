unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    mm1: TMainMenu;
    MenuCadastros: TMenuItem;
    MenuVendas: TMenuItem;
    MenuCliente: TMenuItem;
    MenuSubImportarPlanilha: TMenuItem;
    MenuSubProdutos: TMenuItem;
    MenuEmitirPedido: TMenuItem;
    procedure MenuClienteClick(Sender: TObject);
    procedure MenuSubImportarPlanilhaClick(Sender: TObject);
    procedure MenuSubProdutosClick(Sender: TObject);
    procedure MenuEmitirPedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
uses UCadastroDeClientes, UImportarPlanilha, UCadastroDeProdutos; //UEmissaoDePedido;

{$R *.dfm}

procedure TfrmPrincipal.MenuClienteClick(Sender: TObject);
begin
 try
 application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
 frmCadastroClientes.ShowModal;
 finally
 frmCadastroClientes.Free;
 end;
end;

procedure TfrmPrincipal.MenuEmitirPedidoClick(Sender: TObject);
begin
//    try
//    Application.CreateForm(TfrmEmissaoDePedido, frmEmissaoDePedido);
//    frmEmissaoDePedido.ShowModal;
//    finally
//    frmEmissaoDePedido.Free;
//    end;
end;

procedure TfrmPrincipal.MenuSubImportarPlanilhaClick(Sender: TObject);
begin
    try
    Application.CreateForm(TfrmImportarPlanilha, frmImportarPlanilha);
    frmImportarPlanilha.ShowModal;
    finally
    frmImportarPlanilha.Free;
    end;
end;

procedure TfrmPrincipal.MenuSubProdutosClick(Sender: TObject);
begin
    try
    Application.CreateForm(TfrmCadastroDeProdutos, frmCadastroDeProdutos);
    frmCadastroDeProdutos.ShowModal;
    finally
    frmCadastroDeProdutos.Free;
    end;
end;

end.

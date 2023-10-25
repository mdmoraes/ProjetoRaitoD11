unit UPrincipal;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.UITypes, Vcl.Consts,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCImage;
type
  TfrmPrincipal = class(TForm)
    mm1: TMainMenu;
    MenuCadastros: TMenuItem;
    MenuCliente: TMenuItem;
    MenuSubImportarPlanilha: TMenuItem;
    MenuSubProdutos: TMenuItem;
    MenuSairdoSistema: TMenuItem;
    MenuTransportadora: TMenuItem;
    TMSFNCImage1: TTMSFNCImage;
    SubMenuEmissodePedidos: TMenuItem;
    procedure MenuClienteClick(Sender: TObject);
    procedure MenuSubImportarPlanilhaClick(Sender: TObject);
    procedure MenuSubProdutosClick(Sender: TObject);
    procedure MenuSairdoSistemaClick(Sender: TObject);
    procedure MenuTransportadoraClick(Sender: TObject);
    procedure SubMenuEmissodePedidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmPrincipal: TfrmPrincipal;
implementation
uses UCadastroDeClientes, UImportarPlanilha, UCadastroDeProdutos, UPedido, UCadastroTransportadora;
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

procedure TfrmPrincipal.MenuSairdoSistemaClick(Sender: TObject);
begin
 if MessageDlg('Confirma sair do Sistema ?',mtConfirmation, [mbYes, mbNo], 0)= mrYes then
  begin
  Application.Terminate;
  end;
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
procedure TfrmPrincipal.MenuTransportadoraClick(Sender: TObject);
begin
   try
    Application.CreateForm(TfrmCadastroTransportadora, frmCadastroTransportadora);
    frmCadastroTransportadora.ShowModal;
    finally
    frmCadastroTransportadora.Free;
    end;

end;

procedure TfrmPrincipal.SubMenuEmissodePedidosClick(Sender: TObject);
begin
    try
    Application.CreateForm(TfrmPedido, frmPedido);
    frmPedido.ShowModal;
    finally
   frmPedido.Free;
   end;
end;

end.

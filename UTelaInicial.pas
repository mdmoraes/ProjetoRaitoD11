unit UTelaInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmTelaInicial = class(TForm)
    MainMenu1: TMainMenu;
    MenuCadastro: TMenuItem;
    SubMenuEmissodoPedido: TMenuItem;
    procedure SubMenuEmissodoPedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaInicial: TfrmTelaInicial;

implementation

uses UPedido;

{$R *.dfm}

procedure TfrmTelaInicial.SubMenuEmissodoPedidoClick(Sender: TObject);
begin
 try
    Application.CreateForm(TfrmPedido, frmPedido);
    frmPedido.ShowModal;
    finally
    frmPedido.Free;
    end;
end;

end.

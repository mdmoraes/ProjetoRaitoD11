unit UBuscarProdutoParaEmissaoDePedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Buttons;

type
  TfrmBuscarProdutoParaPedido = class(TForm)
    JvDBGrid1: TJvDBGrid;
    GroupBox1: TGroupBox;
    rb18: TRadioButton;
    rb12: TRadioButton;
    rb7: TRadioButton;
    GroupBoxPesquisa: TGroupBox;
    SpeedButton1: TSpeedButton;
    rbCodigo: TRadioButton;
    rbDescricao: TRadioButton;
    edPesquisar: TEdit;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure rbCodigoClick(Sender: TObject);
    procedure rbDescricaoClick(Sender: TObject);
    procedure edPesquisarChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscarProdutoParaPedido: TfrmBuscarProdutoParaPedido;

implementation

{$R *.dfm}

uses UDMRaito;

procedure TfrmBuscarProdutoParaPedido.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmBuscarProdutoParaPedido.edPesquisarChange(Sender: TObject);
begin
DMRaito.FdTbImportacao.FindNearest([edPesquisar.Text])
end;

procedure TfrmBuscarProdutoParaPedido.JvDBGrid1DblClick(Sender: TObject);
begin
if rb18.Checked then
ShowMessage('ICMS18');

end;

procedure TfrmBuscarProdutoParaPedido.rbCodigoClick(Sender: TObject);
begin
 if rbCodigo.Checked = true then
    DMRaito.FdTbImportacao.IndexName:= 'idxCodigo';
    edPesquisar.SetFocus;
end;

procedure TfrmBuscarProdutoParaPedido.rbDescricaoClick(Sender: TObject);
begin
    if rbDescricao.Checked = true then
    DMRaito.FdTbImportacao.IndexName:= 'idxDescricao';
    edPesquisar.Clear;
    edPesquisar.SetFocus;
end;

procedure TfrmBuscarProdutoParaPedido.SpeedButton1Click(Sender: TObject);
begin
edPesquisar.Clear;
DMRaito.FdTbImportacao.IndexName:= '';
end;

end.

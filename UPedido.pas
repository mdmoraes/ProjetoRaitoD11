unit UPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TfrmPedido = class(TForm)
    panelNav: TPanel;
    btnNovo: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnPesquisa: TSpeedButton;
    btn1: TBitBtn;
    dbnv1: TDBNavigator;
    panelConfirma: TPanel;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    btnImprimir: TSpeedButton;
    panelTela: TPanel;
    dbgrdItens: TDBGrid;
    lbl: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtnum_pedido: TDBEdit;
    dbedtdata_pedido: TDBEdit;
    dbedtrepresentada: TDBEdit;
    dbedtcliente: TDBEdit;
    lokupcliente: TDBLookupComboBox;
    BalloonHint1: TBalloonHint;
    procedure btnNovoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedido: TfrmPedido;

implementation

uses UDMRaito;


{$R *.dfm}

procedure TfrmPedido.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmPedido.btnAlterarClick(Sender: TObject);
begin
    panelConfirma.Enabled:= True;
    panelNav.Visible:= False;
    DMRaito.FdTablePedido.Edit;
end;

procedure TfrmPedido.btnCancelarClick(Sender: TObject);
begin
panelConfirma.Enabled:= False;
    panelNav.Visible:= True;
    DMRaito.FdTablePedido.Cancel;
end;

procedure TfrmPedido.btnExcluirClick(Sender: TObject);

begin
 if MessageDlg('DESEJA EXCLUIR ESSE REGISTRO ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DMRaito.FdTablePedido.Delete;
    ShowMessage('Registro excluído com sucesso!');
  end;
end;

procedure TfrmPedido.btnGravarClick(Sender: TObject);
begin
    DMRaito.FdTablePedido.Edit;
    DMRaito.FdTablePedido.Post;
    ShowMessage('Registro gravado com sucesso.!');
    panelConfirma.Enabled:= False;
    panelNav.Visible:= True;
    panelTela.Enabled:= False;
end;

procedure TfrmPedido.btnNovoClick(Sender: TObject);
var it: Integer;
begin
  panelConfirma.Enabled:= True;
  panelNav.Visible:= False;
  panelTela.Enabled:= True;
       try
          DMRaito.FdTablePedido.DisableControls;
          DMRaito.FdTablePedido.IndexName:= 'idxNumPedido';
          DMRaito.FdTablePedido.First;
          DMRaito.FdTablePedido.Last;
          if DMRaito.FdTablePedido['num_pedido']<> null then
          it := DMRaito.FdTablePedido['num_pedido']
          else
          it:= 0;
          DMRaito.FdTablePedido.Insert;
          DMRaito.FdTablePedido['num_pedido'] := it + 1;
          DMRaito.FdTablePedido['data_pedido']:= DateToStr(Now);
          lokupcliente.SetFocus;
          finally
          DMRaito.FdTablePedido.EnableControls;
          end;
end;

end.

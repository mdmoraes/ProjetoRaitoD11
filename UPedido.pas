unit UPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TfrmPedido = class(TForm)
    lbl: TLabel;
    dbedtnum_pedido: TDBEdit;
    dsPedido: TDataSource;
    lbl1: TLabel;
    dbedtdata_pedido: TDBEdit;
    lbl2: TLabel;
    dbedtrepresentada: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dbgrdItens: TDBGrid;
    dsItens: TDataSource;
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
    procedure btnNovoClick(Sender: TObject);
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

procedure TfrmPedido.btnNovoClick(Sender: TObject);
var it: Integer;
begin
  panelConfirma.Enabled:= True;
  panelNav.Visible:= False;



       try      //EVENTO ACUMULADOR DE REGISTROS ...MAMO...
          DMRaito.FdTablePedido.DisableControls;
          try
       //   DMRaito.FDTableCliente.IndexName:= 'IdxCliente';
          DMRaito.FdTablePedido.First;
          DMRaito.FdTablePedido.Last;

          if DMRaito.FdTablePedido['num_pedido']<> null then
          it := DMRaito.FdTablePedido['num_pedido']
          else
          it:= 0;
          DMRaito.FdTablePedido.Insert;
          DMRaito.FdTablePedido['num_pedido'] := it + 1;
          DMRaito.FdTablePedido['data_pedido']:= DateToStr(Now);

          DBEdit1.SetFocus;

          finally
          DMRaito.FdTablePedido.EnableControls;
          end;
       finally
       end;
end;

end.

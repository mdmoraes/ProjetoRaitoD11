unit UPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

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

end.

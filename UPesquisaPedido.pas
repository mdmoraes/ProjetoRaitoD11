unit UPesquisaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids;

type
  TFrmPesquisaPedido = class(TForm)
    pnl1: TPanel;
    grp1: TGroupBox;
    edt1: TEdit;
    grp2: TGroupBox;
    rbPedido: TRadioButton;
    rbRepresentada: TRadioButton;
    rbCliente: TRadioButton;
    pnl2: TPanel;
    btnFechar: TSpeedButton;
    dbgrd1: TDBGrid;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbPedidoClick(Sender: TObject);
    procedure rbRepresentadaClick(Sender: TObject);
    procedure rbClienteClick(Sender: TObject);
    procedure edt1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisaPedido: TFrmPesquisaPedido;

implementation

uses UDBRATIO;

{$R *.dfm}

procedure TFrmPesquisaPedido.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmPesquisaPedido.FormShow(Sender: TObject);
begin
edt1.SetFocus;
end;

procedure TFrmPesquisaPedido.rbPedidoClick(Sender: TObject);
begin
DMRatio.TBPedido.IndexName:= ('IxNum_Pedido');
edt1.SetFocus;
end;

procedure TFrmPesquisaPedido.rbRepresentadaClick(Sender: TObject);
begin
DMRatio.TBPedido.IndexName:= ('IxRepresentada');
edt1.SetFocus;
end;

procedure TFrmPesquisaPedido.rbClienteClick(Sender: TObject);
begin
DMRatio.TBPedido.IndexName:= ('IxCliente');
edt1.SetFocus;

end;

procedure TFrmPesquisaPedido.edt1Change(Sender: TObject);
begin
DMRatio.TBPedido.FindNearest([edt1.Text]);
end;

end.

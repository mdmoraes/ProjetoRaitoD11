unit UPesquisaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, Data.DB,
  VCLTee.TeCanvas, VCLTee.TeeEdiGrad;

type
  TFrmPesquisaPedido = class(TForm)
    pnl1: TPanel;
    grp1: TGroupBox;
    edt1: TEdit;
    grp2: TGroupBox;
    pnl2: TPanel;
    dbgrd1: TDBGrid;
    ButtonGradientFechar: TButtonGradient;
    rbCliente: TRadioButton;
    rbPedido: TRadioButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbPedidoClick(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure ButtonGradientFecharClick(Sender: TObject);
    procedure rbClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisaPedido: TFrmPesquisaPedido;

implementation

uses UDMRaito;

{$R *.dfm}

procedure TFrmPesquisaPedido.btnFecharClick(Sender: TObject);
begin
//DMRaito.FdTablePedido.IndexName:='';
close;
end;

procedure TFrmPesquisaPedido.FormShow(Sender: TObject);
begin
edt1.SetFocus;
end;

procedure TFrmPesquisaPedido.rbClienteClick(Sender: TObject);
begin
 DMRaito.FdTablePedidos.IndexName:= ('idxPedidoCliente');
 edt1.SetFocus;
end;

procedure TFrmPesquisaPedido.rbPedidoClick(Sender: TObject);
begin
DMRaito.FdTablePedidos.IndexName:= ('idxPedidoId');
edt1.SetFocus;
end;

procedure TFrmPesquisaPedido.ButtonGradientFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmPesquisaPedido.edt1Change(Sender: TObject);
begin

//edt1.Text:=UpperCase(edt1.text);
DMRaito.FdTablePedidos.FindNearest([edt1.Text]);
//edt1.SetFocus;
end;

end.

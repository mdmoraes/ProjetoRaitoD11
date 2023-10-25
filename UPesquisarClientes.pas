unit UPesquisarClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, Data.DB;

type
  TFrmPesquisarClientes = class(TForm)
    grp1: TGroupBox;
    edt1: TEdit;
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    btnFechar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisarClientes: TFrmPesquisarClientes;

implementation

uses UDMRaito;

{$R *.dfm}

procedure TFrmPesquisarClientes.FormShow(Sender: TObject);
begin
    edt1.SetFocus;
end;

procedure TFrmPesquisarClientes.edt1Change(Sender: TObject);
begin
    DMRaito.FDTableCliente.IndexName:= ('IdxCliente');
    DMRaito.FDTableCliente.FindNearest([edt1.Text]);
end;

procedure TFrmPesquisarClientes.btnFecharClick(Sender: TObject);
begin
 // DMRaito.FDTableCliente.IndexName:= '';
  close;
end;

end.

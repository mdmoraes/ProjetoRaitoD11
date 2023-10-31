unit UPesquisarTransportadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmPesquisarTransportadora = class(TForm)
    grp1: TGroupBox;
    edt1: TEdit;
    dbgrd1: TDBGrid;
    BtnFechar: TButton;
    procedure BtnFecharClick(Sender: TObject);
    procedure edt1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisarTransportadora: TfrmPesquisarTransportadora;

implementation

uses UDMRaito;

{$R *.dfm}

procedure TfrmPesquisarTransportadora.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmPesquisarTransportadora.edt1Change(Sender: TObject);
begin

DMRaito.FdTableTransportadora.IndexName:= ('idxNomeTransportadora');
DMRaito.FdTableTransportadora.FindNearest([edt1.Text]);
end;

end.

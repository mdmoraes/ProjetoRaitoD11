unit UPesquisarGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFormPesquisaGrupo = class(TForm)
    dbgrd1: TDBGrid;
    edt1: TEdit;
    lbl1: TLabel;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaGrupo: TFormPesquisaGrupo;

implementation

uses UDBRATIO;

{$R *.dfm}

procedure TFormPesquisaGrupo.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormPesquisaGrupo.edt1Change(Sender: TObject);
begin
  DMRatio.tblTBGrupo.FindNearest([edt1.Text]);
end;

procedure TFormPesquisaGrupo.FormShow(Sender: TObject);
begin
DMRatio.tblTBGrupo.IndexName:= ('IGrupo');
edt1.SetFocus;

end;

end.

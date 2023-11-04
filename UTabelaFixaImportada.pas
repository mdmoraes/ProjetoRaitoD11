unit UTabelaFixaImportada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvMaskEdit, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvExStdCtrls, JvEdit, JvDBSearchEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  JvComponentBase, JvBalloonHint, Vcl.Buttons;

type
  TfrmTabelaFixaImportada = class(TForm)
    Panel1: TPanel;
    JvMaskEdit1: TJvMaskEdit;
    dsQueryFiltro: TDataSource;
    btnFechar: TButton;
    GroupBoxPesquisa: TGroupBox;
    rbCodigo: TRadioButton;
    rbDescricao: TRadioButton;
    edPesquisar: TEdit;
    FDQueryFiltro: TFDQuery;
    GroupBoxFiltro: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    gridTabelaFixa: TJvDBUltimGrid;
    SpeedButton1: TSpeedButton;
    ballonHint: TBalloonHint;
    lblRecordCount: TLabel;
    btnFiltroCodigo: TSpeedButton;
    btnFiltroporCodigo: TSpeedButton;
    btnFiltroPorDescricao: TSpeedButton;
    FDQueryFiltrocodigo: TStringField;
    FDQueryFiltrodescricao: TStringField;
    FDQueryFiltrogrupo: TStringField;
    FDQueryFiltronorma: TStringField;
    FDQueryFiltroisolacao: TStringField;
    FDQueryFiltrocobertura: TStringField;
    FDQueryFiltroclasse: TStringField;
    FDQueryFiltroblindagem: TStringField;
    FDQueryFiltrotemperatura: TStringField;
    FDQueryFiltrocustomp: TStringField;
    FDQueryFiltrokg_km: TFloatField;
    FDQueryFiltroicms18: TFloatField;
    FDQueryFiltroicms12: TFloatField;
    FDQueryFiltroicms7: TFloatField;
    FDQueryFiltrodaterecebida: TDateField;
    btnlimparFiltro1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure rbCodigoClick(Sender: TObject);
    procedure rbDescricaoClick(Sender: TObject);
//    procedure edPesquisarChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFiltroporCodigoClick(Sender: TObject);
    procedure btnlimparFiltro1Click(Sender: TObject);
    procedure edPesquisarChange(Sender: TObject);
    procedure btnFiltroPorDescricaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabelaFixaImportada: TfrmTabelaFixaImportada;

implementation

uses UDMRaito;

{$R *.dfm}

procedure TfrmTabelaFixaImportada.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmTabelaFixaImportada.rbDescricaoClick(Sender: TObject);
begin
    if rbDescricao.Checked = true then
    FDQueryFiltro.IndexName:= 'idxDescricao';
    edPesquisar.SetFocus;
end;

procedure TfrmTabelaFixaImportada.SpeedButton1Click(Sender: TObject);
begin
edPesquisar.Clear;
DMRaito.FdTbImportacao.IndexName:= '';
end;

procedure TfrmTabelaFixaImportada.btnFiltroporCodigoClick(Sender: TObject);
begin
//if (Edit1.Text = '') AND (Edit2.Text = '') then
//ShowMessage('os campos para pesquisa tem que estar' +
//            'preenchidos');
//            Abort;
//
//
//if Edit2.Text < Edit1.Text then
//begin
//ShowMessage('valor tem que ser igual ou maior que o primeiro parâmetro!');
//Edit2.SetFocus;
//Abort;
//end else
//EXECUTA O FILTRO
FDQueryFiltro.SQL.Clear;
FDQueryFiltro.SQL.Add('SELECT * FROM dbratio.tbimportacao where codigo between :CODIGO1 AND :CODIGO2');
FDQueryFiltro.ParamByName('CODIGO1').AsString := Edit1.Text;
FDQueryFiltro.ParamByName('CODIGO2').AsString := Edit2.Text;
FDQueryFiltro.Open;

lblRecordCount.Caption := 'Total de Registros: ' + IntToStr(FDQueryFiltro.RecordCount);
end;

procedure TfrmTabelaFixaImportada.btnFiltroPorDescricaoClick(Sender: TObject);
begin
FDQueryFiltro.SQL.Clear;
FDQueryFiltro.SQL.Add('SELECT * FROM dbratio.tbimportacao where descricao like :DESCRICAO');
FDQueryFiltro.ParamByName('DESCRICAO').AsString := '%'+Edit3.Text+'%';
FDQueryFiltro.Open;

lblRecordCount.Caption := 'Total de Registros: ' + IntToStr(FDQueryFiltro.RecordCount);
end;

procedure TfrmTabelaFixaImportada.btnlimparFiltro1Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;

  FDQueryFiltro.Close;
  FDQueryFiltro.SQL.Clear;
  FDQueryFiltro.SQL.Add('SELECT * FROM dbratio.tbimportacao');
  FDQueryFiltro.Open;
  lblRecordCount.Caption := 'Total de Registros: ' + IntToStr(FDQueryFiltro.RecordCount);
end;

procedure TfrmTabelaFixaImportada.edPesquisarChange(Sender: TObject);
begin
FDQueryFiltro.FindNearest([edPesquisar.Text])
end;

procedure TfrmTabelaFixaImportada.FormCreate(Sender: TObject);
begin
  FDQueryFiltro.Close;
  FDQueryFiltro.SQL.Clear;
  FDQueryFiltro.SQL.Add('SELECT * FROM dbratio.tbimportacao');
  FDQueryFiltro.Open;
lblRecordCount.Caption := 'Total de Registros: ' + IntToStr(FDQueryFiltro.RecordCount);
end;

procedure TfrmTabelaFixaImportada.rbCodigoClick(Sender: TObject);
begin
    if rbCodigo.Checked = true then
    FDQueryFiltro.IndexName:= 'idxCodigo';
    edPesquisar.SetFocus;
end;

end.

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
  JvComponentBase, JvBalloonHint, Vcl.Buttons, Vcl.DBCtrls, Vcl.Menus,
  JvMemoryDataset;

type
  TfrmTabelaFixaImportada = class(TForm)
    Panel1: TPanel;
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
    FDQueryFiltroisolacao: TStringField;
    FDQueryFiltroclasse: TStringField;
    FDQueryFiltrotemperatura: TStringField;
    FDQueryFiltrokg_km: TFloatField;
    FDQueryFiltroicms18: TFloatField;
    FDQueryFiltroicms12: TFloatField;
    FDQueryFiltroicms7: TFloatField;
    btnlimparFiltro1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    DBTextDataAtualizacao: TDBText;
    btnMontarLista: TSpeedButton;
    pnlGridItens: TPanel;
    gridItensCopiados: TJvDBGrid;
    btnFecharGradeItens: TButton;
    Label6: TLabel;
    btnImprimir: TSpeedButton;
    memdata: TJvMemoryData;
    btnCopiarItens: TButton;
    dsmemdata: TDataSource;
    memdatacodigo: TStringField;
    memdatadescricao: TStringField;
    memdatagrupo: TStringField;
    memdataisolacao: TStringField;
    memdataclasse: TStringField;
    memdatatemperatura: TStringField;
    memdatakg_km: TFloatField;
    memdataicms18: TFloatField;
    memdataicms12: TFloatField;
    memdataicms7: TFloatField;
    Label7: TLabel;
    edCliente: TEdit;
    btnBuscarCliente: TSpeedButton;
    Label8: TLabel;
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
    procedure btnMontarListaClick(Sender: TObject);
    procedure btnFecharGradeItensClick(Sender: TObject);
    procedure btnCopiarItensClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnBuscarClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabelaFixaImportada: TfrmTabelaFixaImportada;

implementation

uses UDMRaito, URelatorioPlanilhaFixa, UPesquisarClientes;

{$R *.dfm}

procedure TfrmTabelaFixaImportada.btnBuscarClienteClick(Sender: TObject);
begin
 try
    Application.CreateForm(TFrmPesquisarClientes, FrmPesquisarClientes);
    FrmPesquisarClientes.ShowModal;
    finally
    FrmPesquisarClientes.Free;
    end;
end;

procedure TfrmTabelaFixaImportada.btnCopiarItensClick(Sender: TObject);
begin
    begin
    FDQueryFiltro.First;
      while not FDQueryFiltro.Eof do
      begin
        memdata.Append;
        memdata.FieldByName('codigo').Value := FDQueryFiltro.Fields[0].Value;
        memdata.FieldByName('descricao').Value := FDQueryFiltro.Fields[1].Value;
        memdata.FieldByName('grupo').Value := FDQueryFiltro.Fields[2].Value;
        memdata.FieldByName('isolacao').Value := FDQueryFiltro.Fields[3].Value;
        memdata.FieldByName('classe').Value := FDQueryFiltro.Fields[4].Value;
        memdata.FieldByName('temperatura').Value := FDQueryFiltro.Fields[5].Value;
        memdata.FieldByName('kg_km').Value := FDQueryFiltro.Fields[6].Value;
        memdata.FieldByName('icms18').Value := FDQueryFiltro.Fields[7].Value;
        memdata.FieldByName('icms12').Value := FDQueryFiltro.Fields[8].Value;
        memdata.FieldByName('icms7').Value := FDQueryFiltro.Fields[9].Value;

        FDQueryFiltro.Next;


      end;
    end;
end;

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

procedure TfrmTabelaFixaImportada.btnFecharGradeItensClick(Sender: TObject);
begin
pnlGridItens.Visible:= False;
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

procedure TfrmTabelaFixaImportada.btnImprimirClick(Sender: TObject);
begin
   try
      Application.CreateForm(TfrmRelatorioPlanilhaFixa,frmRelatorioPlanilhaFixa);
      frmRelatorioPlanilhaFixa.qckrpPlanilhaFixa.Preview;
      finally
      frmRelatorioPlanilhaFixa.Free;
      end;
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

procedure TfrmTabelaFixaImportada.btnMontarListaClick(Sender: TObject);
begin
pnlGridItens.Visible:= True;
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

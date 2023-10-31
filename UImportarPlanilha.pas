unit UImportarPlanilha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Buttons, uImportExcel,
  Data.DB, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmImportarPlanilha = class(TForm)
    strGridExcel: TStringGrid;
    btnImportar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnFechar: TSpeedButton;
    opendialog: TOpenDialog;
    ImportExcel: TImportExcel;
    dbgrdGrid: TDBGrid;
    lbl: TLabel;
    dbedtcodigo: TDBEdit;
    ds: TDataSource;
    lblRecordCount: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure DeleteAll(const DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    private
    procedure DeletarTodosOsRegistros(const DataSet: TDataSet);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportarPlanilha: TfrmImportarPlanilha;

implementation

uses UDMRaito, Rotina;

{$R *.dfm}

procedure TfrmImportarPlanilha.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmImportarPlanilha.btnImportarClick(Sender: TObject);
begin
       if opendialog.Execute then
       begin
       ImportExcel.ExcelFile := opendialog.FileName;
       ImportExcel.ExcelParaStringGrid(strGridExcel,nil);

       end;
end;

procedure TfrmImportarPlanilha.btnSalvarClick(Sender: TObject);
var I :Integer;

begin
  Application.MessageBox('Os dados da planilha importada serão gravados' +
    #13#10 + 'na base de dados e substituirão os dados existentes.',
    'Atenção !', MB_OKCANCEL + MB_ICONWARNING);

     //  DMRatio.tblTabelaImportacao.Active := True;

       DeleteAll(DMRaito.FdTbImportacao);

    try


     DMRaito.FdTbImportacao.DisableControls;

                 for  I := 0 to Pred(strGridExcel.RowCount) do
                 begin
                 if Trim(strGridExcel.Cells[0,I]) = '' then
                 Continue;
                 DMRaito.FdTbImportacao.Append;
                 DMRaito.FdTbImportacao.FieldByName('Codigo').AsString := strGridExcel.Cells[0,I];
                 DMRaito.FdTbImportacao.FieldByName('Descricao').AsString := strGridExcel.Cells[1,I];
                 DMRaito.FdTbImportacao.FieldByName('Grupo').AsString := strGridExcel.Cells[2,I];
                 DMRaito.FdTbImportacao.FieldByName('Norma').AsString := strGridExcel.Cells[3,I];

                 DMRaito.FdTbImportacao.FieldByName('Isolacao').AsString := strGridExcel.Cells[4,I];
                 DMRaito.FdTbImportacao.FieldByName('Cobertura').AsString := strGridExcel.Cells[5,I];
                 DMRaito.FdTbImportacao.FieldByName('Classe').AsString := strGridExcel.Cells[6,I];
                 DMRaito.FdTbImportacao.FieldByName('Blindagem').AsString := strGridExcel.Cells[7,I];
                 DMRaito.FdTbImportacao.FieldByName('Temperatura').AsString := strGridExcel.Cells[8,I];
                 DMRaito.FdTbImportacao.FieldByName('CustoMP').AsString := strGridExcel.Cells[9,I];

               //  if (s = nil) or (s = '') then
               //  MessageBox.Show("empty string");


                 if (strGridExcel.Cells[10,I]) = '' then
                 DMRaito.FdTbImportacao.FieldByName('KG_KM').Value := 0 else
                 DMRaito.FdTbImportacao.FieldByName('KG_KM').Value := StrToFloat(strGridExcel.Cells[10,I]);

                 DMRaito.FdTbImportacao.FieldByName('ICMS18').Value := StrToFloat(strGridExcel.Cells[11,I]);
                 DMRaito.FdTbImportacao.FieldByName('ICMS12').Value := StrToFloat(strGridExcel.Cells[12,I]);
                 DMRaito.FdTbImportacao.FieldByName('ICMS7').Value := StrToFloat(strGridExcel.Cells[13,I]);

             DMRaito.FdTbImportacao.Post;
             end;
    except
          on E: Exception do
          begin
          ShowMessage('Houve Erro na importação da planilha! : ' + E.Message );
          Close;
          end;
    end;


             DMRaito.FdTbImportacao.EnableControls;

             ShowMessage('Planilha importada com sucesso!');

//            DMRaito.FdTbImportacao.Active := False;
//            DMRaito.FdTbImportacao.Active := True;
             lblRecordCount.Caption := 'Total de Registros importados: ' + IntToStr(DMRaito.FdTbImportacao.RecordCount);

end;

procedure TfrmImportarPlanilha.DeleteAll(const DataSet: TDataSet);
begin
  //DeletarTodosOsRegistros(DataSet)
end;

procedure TfrmImportarPlanilha.FormCreate(Sender: TObject);
begin
   DMRaito.FdTbImportacao.Active := False;
   DMRaito.FdTbImportacao.Active := True;
end;

procedure TfrmImportarPlanilha.DeletarTodosOsRegistros(const DataSet: TDataSet);
begin
 // with DataSet do
 //   while RecordCount > 0 do
 // ;
end;

end.

unit URankingClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, DB, DBTables, Grids, DBGrids;

type
  TFrmRankingClientes = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    GroupBox1: TGroupBox;
    Data1: TDateTimePicker;
    Label1: TLabel;
    Data2: TDateTimePicker;
    btnAplicar: TSpeedButton;
    btnFechar: TSpeedButton;
    Query1cliente: TStringField;
    Query1vrtotal: TFloatField;
    Query1comissao: TFloatField;
    btnRelatorio: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure Data1CloseUp(Sender: TObject);
    procedure Data2CloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRankingClientes: TFrmRankingClientes;

implementation

uses UDBRATIO, URelRankingClientes;

{$R *.dfm}

procedure TFrmRankingClientes.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmRankingClientes.Data1CloseUp(Sender: TObject);
begin
  if Data1.date>Data2.date then
  Begin
    ShowMessage('A DATA INICIAL NÃO PODE SER MAIOR QUE A DATA FINAL!');
    Data1.date:=Data2.date;
  end;
end;

procedure TFrmRankingClientes.Data2CloseUp(Sender: TObject);
begin
     if Data2.date<Data1.date then
     Begin
     ShowMessage('A DATA FINAL NÃO PODE SER MENOR QUE A DATA INICIAL!');
     Data1.date:=Data2.date;
     end;
end;

procedure TFrmRankingClientes.FormShow(Sender: TObject);
begin
Data1.Date:=Date-30;
Data2.Date:=Date;
end;

procedure TFrmRankingClientes.btnAplicarClick(Sender: TObject);
begin
    Query1.Close;
    Query1.ParamByName('VarDataI').AsDate:=Data1.Date;
    Query1.ParamByName('VarDataF').AsDate:=Data2.Date;
    Query1.Prepare;
    Query1.Open;
end;

procedure TFrmRankingClientes.btnRelatorioClick(Sender: TObject);
begin
     try
      application.CreateForm(TFrmRelRankingCliente,FrmRelRankingCliente);
//      FrmRelRankingProdutos.lblTitulo.Caption:= 'RELATÓRIO: RANKING DE PRODUTOS';
      FrmRelRankingCliente.lblPeriodo.Caption:= 'NO PERÍODO DE:  ' + DateToStr(Data1.Date)+ '  À  ' + DateToStr(Data2.Date);
      FrmRelRankingCliente.QuickRep1.Preview;
      finally
      FrmRelRankingCliente.Free;
      end;
end;

end.

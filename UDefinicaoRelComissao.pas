unit UDefinicaoRelComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, DB;

type
  TFrmRelatorioComissoes = class(TForm)
    grp1: TGroupBox;
    grp2: TGroupBox;
    rbRepresentada: TRadioButton;
    rbGeral: TRadioButton;
    dblokup1: TDBLookupComboBox;
    edtGeral: TEdit;
    btn1fechar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    btn1: TSpeedButton;
//    qry1: TQuery;
    qry1num_pedido: TIntegerField;
    qry1data_pedido: TDateField;
    qry1comissaopercentual: TFloatField;
    qry1comissaovalor: TFloatField;
    qry1totalliquido: TFloatField;
    qry1totalbruto: TFloatField;
    qry1Cliente: TStringField;
    procedure btn1fecharClick(Sender: TObject);
    procedure rbRepresentadaClick(Sender: TObject);
    procedure rbGeralClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioComissoes: TFrmRelatorioComissoes;

implementation

uses UDMRaito, URelComissao;

{$R *.dfm}

procedure TFrmRelatorioComissoes.btn1fecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmRelatorioComissoes.rbRepresentadaClick(Sender: TObject);
begin
dblokup1.Visible:= True;
end;

procedure TFrmRelatorioComissoes.rbGeralClick(Sender: TObject);
begin
dblokup1.Visible:= False;
end;

procedure TFrmRelatorioComissoes.btn1Click(Sender: TObject);
var
  sParamTexto: string;
begin
    if (rbRepresentada.Checked = True) and (dblokup1.Text <> '') then
    begin
    sParamTexto:= dblokup1.Text;
    end;

    if (rbRepresentada.Checked = True) and (dblokup1.Text = '') then
    begin
    ShowMessage('ESCOLHA UMA REPRESENTADA !!!');
    Exit;
    end;

    if rbGeral.Checked = True then
    begin
    sParamTexto:= '%';
    end;

     //executa a Query no período e por referencia ...
//    qry1.Close;
//    qry1.ParamByName('VarDataI').AsDate:=DataI.Date;
//    qry1.ParamByName('VarDataF').AsDate:=DataF.Date;
//    qry1.ParamByName('varRep').AsString:= sParamTexto;
//    qry1.Prepare;
//    qry1.Open;
//
//    try
//    Application.CreateForm(TFrmRelComissao, FrmRelComissao);
//
//    if sParamTexto = '%' then
//    sParamTexto:= 'TODAS';
//    FrmRelComissao.lblRepresentada.Caption:=
//    'REPRESENTADA:   ' + UpperCase(sParamTexto);
//    FrmRelComissao.lblPeriodo.Caption:=
//    'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);
//    FrmRelComissao.QRepComissao.Preview;
//    Finally
//    FrmRelComissao.Free;
//    end;
end;

end.

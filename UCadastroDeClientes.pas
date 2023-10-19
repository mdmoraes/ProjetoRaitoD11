unit UCadastroDeClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, Vcl.Consts, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCGridCell, VCL.TMSFNCGridOptions,
  VCL.TMSFNCCustomControl, VCL.TMSFNCCustomScrollControl, VCL.TMSFNCGridData,
  VCL.TMSFNCCustomGrid, VCL.TMSFNCGrid, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCGridDatabaseAdapter, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroClientes = class(TForm)
    pnlContainer: TPanel;
    pnlNav: TPanel;
    btnNovo: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnPesquisa: TSpeedButton;
    btn1: TBitBtn;
    dbnv1: TDBNavigator;
    pnlConfirma: TPanel;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    panelTela: TPanel;
    lbl: TLabel;
    lbl2: TLabel;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    dbedtnomecliente: TDBEdit;
    dbedtregiao: TDBEdit;
    dbedtdatacadastro: TDBEdit;
    dbedtendereco: TDBEdit;
    dbedtbairro: TDBEdit;
    lbl5: TLabel;
    dbedtidcliente: TDBEdit;
    lbl6: TLabel;
    dbedtcidade: TDBEdit;
    lbl7: TLabel;
    dbedtestado: TDBEdit;
    lbl8: TLabel;
    dbedtcep: TDBEdit;
    lbl9: TLabel;
    dbedtcnpj: TDBEdit;
    lbl10: TLabel;
    dbedtinscestadual: TDBEdit;
    dbgrdContatos: TDBGrid;
    LabelContatos: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dbgrdContatosDblClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbedtcnpjExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

uses UDMRaito, UPesquisarClientes, System.Math;

{$R *.dfm}


function IsValidCNPJ(pCNPJ : string) : Boolean;
var
  v: array[1..2] of Word;
  cnpj: array[1..14] of Byte;
  I: Byte;
begin
  Result := False;

  { Verificando se tem 11 caracteres }
  if Length(pCNPJ) <> 14 then
  begin
    Exit;
  end;

  { Conferindo se todos dígitos são iguais }
  if pCNPJ = StringOfChar('0', 14) then
    Exit;

  if pCNPJ = StringOfChar('1', 14) then
    Exit;

  if pCNPJ = StringOfChar('2', 14) then
    Exit;

  if pCNPJ = StringOfChar('3', 14) then
    Exit;

  if pCNPJ = StringOfChar('4', 14) then
    Exit;

  if pCNPJ = StringOfChar('5', 14) then
    Exit;

  if pCNPJ = StringOfChar('6', 14) then
    Exit;

  if pCNPJ = StringOfChar('7', 14) then
    Exit;

  if pCNPJ = StringOfChar('8', 14) then
    Exit;

  if pCNPJ = StringOfChar('9', 14) then
    Exit;

  try
    for I := 1 to 14 do
      cnpj[i] := StrToInt(pCNPJ[i]);

    //Nota: Calcula o primeiro dígito de verificação.
    v[1] := 5*cnpj[1] + 4*cnpj[2]  + 3*cnpj[3]  + 2*cnpj[4];
    v[1] := v[1] + 9*cnpj[5] + 8*cnpj[6]  + 7*cnpj[7]  + 6*cnpj[8];
    v[1] := v[1] + 5*cnpj[9] + 4*cnpj[10] + 3*cnpj[11] + 2*cnpj[12];
    v[1] := 11 - v[1] mod 11;
    v[1] := IfThen(v[1] >= 10, 0, v[1]);

    //Nota: Calcula o segundo dígito de verificação.
    v[2] := 6*cnpj[1] + 5*cnpj[2]  + 4*cnpj[3]  + 3*cnpj[4];
    v[2] := v[2] + 2*cnpj[5] + 9*cnpj[6]  + 8*cnpj[7]  + 7*cnpj[8];
    v[2] := v[2] + 6*cnpj[9] + 5*cnpj[10] + 4*cnpj[11] + 3*cnpj[12];
    v[2] := v[2] + 2*v[1];
    v[2] := 11 - v[2] mod 11;
    v[2] := IfThen(v[2] >= 10, 0, v[2]);

    //Nota: Verdadeiro se os dígitos de verificação são os esperados.
    Result := ((v[1] = cnpj[13]) and (v[2] = cnpj[14]));
  except on E: Exception do
    Result := False;
  end;
end;

procedure TfrmCadastroClientes.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmCadastroClientes.btnAlterarClick(Sender: TObject);
begin
    pnlConfirma.Enabled:= True;
    pnlNav.Visible:= False;
    panelTela.Enabled:= True;
    dbgrdContatos.Enabled:= True;
    DMRaito.FDTableCliente.Edit;
    //panelTela.Enabled:= False;

end;

procedure TfrmCadastroClientes.btnCancelarClick(Sender: TObject);
begin
    pnlConfirma.Enabled:= False;
    pnlNav.Visible:= True;
    panelTela.Enabled:= False;
    DMRaito.FDTableCliente.Cancel;
end;

procedure TfrmCadastroClientes.btnExcluirClick(Sender: TObject);
begin
 if MessageDlg('DESEJA EXCLUIR ESSE REGISTRO ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DMRaito.FDTableCliente.Delete;
    ShowMessage('Registro excluído com sucesso.!');

  end;
end;

procedure TfrmCadastroClientes.btnGravarClick(Sender: TObject);
begin
    panelTela.Enabled:= True;
    DMRaito.FDTableCliente.Edit;
    DMRaito.FDTableCliente.Post;
    ShowMessage('Registro gravado com sucesso.!');
    pnlConfirma.Enabled:= False;
    pnlNav.Visible:= True;
    panelTela.Enabled:= False;
end;

procedure TfrmCadastroClientes.btnNovoClick(Sender: TObject);
  var  it:integer;
begin
  pnlConfirma.Enabled:= True;
  pnlNav.Visible:= False;
  panelTela.Enabled:= True;

       try      //EVENTO ACUMULADOR DE REGISTROS ...MAMO...
          DMRaito.FDTableCliente.DisableControls;
          try
          DMRaito.FDTableCliente.IndexName:= 'IdxCliente';
          DMRaito.FDTableCliente.First;
          DMRaito.FDTableCliente.Last;

          if DMRaito.FDTableCliente['idcliente']<> null then
          it := DMRaito.FDTableCliente['idcliente']
          else
          it:= 0;
          DMRaito.FDTableCliente.Insert;
          DMRaito.FDTableCliente['idcliente'] := it + 1;
          DMRaito.FDTableCliente['DataCadastro']:= DateToStr(Now);

          dbedtnomecliente.SetFocus;

          finally
          DMRaito.FDTableCliente.EnableControls;
          end;
       finally
       end;

//   pnlConfirma.Visible:= False;
//  pnlNav.Visible:= True;

end;

procedure TfrmCadastroClientes.btnPesquisaClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmPesquisarClientes, FrmPesquisarClientes);
    FrmPesquisarClientes.ShowModal;
    finally
    FrmPesquisarClientes.Free;
    end;
end;

procedure TfrmCadastroClientes.dbedtcnpjExit(Sender: TObject);
begin

 if IsValidCNPJ(dbedtcnpj.Text) = False then
   begin
   if MessageDlg('Numero de CNPJ Inválido. Deseja corrigir?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   dbedtcnpj.SetFocus end else
   dbedtinscestadual.SetFocus;

end;

procedure TfrmCadastroClientes.dbgrdContatosDblClick(Sender: TObject);
begin
DMRaito.FdTableContatoCliente.Delete;
end;

end.

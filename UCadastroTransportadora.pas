unit UCadastroTransportadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Consts;

type
  TfrmCadastroTransportadora = class(TForm)
    dsTransportadora: TDataSource;
    panelTela: TPanel;
    lbl1: TLabel;
    dbedtTransportadoraId: TDBEdit;
    lbl2: TLabel;
    dbedtNomeTransportadora: TDBEdit;
    lbl3: TLabel;
    dbedtEndereo: TDBEdit;
    lbl4: TLabel;
    dbedtTelefone: TDBEdit;
    lbl5: TLabel;
    dbedtemail: TDBEdit;
    lbl6: TLabel;
    dbedtUF: TDBEdit;
    lbl7: TLabel;
    dbedtCidade: TDBEdit;
    lbl8: TLabel;
    dbedtCep: TDBEdit;
    lbl9: TLabel;
    dbedtContato: TDBEdit;
    dbmmoObs: TDBMemo;
    lbl10: TLabel;
    panelContainer: TPanel;
    panelConfirma: TPanel;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    panelNav: TPanel;
    btnNovo: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnPesquisa: TSpeedButton;
    btn1: TBitBtn;
    dbnv1: TDBNavigator;

    procedure btnNovoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroTransportadora: TfrmCadastroTransportadora;

implementation

uses UDMRaito, UPesquisarTransportadora;

{$R *.dfm}

procedure TfrmCadastroTransportadora.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmCadastroTransportadora.btnAlterarClick(Sender: TObject);
begin
    panelConfirma.Enabled:= True;
    panelNav.Visible:= False;
    panelTela.Enabled:= True;
    DMRaito.FdTableTransportadora.Edit;
end;

procedure TfrmCadastroTransportadora.btnExcluirClick(Sender: TObject);
begin
if MessageDlg('DESEJA EXCLUIR ESSE REGISTRO ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DMRaito.FdTableTransportadora.Delete;
    ShowMessage('Registro excluído com sucesso.!');
  end;
end;

procedure TfrmCadastroTransportadora.btnNovoClick(Sender: TObject);
begin
  panelConfirma.Enabled:= True;
  panelNav.Visible:= False;
  panelTela.Enabled:= True;

  DMRaito.FdTableTransportadora.Edit;
  DMRaito.FdTableTransportadora.Append;

end;

procedure TfrmCadastroTransportadora.btnPesquisaClick(Sender: TObject);
begin
    try
    Application.CreateForm(TfrmPesquisarTransportadora, frmPesquisarTransportadora);
    frmPesquisarTransportadora.ShowModal;
    finally
    frmPesquisarTransportadora.Free;
    end;

//idxNomeTransportadora
end;

procedure TfrmCadastroTransportadora.FormCreate(Sender: TObject);
begin
DMRaito.FdTableTransportadora.IndexName:= ('idxNomeTransportadora');
end;

end.

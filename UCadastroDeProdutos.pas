unit UCadastroDeProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  TfrmCadastroDeProdutos = class(TForm)
    lbl: TLabel;
    dbedtcodigoproduto: TDBEdit;
    lbl1: TLabel;
    dbedtcodbarra: TDBEdit;
    lbl2: TLabel;
    dbedtcodauxiliar: TDBEdit;
    lbl3: TLabel;
    dbedtncm: TDBEdit;
    lbl4: TLabel;
    dbedtunidade: TDBEdit;
    lbl5: TLabel;
    dbedtdescricao: TDBEdit;
    lbl7: TLabel;
    dbedtrepresentada: TDBEdit;
    lbl8: TLabel;
    dbedtipi: TDBEdit;
    lbl9: TLabel;
    dbedticm: TDBEdit;
    lbl10: TLabel;
    dbedtcst: TDBEdit;
    lbl11: TLabel;
    dbedtpeso: TDBEdit;
    lbl12: TLabel;
    dbedtpcusto: TDBEdit;
    lbl13: TLabel;
    dbedtpvenda: TDBEdit;
    lbl14: TLabel;
    dbedtmarcado: TDBEdit;
    lbl15: TLabel;
    lbl16: TLabel;
    dbedtidproduto: TDBEdit;
    dbcbbgrupo: TDBComboBox;
    pnlContainer: TPanel;
    pnlConfirma: TPanel;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    pnlNav: TPanel;
    btnNovo: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnPesquisa: TSpeedButton;
    btn1: TBitBtn;
    dbnv1: TDBNavigator;
    lbl151: TLabel;
    dbcbbgrupo1: TDBComboBox;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroDeProdutos: TfrmCadastroDeProdutos;

implementation

uses UDMRaito;

{$R *.dfm}

procedure TfrmCadastroDeProdutos.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmCadastroDeProdutos.btnAlterarClick(Sender: TObject);
begin
    pnlConfirma.Enabled:= True;
    pnlNav.Visible:= False;
    DMRaito.FdTableCadastroProdutos.Edit;
end;

procedure TfrmCadastroDeProdutos.btnCancelarClick(Sender: TObject);
begin
    pnlConfirma.Enabled:= False;
    pnlNav.Visible:= True;
    DMRaito.FdTableCadastroProdutos.Cancel;
end;

procedure TfrmCadastroDeProdutos.btnExcluirClick(Sender: TObject);
begin
if MessageDlg('DESEJA EXCLUIR ESSE REGISTRO ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DMRaito.FdTableCadastroProdutos.Delete;
  end;
end;

procedure TfrmCadastroDeProdutos.btnGravarClick(Sender: TObject);
begin
    DMRaito.FdTableCadastroProdutos.Edit;
    DMRaito.FdTableCadastroProdutos.Post;
    ShowMessage('Registro gravado com sucesso.!');
    pnlConfirma.Enabled:= False;
    pnlNav.Visible:= True;
end;

procedure TfrmCadastroDeProdutos.btnNovoClick(Sender: TObject);
var it : Integer;
begin
 pnlConfirma.Enabled:= True;
  pnlNav.Visible:= False;

       try      //EVENTO ACUMULADOR DE REGISTROS ...MAMO...
          DMRaito.FdTableCadastroProdutos.DisableControls;
          try
       //   DMRaito.FDTableCliente.IndexName:= 'IdxCliente';
          DMRaito.FdTableCadastroProdutos.First;
          DMRaito.FdTableCadastroProdutos.Last;

          if DMRaito.FdTableCadastroProdutos['idproduto']<> null then
          it := DMRaito.FdTableCadastroProdutos['idproduto']
          else
          it:= 0;
          DMRaito.FdTableCadastroProdutos.Insert;
          DMRaito.FdTableCadastroProdutos['idproduto'] := it + 1;
          //DMRaito.FDTableCliente['DataCadastro']:= DateToStr(Now);

          dbedtcodigoproduto.SetFocus;

          finally
          DMRaito.FdTableCadastroProdutos.EnableControls;
          end;
       finally
       end;
end;

end.

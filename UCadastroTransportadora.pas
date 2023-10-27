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
    //dbedtTelefone1: TDBEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroTransportadora: TfrmCadastroTransportadora;

implementation

uses UDMRaito;

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

procedure TfrmCadastroTransportadora.btnNovoClick(Sender: TObject);
  var  it:integer;
begin

  panelConfirma.Enabled:= True;
  panelNav.Visible:= False;
  panelTela.Enabled:= True;

       try      //EVENTO ACUMULADOR DE REGISTROS ...MAMO...
          DMRaito.FdTableTransportadora.DisableControls;
          try
          DMRaito.FdTableTransportadora.IndexName:= 'idxNomeTransportadora';
          DMRaito.FdTableTransportadora.First;
          DMRaito.FdTableTransportadora.Last;

          if DMRaito.FdTableTransportadora['TransportadoraId']<> null then
          it := DMRaito.FdTableTransportadora['TransportadoraId']
          else
          it:= 0;
          DMRaito.FdTableTransportadora.Insert;
          DMRaito.FdTableTransportadora['TransportadoraId'] := it + 1;
        //  DMRaito.FDTableCliente['DataCadastro']:= DateToStr(Now);

          dbedtNomeTransportadora.SetFocus;

          finally
          DMRaito.FdTableTransportadora.EnableControls;
          end;
       finally

       end;
end;

end.

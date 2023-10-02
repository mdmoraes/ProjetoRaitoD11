unit UCadastroDeClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons;

type
  TfrmCadastroClientes = class(TForm)
    lbl: TLabel;
    dbedtnomecliente: TDBEdit;
    ds: TDataSource;
    lbl2: TLabel;
    dbedtregiao: TDBEdit;
    lbl1: TLabel;
    dbedtdatacadastro: TDBEdit;
    lbl3: TLabel;
    dbedtendereco: TDBEdit;
    lbl4: TLabel;
    dbedtbairro: TDBEdit;
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
    procedure btnNovoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

uses UDMRaito;

{$R *.dfm}

procedure TfrmCadastroClientes.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmCadastroClientes.btnAlterarClick(Sender: TObject);
begin
pnlConfirma.Enabled:= True;
    pnlNav.Visible:= False;
    DMRaito.FDTableCliente.Edit;
end;

procedure TfrmCadastroClientes.btnCancelarClick(Sender: TObject);
begin
  pnlConfirma.Enabled:= False;
    pnlNav.Visible:= True;
    DMRaito.FDTableCliente.Cancel;
end;

procedure TfrmCadastroClientes.btnExcluirClick(Sender: TObject);
begin
 if MessageDlg('DESEJA EXCLUIR ESSE REGISTRO ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DMRaito.FDTableCliente.Delete;
  end;
end;

procedure TfrmCadastroClientes.btnGravarClick(Sender: TObject);
begin
DMRaito.FDTableCliente.Edit;
    DMRaito.FDTableCliente.Post;
    ShowMessage('Registro gravado com sucesso.!');
    pnlConfirma.Enabled:= False;
    pnlNav.Visible:= True;
end;

procedure TfrmCadastroClientes.btnNovoClick(Sender: TObject);
  var  it:integer;
begin
  pnlConfirma.Enabled:= True;
  pnlNav.Visible:= False;

       try      //EVENTO ACUMULADOR DE REGISTROS ...MAMO...
          DMRaito.FDTableCliente.DisableControls;
          try
       //   DMRaito.FDTableCliente.IndexName:= 'IdxCliente';
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

end.

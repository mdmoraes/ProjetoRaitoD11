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
    grp1: TGroupBox;
    dbgrd1: TDBGrid;
    procedure btnNovoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
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
    panelTela.Enabled:= True;
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

procedure TfrmCadastroClientes.dbgrd1DblClick(Sender: TObject);
begin
DMRaito.FdTableContatoCliente.Delete;
end;

end.

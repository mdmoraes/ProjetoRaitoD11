unit UPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, QuickRpt, qrpBaseCtrls,
  QRCtrls;

type
  TfrmPedido = class(TForm)
    panelNav: TPanel;
    btnNovo: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnPesquisa: TSpeedButton;
    btn1: TBitBtn;
    dbnv1: TDBNavigator;
    panelConfirma: TPanel;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    btnImprimir: TSpeedButton;
    panelTela: TPanel;
    dbgrdItens: TDBGrid;
    lbl: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtnum_pedido: TDBEdit;
    dbedtdata_pedido: TDBEdit;
    lokupcliente: TDBLookupComboBox;
    BalloonHint1: TBalloonHint;
    lbl4: TLabel;
    lbl8: TLabel;
    dbedttotalbruto: TDBEdit;
    btn2: TSpeedButton;
    btnNovoCliente: TSpeedButton;
    btnNovaRepresentada: TSpeedButton;
    btnNovaTransportadora: TSpeedButton;
    dbrgrptipopedido: TDBRadioGroup;
    lbl9: TLabel;
    dbedtcondicoespagto1: TDBEdit;
    lbl10: TLabel;
    dbedtcomissaopercentual: TDBEdit;
    lbl11: TLabel;
    dbedtcomissaovalor1: TDBEdit;
    lbl12: TLabel;
    dbmmoobs: TDBMemo;
    lbl13: TLabel;
    dbmmolembrete: TDBMemo;
    lokupcliente1: TDBLookupComboBox;
    lokuprepresentada: TDBLookupComboBox;
    lbl5: TLabel;
    dbedtidcliente: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClienteClick(Sender: TObject);
    procedure dbgrdItensDblClick(Sender: TObject);
    procedure lokupclienteClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedido: TfrmPedido;

implementation

uses UDMRaito, UCadastroDeClientes, UPesquisarProdutos, UPesquisaPedido, URelatorioPedido;


{$R *.dfm}

procedure TfrmPedido.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmPedido.btnAlterarClick(Sender: TObject);
begin
    panelConfirma.Enabled:= True;
    panelNav.Visible:= False;
    panelTela.Enabled:= True;
    DMRaito.FdTablePedido.Edit;
end;

procedure TfrmPedido.btnCancelarClick(Sender: TObject);
begin
    panelConfirma.Enabled:= False;
    panelNav.Visible:= True;
    panelTela.Enabled:= False;
    DMRaito.FdTablePedido.Cancel;
end;

procedure TfrmPedido.btnExcluirClick(Sender: TObject);

begin
 if MessageDlg('DESEJA EXCLUIR ESSE REGISTRO ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DMRaito.FdTablePedido.Delete;
    ShowMessage('Registro excluído com sucesso!');
  end;
end;

procedure TfrmPedido.btnGravarClick(Sender: TObject);
begin
    DMRaito.FdTablePedido.Edit;
//    if (dbrgrptipopedido.Value <> 'Orçamento') or (dbrgrptipopedido.Value <> 'Venda') then
//    begin
//      ShowMessage('É obrigatório definir tipo de pedido como Orçamento ou Venda Efetiva !');
//      Exit;
//    end
//    else

    if (dbrgrptipopedido.Value = 'Orçamento') or (dbrgrptipopedido.Value = 'Venda') then
    begin
    DMRaito.FdTablePedido.Post;
    ShowMessage('Registro gravado com sucesso.!');
    panelConfirma.Enabled:= False;
    panelNav.Visible:= True;
    panelTela.Enabled:= False;
    end
    else
    ShowMessage('É obrigatório definir o tipo de pedido, Orçamento ou Venda Efetiva !');



end;

procedure TfrmPedido.btnImprimirClick(Sender: TObject);
//gerar o relatório no QUICK REPORT
begin
    try
      Application.CreateForm(TfrmRelatorioPedido,frmRelatorioPedido);
     // DMRatio.TBCadCliente.Locate('IdCliente', dbCodCliente.Text, []);
    //  DMRaito.FdTablePedido.IndexName:= 'idxNumPedido';
    //  DMRaito.FdTablePedido.SetRange([dbedtnum_pedido.Text],[dbedtnum_pedido.Text]);
      frmRelatorioPedido.queryRelPedido.ParamByName('NUM_PEDIDO').AsInteger:= StrToInt(dbedtnum_pedido.Text);
      frmRelatorioPedido.queryRelPedido.Prepare;
      frmRelatorioPedido.queryRelPedido.Open;

      if DMRaito.TablePedidotipopedido.Value = 'Orçamento' then
   //   QrOrcamento.QRLblPedido.Caption:= 'Orçtº_Nº';

  //    QrOrcamento.QRExprMemo1.Lines.Text:= dbmemoObs.Text;
      frmRelatorioPedido.QRPQuickrep1.Preview;
      frmRelatorioPedido.queryRelPedido.Close;
     // DMRaito.FdTablePedido.IndexName:='';
      finally
      frmRelatorioPedido.Free;
      end;
end;

procedure TfrmPedido.btnNovoClick(Sender: TObject);
var it: Integer;
begin
  panelConfirma.Enabled:= True;
  panelNav.Visible:= False;
  panelTela.Enabled:= True;
       try
          DMRaito.FdTablePedido.DisableControls;
          DMRaito.FdTablePedido.IndexName:= 'idxNumPedido';
          DMRaito.FdTablePedido.First;
          DMRaito.FdTablePedido.Last;
          if DMRaito.FdTablePedido['num_pedido']<> null then
          it := DMRaito.FdTablePedido['num_pedido']
          else
          it:= 0;
          DMRaito.FdTablePedido.Insert;
          DMRaito.FdTablePedido['num_pedido'] := it + 1;
          DMRaito.FdTablePedido['data_pedido']:= DateToStr(Now);
          lokupcliente.SetFocus;
          finally
          DMRaito.FdTablePedido.EnableControls;
          end;
end;

procedure TfrmPedido.btnNovoClienteClick(Sender: TObject);
begin
 try
 application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
 frmCadastroClientes.ShowModal;
 finally
 frmCadastroClientes.Free;
 end;
end;

procedure TfrmPedido.btnPesquisaClick(Sender: TObject);
begin
try
 application.CreateForm(TFrmPesquisaPedido, FrmPesquisaPedido);
 FrmPesquisaPedido.ShowModal;
 finally
 FrmPesquisaPedido.Free;
 end;
end;

procedure TfrmPedido.dbgrdItensDblClick(Sender: TObject);
begin
try
 application.CreateForm(TFrmPesquisarProdutos, FrmPesquisarProdutos);
 FrmPesquisarProdutos.ShowModal;
 finally
 FrmPesquisarProdutos.Free;
 end;
end;

procedure TfrmPedido.lokupclienteClick(Sender: TObject);
begin
    DMRaito.FDTableCliente.IndexName:= 'IdxCliente';
end;

end.

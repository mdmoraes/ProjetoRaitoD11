unit UPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, QuickRpt, qrpBaseCtrls,
  QRCtrls, Vcl.Consts;

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
    dbedttotaldopedido: TDBEdit;
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
    lbl13: TLabel;
    lokupcliente1: TDBLookupComboBox;
    lokuprepresentada: TDBLookupComboBox;
    lbl5: TLabel;
    dbedtidcliente: TDBEdit;
    dbmmoobs: TDBMemo;
    dbmmoobs1: TDBMemo;
    procedure btnNovoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClienteClick(Sender: TObject);
    procedure lokupclienteClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure dbgrdItensCellClick(Column: TColumn);
    procedure ButtonPesquisarProdtoClick(Sender: TObject);
    procedure dbgrdItensEditButtonClick(Sender: TObject);
    procedure dbgrdItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    DMRaito.FdTableItens.Cancel;
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
    DMRaito.FdTableItens.Edit;
    if (dbrgrptipopedido.Value = 'Orçamento') or (dbrgrptipopedido.Value = 'Venda') then
    begin
    DMRaito.FdTablePedido.Post;
//    DMRaito.FdTableItens.Post;
    ShowMessage('Registro gravado com sucesso.!');
    panelConfirma.Enabled:= False;
    panelNav.Visible:= True;
    panelTela.Enabled:= False;
    end
    else
    ShowMessage('É obrigatório definir o TIPO DE PEDIDO:  Orçamento ou Venda !');



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
      frmRelatorioPedido.qrdbTIPOPEDIDO.Caption:= 'Orçamento'
      else
      frmRelatorioPedido.qrdbTIPOPEDIDO.Caption:= 'Venda';


      //lbl_Totalizador.Caption := FloatToStr (vQryTotais.FieldByName(''TOTAL'').AsFloat);


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

procedure TfrmPedido.ButtonPesquisarProdtoClick(Sender: TObject);
begin
try
 application.CreateForm(TFrmPesquisarProdutos, FrmPesquisarProdutos);
 FrmPesquisarProdutos.ShowModal;
 finally
 FrmPesquisarProdutos.Free;
 end;
end;

procedure TfrmPedido.dbgrdItensCellClick(Column: TColumn);
begin
//if dbgrdItens.SelectedIndex = 0 then
//btnPesquisaClick(nil);
end;

procedure TfrmPedido.dbgrdItensEditButtonClick(Sender: TObject);
begin
 try
 application.CreateForm(TFrmPesquisarProdutos, FrmPesquisarProdutos);
 FrmPesquisarProdutos.ShowModal;
 finally
 FrmPesquisarProdutos.Free;
 end;
end;

procedure TfrmPedido.dbgrdItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_DELETE
  then begin
       if MessageDlg('Deseja Excluir este Item selecionado ?',mtConfirmation,[mbYes,mbNo],0)=mrYes
       then begin
            DMRaito.FdTableItens.Delete;
            DMRaito.FdTableItens.ApplyUpdates(0);
        //    DMRomaneio.cdsRomaneioItem.ApplyUpdates(0);
       end;
  end;
end;

procedure TfrmPedido.lokupclienteClick(Sender: TObject);
begin
    DMRaito.FDTableCliente.IndexName:= 'IdxCliente';
end;

end.

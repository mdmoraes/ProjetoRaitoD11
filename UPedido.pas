unit UPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, QuickRpt, qrpBaseCtrls,
  QRCtrls, Vcl.Consts, Vcl.ActnMan, Math, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Stan.Param;

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
    lbl: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtnum_pedido: TDBEdit;
    dbedtdata_pedido: TDBEdit;
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
//    dbedtcondicoespagto1: TDBEdit;
    lbl10: TLabel;
    dbedtcomissaopercentual: TDBEdit;
    lbl11: TLabel;
    dbedtcomissaovalor1: TDBEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    lokupcliente1: TDBLookupComboBox;
    lokuprepresentada: TDBLookupComboBox;
    dbmmoobs: TDBMemo;
    dbmmoobs1: TDBMemo;
    dbgrdItens: TDBGrid;
    DBEditCliente: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEditIdCliente: TDBEdit;
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
    procedure ButtonPesquisarProdtoClick(Sender: TObject);
    procedure dbgrdItensEditButtonClick(Sender: TObject);
    procedure dbgrdItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrdItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdItensCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEditClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
   procedure LimparCache(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedido: TfrmPedido;

implementation

uses UDMRaito, UCadastroDeClientes, UPesquisarProdutos, UPesquisaPedido,
 URelatorioPedido, UPesquisarClientes, UBuscarProdutoParaEmissaoDePedido;


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
    DMRaito.FdTablePedidos.Edit;
end;

procedure TfrmPedido.btnCancelarClick(Sender: TObject);
begin
    panelConfirma.Enabled:= False;
    panelNav.Visible:= True;
    panelTela.Enabled:= False;
    DMRaito.FdTablePedidos.Cancel;
    DMRaito.FdTableItens.Cancel;
end;

procedure TfrmPedido.btnExcluirClick(Sender: TObject);

begin
 if MessageDlg('DESEJA EXCLUIR ESSE REGISTRO ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DMRaito.FdTablePedidos.Delete;
    ShowMessage('Registro excluído com sucesso!');
  end;
end;

procedure TfrmPedido.btnGravarClick(Sender: TObject);
begin
    DMRaito.FdTablePedidos.Edit;
    DMRaito.FdTableItens.Edit;
    if (dbrgrptipopedido.Value = 'Orçamento') or (dbrgrptipopedido.Value = 'Venda') then
    begin
    DMRaito.FdTablePedidos.Post;
    DMRaito.FdTableItens.Post;
    ShowMessage('Registro gravado com sucesso.!');
    panelConfirma.Enabled:= False;
    panelNav.Visible:= True;
    panelTela.Enabled:= False;
    end
    else
    ShowMessage('É obrigatório definir o TIPO DE PEDIDO:  Orçamento ou Venda !');

    DMRaito.FDSchemaAdapter.ApplyUpdates(0);
    DMRaito.FdTablePedidos.EmptyDataSet;
    DMRaito.FdTableItens.EmptyDataSet;

    //VAI PARA O ÚLTIMO REGISTRO
    DMRaito.FDTablePedidos.Active:= False;
    DMRaito.FDTablePedidos.Active:= True;

    DMRaito.FdTableItens.Active:= False;
    DMRaito.FdTableItens.Active:= True;

    DMRaito.FdTablePedidos.IndexName:= 'IdxPedidoId';
    DMRaito.FdTablePedidos.First;
    DMRaito.FdTablePedidos.Last;




end;

procedure TfrmPedido.btnImprimirClick(Sender: TObject);
//gerar o relatório no QUICK REPORT
begin
    try
      Application.CreateForm(TfrmRelatorioPedido,frmRelatorioPedido);
     // DMRatio.TBCadCliente.Locate('IdCliente', dbCodCliente.Text, []);

    frmRelatorioPedido.queryRelPedido.Close;
    frmRelatorioPedido.queryRelPedido.Params.ClearValues();
    frmRelatorioPedido.queryRelPedido.Params[0].AsInteger := DMRaito.FdTablePedidosPedidoId.Value;      //StrToInt(dbedtnum_pedido.Text);
    frmRelatorioPedido.queryRelPedido.Prepare;
    frmRelatorioPedido.queryRelPedido.Open();

      if DMRaito.FdTablePedidosTipoPedido.Value = 'Orçamento' then
      frmRelatorioPedido.qrdbTIPOPEDIDO.Caption:= 'Orçamento'
      else
      frmRelatorioPedido.qrdbTIPOPEDIDO.Caption:= 'Venda';
      frmRelatorioPedido.QRPQuickrep1.Preview;
      frmRelatorioPedido.queryRelPedido.Close;
      finally
      frmRelatorioPedido.Free;
      end;
end;

procedure TfrmPedido.btnNovoClick(Sender: TObject);
begin
  panelConfirma.Enabled:= True;
  panelNav.Visible:= False;
  panelTela.Enabled:= True;
//       try
//          DMRaito.FdTablePedido.DisableControls;
//          DMRaito.FdTablePedido.IndexName:= 'idxPedidoId';
//          DMRaito.FdTablePedido.First;
//          DMRaito.FdTablePedido.Last;
//          if DMRaito.FdTablePedido['PedidoId']<> null then
//          it := DMRaito.FdTablePedido['PedidoId']
//          else
 //         it:= 0;


          DMRaito.FdTablePedidos.Edit;
          DMRaito.FdTablePedidos.Append;
          DMRaito.FdTablePedidos['data_pedido']:= DateToStr(Now);
          DBEditCliente.SetFocus;

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

procedure TfrmPedido.DBEditClienteExit(Sender: TObject);
begin
if DMRaito.FdTablePedidos.State in [dsinsert, dsEdit] then
          begin
          DMRaito.FDTablePedidos.Post;
          DMRaito.FDTablePedidos.Edit;
          end;
end;

procedure TfrmPedido.dbgrdItensCellClick(Column: TColumn);
begin
//    if dbgrdItens.SelectedIndex = 2 then
//    begin
//    DMRaito.FdTablePedido.Post;
//    DMRaito.FdTablePedido.Edit;
//    end;
end;

procedure TfrmPedido.dbgrdItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  //zebrar a grid

   if not (gdSelected in State) then
  begin
    if Odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
      (Sender as TDBGrid).Canvas.Brush.Color:= clWhite
    else
      (Sender as TDBGrid).Canvas.Brush.Color:= $edecd8;       //$00F1F2F3; // leve cinza

    // Aplicando prto para a cor da fonte
    (Sender as TDBGrid).Canvas.Font.Color:= clBlack;

    (Sender as TDBGrid).Canvas.FillRect(Rect);
    (Sender as TDBGrid).Canvas.TextOut(Rect.Left + 2, Rect.Top,
    Column.Field.DisplayText);
  end;

end;

procedure TfrmPedido.dbgrdItensEditButtonClick(Sender: TObject);
begin
 try
 application.CreateForm(TfrmBuscarProdutoParaPedido, frmBuscarProdutoParaPedido);
 frmBuscarProdutoParaPedido.ShowModal;
 finally
 frmBuscarProdutoParaPedido.Free;
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
       end;
  end;
end;

procedure TfrmPedido.FormCreate(Sender: TObject);
begin
DMRaito.FDSchemaAdapter.AfterApplyUpdate := LimparCache;
end;

procedure TfrmPedido.FormShow(Sender: TObject);
begin
    DMRaito.FDTablePedidos.Active:= False;
    DMRaito.FDTablePedidos.Active:= True;

    DMRaito.FdTableItens.Active:= False;
    DMRaito.FdTableItens.Active:= True;

    DMRaito.FdTablePedidos.IndexName:= '';
    DMRaito.FdTablePedidos.First;
    DMRaito.FdTablePedidos.Last;
end;

procedure TfrmPedido.LimparCache(Sender: TObject);
begin
  DMRaito.FdTablePedidos.CommitUpdates();
  DMRaito.FdTableItens.CommitUpdates();
//  DMRaito.FdTablePedido.EmptyDataSet;
//  DMRaito.FdTableItens.EmptyDataSet;



end;

procedure TfrmPedido.lokupclienteClick(Sender: TObject);
begin
 //   DMRaito.FDTableCliente.IndexName:= 'IdxCliente';
end;

procedure TfrmPedido.SpeedButton1Click(Sender: TObject);
begin
 try
    Application.CreateForm(TFrmPesquisarClientes, FrmPesquisarClientes);
    FrmPesquisarClientes.ShowModal;
    finally
    FrmPesquisarClientes.Free;
    end;
end;

end.

unit UDMRaito;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Dialogs;

type
  TDMRaito = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTableCliente: TFDTable;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDTableClienteidcliente: TIntegerField;
    strngfldFDTableClientenomecliente: TStringField;
    strngfldFDTableClienteregiao: TStringField;
    FDTableClientedatacadastro: TDateField;
    TableClienteendereco: TStringField;
    strngfldFDTableClientebairro: TStringField;
    strngfldFDTableClientecidade: TStringField;
    strngfldFDTableClienteestado: TStringField;
    strngfldFDTableClientecep: TStringField;
    strngfldFDTableClientetel1: TStringField;
    strngfldFDTableClientetel2: TStringField;
    strngfldFDTableClientetel3: TStringField;
    strngfldFDTableClientetel4: TStringField;
    strngfldFDTableClientefax: TStringField;
    strngfldFDTableClientecel1: TStringField;
    strngfldFDTableClientecel2: TStringField;
    strngfldFDTableClientecel3: TStringField;
    strngfldFDTableClienteradio: TStringField;
    strngfldFDTableClienteidradio: TStringField;
    strngfldFDTableClientemsn: TStringField;
    strngfldFDTableClienteskipe: TStringField;
    strngfldFDTableClientecontato1: TStringField;
    strngfldFDTableClientecontato2: TStringField;
    strngfldFDTableClienteemail: TStringField;
    strngfldFDTableClienteemailnfe: TStringField;
    strngfldFDTableClientesite: TStringField;
    FDTableClienteobs: TMemoField;
    strngfldFDTableClientecnpj: TStringField;
    strngfldFDTableClienteinscestadual: TStringField;
    strngfldFDTableClientetwitter: TStringField;
    strngfldFDTableClientetransportadora: TStringField;
    strngfldFDTableClienteteltransportadora: TStringField;
    FdTbImportacao: TFDTable;
    FdTbImportacaocodigo: TStringField;
    strngfldFdTbImportacaodescricao: TStringField;
    strngfldFdTbImportacaogrupo: TStringField;
    strngfldFdTbImportacaonorma: TStringField;
    strngfldFdTbImportacaoisolacao: TStringField;
    strngfldFdTbImportacaocobertura: TStringField;
    strngfldFdTbImportacaoclasse: TStringField;
    strngfldFdTbImportacaoblindagem: TStringField;
    strngfldFdTbImportacaotemperatura: TStringField;
    strngfldFdTbImportacaocustomp: TStringField;
    FdTableCadastroProdutos: TFDTable;
    FdTableCadastroProdutosidproduto: TIntegerField;
    strngfldFdTableCadastroProdutoscodigoproduto: TStringField;
    strngfldFdTableCadastroProdutoscodauxiliar: TStringField;
    fltfldFdTableCadastroProdutoscodbarra: TFloatField;
    strngfldFdTableCadastroProdutosncm: TStringField;
    strngfldFdTableCadastroProdutosunidade: TStringField;
    strngfldFdTableCadastroProdutosdescricao: TStringField;
    strngfldFdTableCadastroProdutosgrupo: TStringField;
    strngfldFdTableCadastroProdutosrepresentada: TStringField;
    fltfldFdTableCadastroProdutosipi: TFloatField;
    fltfldFdTableCadastroProdutosicm: TFloatField;
    strngfldFdTableCadastroProdutoscst: TStringField;
    fltfldFdTableCadastroProdutospeso: TFloatField;
    fltfldFdTableCadastroProdutospcusto: TFloatField;
    fltfldFdTableCadastroProdutospvenda: TFloatField;
    FdTableCadastroProdutosmarcado: TIntegerField;
    dsPedido: TDataSource;
    dsItens: TDataSource;
    dsCliente: TDataSource;
    FdTableTransportadora: TFDTable;
    fdtncfldFdTableTransportadoraTransportadoraId: TFDAutoIncField;
    strngfldFdTableTransportadoraNomeTransportadora: TStringField;
    strngfldFdTableTransportadoraEndereço: TStringField;
    strngfldFdTableTransportadoraTelefone1: TStringField;
    strngfldFdTableTransportadoraemail: TStringField;
    strngfldFdTableTransportadoraUF: TStringField;
    strngfldFdTableTransportadoraCidade: TStringField;
    strngfldFdTableTransportadoraContato: TStringField;
    strngfldFdTableTransportadoraObs: TStringField;
    strngfldFdTableTransportadoraCep: TStringField;
    fltfldFdTbImportacaokg_km: TFloatField;
    fltfldFdTbImportacaoicms18: TFloatField;
    fltfldFdTbImportacaoicms12: TFloatField;
    fltfldFdTbImportacaoicms7: TFloatField;
    FdTableContatoCliente: TFDTable;
    dsContatoCliente: TDataSource;
    FdTableContatoClienteTipo: TStringField;
    FdTableContatoClienteDadosDoTipo: TStringField;
    FdTableContatoClienteNomeDoContato: TStringField;
    FdTableContatoClienteIdCliente: TIntegerField;
    TableFdTableContatoClienteContatoId: TIntegerField;
    dsTableTransportadora: TDataSource;
    FdTableRepresentada: TFDTable;
    dsRepresentada: TDataSource;
    fdtncfldFdTableRepresentadaidcliente: TFDAutoIncField;
    TableFdTableRepresentadanomecliente: TStringField;
    TableFdTableRepresentadaregiao: TStringField;
    dtfldFdTableRepresentadadatacadastro: TDateField;
    TableFdTableRepresentadaendereco: TStringField;
    TableFdTableRepresentadabairro: TStringField;
    TableFdTableRepresentadacidade: TStringField;
    TableFdTableRepresentadaestado: TStringField;
    TableFdTableRepresentadacep: TStringField;
    TableFdTableRepresentadacomissao: TFloatField;
    TableFdTableRepresentadatel1: TStringField;
    TableFdTableRepresentadatel2: TStringField;
    TableFdTableRepresentadatel3: TStringField;
    TableFdTableRepresentadatel4: TStringField;
    TableFdTableRepresentadafax: TStringField;
    TableFdTableRepresentadacel1: TStringField;
    TableFdTableRepresentadacel2: TStringField;
    TableFdTableRepresentadacel3: TStringField;
    TableFdTableRepresentadaradio: TStringField;
    TableFdTableRepresentadaid: TStringField;
    TableFdTableRepresentadamsn: TStringField;
    TableFdTableRepresentadaskipe: TStringField;
    TableFdTableRepresentadacontato1: TStringField;
    TableFdTableRepresentadacontato2: TStringField;
    TableFdTableRepresentadaemail: TStringField;
    TableFdTableRepresentadaemailnfe: TStringField;
    TableFdTableRepresentadasite: TStringField;
    mfldFdTableRepresentadaobs: TMemoField;
    TableFdTableRepresentadacnpj: TStringField;
    TableFdTableRepresentadainscestadual: TStringField;
    TableFdTableRepresentadatwitter: TStringField;
    dsCadastroDeProdutos: TDataSource;
    FdTablePedido: TFDTable;
    FdTablePedidoPedidoId: TFDAutoIncField;
    FdTablePedidodata_pedido: TDateTimeField;
    FdTablePedidoRepresentada: TStringField;
    FdTablePedidoCliente: TStringField;
    FdTablePedidoTransportadora: TStringField;
    FdTablePedidoCondicoesPagamento: TStringField;
    FdTablePedidoComissao: TFloatField;
    FdTablePedidoVrComissao: TFloatField;
    FdTablePedidoObs: TStringField;
    FdTablePedidoLembrete: TStringField;
    FdTablePedidoTotalBruto: TFloatField;
    FdTableItens: TFDTable;
    FdTablePedidoTipoPedido: TStringField;
    FdTableItensItensId: TFDAutoIncField;
    FdTableItensCodProd: TStringField;
    FdTableItensQtd: TIntegerField;
    FdTableItensDescProduto: TStringField;
    FdTableItensVrUnit: TFloatField;
    FdTableItensp1: TFloatField;
    FdTableItensVrDesc: TFloatField;
    FdTableItensGrupo: TStringField;
    FdTableItensmc: TShortintField;
    FdTableItensUn: TStringField;
    FdTableItensPedidoId: TIntegerField;
    FdTableItensTotalItens: TFloatField;
    FDTableVenda: TFDTable;
    FDTableItemVenda: TFDTable;
    DSVenda: TDataSource;
    DSItemVenda: TDataSource;
    FDTableVendaidvenda: TFDAutoIncField;
    FDTableVendadata_venda: TDateField;
    FDTableItemVendaiditem_venda: TFDAutoIncField;
    FDTableItemVendaidvenda: TIntegerField;
    FDTableVendaproduto: TStringField;
    FDTableVendadescricao: TStringField;
    FDTableItemVendaproduto: TStringField;
    FDTableItemVendadescricao: TStringField;
    FDSchemaAdapter: TFDSchemaAdapter;
    FdTableItensDesct: TFloatField;
    procedure FdTableContatoClienteBeforePost(DataSet: TDataSet);
    procedure FdTableItensCalcFields(DataSet: TDataSet);
    procedure FdTableItensAfterPost(DataSet: TDataSet);
    procedure FdTablePedidoBeforePost(DataSet: TDataSet);
    procedure FDSchemaAdapterAfterApplyUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRaito: TDMRaito;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMRaito.FDSchemaAdapterAfterApplyUpdate(Sender: TObject);
begin
  DMRaito.FdTablePedido.CommitUpdates();
  DMRaito.FdTableItens.CommitUpdates();

end;

procedure TDMRaito.FdTableContatoClienteBeforePost(DataSet: TDataSet);
begin
//     DMRaito.fdtncfldFdTableContatoClienteContatoId.Value:= DMRaito.FDTableClienteidcliente.Value;
end;

procedure TDMRaito.FdTableItensAfterPost(DataSet: TDataSet);
var
total, totalBruto: Double;
  begin
     if DMRaito.FdTableItens.FieldByName('qtd').AsFloat < 1  then
     begin
      ShowMessage('O preenchimento da Quantidade(>=1) é obrigatório !');
      Abort;
     end;
      DMRaito.FdTableItens.DisableControls;
      DMRaito.FdTableItens.First;
      total:= 0;
      totalBruto:= 0;
      while not DMRaito.FdTableItens.Eof do
      begin
      total:= total + DMRaito.FdTableItensTotalItens.Value;
      DMRaito.FdTableItens.Next;


      end;
     // DMRaito.FdTableItens.Edit;
      DMRaito.FdTablePedido.Edit;
      DMRaito.FdTablePedidoTotalBruto.Value:= total;
      DMRaito.FdTablePedido.Post;
      DMRaito.FdTableItens.EnableControls;


  end;

procedure TDMRaito.FdTableItensCalcFields(DataSet: TDataSet);
begin

//DMRaito.FdTableItens.Edit;
FdTableItensDesct.Value:=
(DMRaito.FdTableItensVrUnit.Value * DMRaito.FdTableItensp1.Value) /100;
//
DMRaito.FdTableItensTotalItens.Value :=
(DMRaito.FdTableItensVrUnit.Value * DMRaito.FdTableItensqtd.Value);
end;

procedure TDMRaito.FdTablePedidoBeforePost(DataSet: TDataSet);
begin

//DMRaito.TableFdTablePedidoidcliente.Value := DMRaito.FDTableClienteidcliente.Value;
//ENDEREÇO DO CLIENTE
//DMRaito.TablePedidoEnderecoCliente.Value := DMRaito.TableClienteendereco.Value;

end;

end.

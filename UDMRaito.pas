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
    dsPedido: TDataSource;
    dsItens: TDataSource;
    dsCliente: TDataSource;
    FdTableTransportadora: TFDTable;
    fltfldFdTbImportacaokg_km: TFloatField;
    fltfldFdTbImportacaoicms18: TFloatField;
    fltfldFdTbImportacaoicms12: TFloatField;
    fltfldFdTbImportacaoicms7: TFloatField;
    FdTableContatoCliente: TFDTable;
    dsContatoCliente: TDataSource;
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
    FdTableItens: TFDTable;
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
    FdTablePedidoPedidoId: TFDAutoIncField;
    FdTablePedidodata_pedido: TDateField;
    FdTablePedidorepresentada: TStringField;
    FdTablePedidocliente: TStringField;
    FdTablePedidotransportadora: TStringField;
    FdTablePedidocondicoespagto: TStringField;
    FdTablePedidocomissao: TFloatField;
    FdTablePedidocomissaovalor: TFloatField;
    FdTablePedidoobs: TStringField;
    FdTablePedidolembrete: TStringField;
    FdTablePedidototalbruto: TFloatField;
    FdTablePedidotipopedido: TStringField;
    FdTablePedidocadastroclientes_idcliente: TIntegerField;
    FdTablePedidoidcliente: TIntegerField;
    FdTableContatoClienteContatoId: TFDAutoIncField;
    FdTableContatoClienteContato_IdCliente: TIntegerField;
    FdTableContatoClienteTipo: TStringField;
    FdTableContatoClienteDescricao: TStringField;
    FdTableContatoClienteNomeDoContato: TStringField;
    FdTableContatoClientecadastroclientes_idcliente: TIntegerField;
    FdTableCadastroProdutosidproduto: TFDAutoIncField;
    FdTableCadastroProdutoscodigoproduto: TStringField;
    FdTableCadastroProdutosdescricao: TStringField;
    FdTableCadastroProdutosgrupo: TStringField;
    FdTableCadastroProdutoscodauxiliar: TStringField;
    FdTableCadastroProdutoscodbarra: TFloatField;
    FdTableCadastroProdutosncm: TStringField;
    FdTableCadastroProdutosunidade: TStringField;
    FdTableCadastroProdutossubgrupo: TStringField;
    FdTableCadastroProdutosrepresentada: TStringField;
    FdTableCadastroProdutosipi: TFloatField;
    FdTableCadastroProdutosicms: TStringField;
    FdTableCadastroProdutospeso: TFloatField;
    FdTableCadastroProdutospvenda: TFloatField;
    FdTableTransportadoraTransportadoraId: TFDAutoIncField;
    FdTableTransportadoraNomeTransportadora: TStringField;
    FdTableTransportadoraEndereco: TStringField;
    FdTableTransportadoraTelefone: TStringField;
    FdTableTransportadoraemail: TStringField;
    FdTableTransportadoraContato: TStringField;
    FdTableTransportadoraCidade: TStringField;
    FdTableTransportadoraUF: TStringField;
    FdTableTransportadoraCep: TStringField;
    FdTableTransportadoraObs: TStringField;
    FDTableClienteidcliente: TFDAutoIncField;
    FDTableClientenomecliente: TStringField;
    FDTableClienteregiao: TStringField;
    FDTableClientedatacadastro: TDateField;
    FDTableClienteendereco: TStringField;
    FDTableClientebairro: TStringField;
    FDTableClientecidade: TStringField;
    FDTableClienteestado: TStringField;
    FDTableClientecep: TStringField;
    FDTableClientetel1: TStringField;
    FDTableClientetel2: TStringField;
    FDTableClientetel3: TStringField;
    FDTableClientetel4: TStringField;
    FDTableClientefax: TStringField;
    FDTableClientecel1: TStringField;
    FDTableClientecel2: TStringField;
    FDTableClientecel3: TStringField;
    FDTableClienteradio: TStringField;
    FDTableClienteidradio: TStringField;
    FDTableClientemsn: TStringField;
    FDTableClienteskipe: TStringField;
    FDTableClientecontato1: TStringField;
    FDTableClientecontato2: TStringField;
    FDTableClienteemail: TStringField;
    FDTableClienteemailnfe: TStringField;
    FDTableClientesite: TStringField;
    FDTableClienteobs: TMemoField;
    FDTableClientecnpj: TStringField;
    FDTableClienteinscestadual: TStringField;
    FDTableClientetwitter: TStringField;
    FDTableClientetransportadora: TStringField;
    FDTableClienteteltransportadora: TStringField;
    FdTableItensItemId: TFDAutoIncField;
    FdTableItensitem_PedidoId: TIntegerField;
    FdTableItenscod_produto: TStringField;
    FdTableItensDes_Produto: TStringField;
    FdTableItensgrupo: TStringField;
    FdTableItensun: TStringField;
    FdTableItensqtd: TFloatField;
    FdTableItensvrunit: TFloatField;
    FdTableItensp1: TFloatField;
    FdTableItensp2: TFloatField;
    FdTableItensp3: TFloatField;
    FdTableItensicms: TShortintField;
    FdTableItenspedidos_PedidoId: TIntegerField;
    FdTableItensDesct: TFloatField;
    FdTableItensTotalItens: TFloatField;
    procedure FdTableContatoClienteBeforePost(DataSet: TDataSet);
    procedure FdTableItensCalcFields(DataSet: TDataSet);
    procedure FdTableItensAfterPost(DataSet: TDataSet);
    procedure FdTablePedidoBeforePost(DataSet: TDataSet);
    procedure FDSchemaAdapterAfterApplyUpdate(Sender: TObject);
    procedure FdTablePedidoAfterPost(DataSet: TDataSet);
    procedure FDTableClienteBeforePost(DataSet: TDataSet);
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

procedure TDMRaito.FDTableClienteBeforePost(DataSet: TDataSet);
begin

//gravar master antes. mm
//DMRaito.FDTableCliente.Edit;
//DMRaito.FDTableCliente.Post;
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
   //   total:= total + DMRaito.FdTableItensTotalItens.Value;
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
DMRaito.FdTableItens.Edit;
FdTableItensDesct.Value:=
(DMRaito.FdTableItensVrUnit.Value * DMRaito.FdTableItensp1.Value) /100 * DMRaito.FdTableItensqtd.Value;
//
DMRaito.FdTableItensTotalItens.Value :=
(DMRaito.FdTableItensVrUnit.Value * DMRaito.FdTableItensqtd.Value - FdTableItensDesct.Value);
end;

procedure TDMRaito.FdTablePedidoAfterPost(DataSet: TDataSet);
begin
//DMRaito.FdTablePedido.Edit;
//DMRaito.FdTablePedidoId_Cliente.Value := DMRaito.FDTableClienteidcliente.Value;
end;

procedure TDMRaito.FdTablePedidoBeforePost(DataSet: TDataSet);
begin

//ENDEREÇO DO CLIENTE
//DMRaito.TablePedidoEnderecoCliente.Value := DMRaito.TableClienteendereco.Value;

end;

end.

unit UDMRaito;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    strngfldFDTableClienteendereco: TStringField;
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
    FdTablePedido: TFDTable;
    FdTablePedidonum_pedido: TIntegerField;
    dtfldFdTablePedidodata_pedido: TDateField;
    strngfldFdTablePedidorepresentada: TStringField;
    strngfldFdTablePedidocliente: TStringField;
    strngfldFdTablePedidotransportadora: TStringField;
    strngfldFdTablePedidocondicoespagto: TStringField;
    fltfldFdTablePedidocomissaopercentual: TFloatField;
    fltfldFdTablePedidocomissaovalor: TFloatField;
    fltfldFdTablePedidodesc1: TFloatField;
    fltfldFdTablePedidodesc2: TFloatField;
    fltfldFdTablePedidodesc3: TFloatField;
    fltfldFdTablePedidodesc4: TFloatField;
    fltfldFdTablePedidodesc5: TFloatField;
    fltfldFdTablePedidodesc6: TFloatField;
    mfldFdTablePedidoobs: TMemoField;
    mfldFdTablePedidolembrete: TMemoField;
    fltfldFdTablePedidototalliquido: TFloatField;
    fltfldFdTablePedidototalbruto: TFloatField;
    strngfldFdTablePedidotipopedido: TStringField;
    FdTablePedidostatus: TIntegerField;
    strngfldFdTablePedidonumpedcliente: TStringField;
    fdtncfldFdTableItensfdtncfldFdTableItenscodinc: TFDAutoIncField;
    TableFdTableItensTable_pedido: TIntegerField;
    TableFdTableItensstrngfldFdTableItenscodigo: TStringField;
    fltfldFdTableItensfltfldFdTableItensqtd: TFloatField;
    TableFdTableItensstrngfldFdTableItensunidade: TStringField;
    TableFdTableItensstrngfldFdTableItensproduto: TStringField;
    fltfldFdTableItensfltfldFdTableItensvalorunit: TFloatField;
    fltfldFdTableItensfltfldFdTableItenspercentual1: TFloatField;
    fltfldFdTableItensfltfldFdTableItenspercentual2: TFloatField;
    fltfldFdTableItensfltfldFdTableItenspercentual3: TFloatField;
    fltfldFdTableItensfltfldFdTableItensvalorliquido: TFloatField;
    TableFdTableItensstrngfldFdTableItensgrupo: TStringField;
    FdTableItensmarcado: TShortintField;
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
    TableFdTableContatoClienteTipo: TStringField;
    TableFdTableContatoClienteDadosDoTipo: TStringField;
    TableFdTableContatoClienteNomeDoContato: TStringField;
    TableFdTableContatoClienteIdCliente: TIntegerField;
    TableFdTableContatoClienteContatoId: TIntegerField;
    FdTableItens: TFDTable;
    procedure FdTableContatoClienteBeforePost(DataSet: TDataSet);
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

procedure TDMRaito.FdTableContatoClienteBeforePost(DataSet: TDataSet);
begin
//     DMRaito.fdtncfldFdTableContatoClienteContatoId.Value:= DMRaito.FDTableClienteidcliente.Value;
end;

end.

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
    FdTbImportacaokg_km: TSingleField;
    FdTbImportacaoicms18: TSingleField;
    FdTbImportacaoicms12: TSingleField;
    FdTbImportacaoicms7: TSingleField;
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
    FdTablePedidoidcliente: TIntegerField;
    FdTablePedidostatus: TIntegerField;
    strngfldFdTablePedidonumpedcliente: TStringField;
    FdTableItens: TFDTable;
    fdtncfldFdTableItenscodinc: TFDAutoIncField;
    FdTableItensid_pedido: TIntegerField;
    strngfldFdTableItenscodigo: TStringField;
    fltfldFdTableItensqtd: TFloatField;
    strngfldFdTableItensunidade: TStringField;
    strngfldFdTableItensproduto: TStringField;
    fltfldFdTableItensvalorunit: TFloatField;
    fltfldFdTableItenspercentual1: TFloatField;
    fltfldFdTableItenspercentual2: TFloatField;
    fltfldFdTableItenspercentual3: TFloatField;
    fltfldFdTableItensvalorliquido: TFloatField;
    strngfldFdTableItensgrupo: TStringField;
    FdTableItensmarcado: TShortintField;
    dsPedido: TDataSource;
    dsItens: TDataSource;
    dsCliente: TDataSource;
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

end.

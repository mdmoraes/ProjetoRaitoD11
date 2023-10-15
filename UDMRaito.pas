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
    TablePedidototalbruto: TFloatField;
    TablePedidotipopedido: TStringField;
    FdTablePedidostatus: TIntegerField;
    strngfldFdTablePedidonumpedcliente: TStringField;
    fdtncfldFdTableItensfdtncfldFdTableItenscodinc: TFDAutoIncField;
    TableFdTableItensTable_pedido: TIntegerField;
    TableFdTableItensstrngfldFdTableItenscodigo: TStringField;
    TableItensqtd: TFloatField;
    TableFdTableItensstrngfldFdTableItensunidade: TStringField;
    TableFdTableItensstrngfldFdTableItensproduto: TStringField;
    TableItensvalorunit: TFloatField;
    fltfldFdTableItensfltfldFdTableItenspercentual1: TFloatField;
    fltfldFdTableItensfltfldFdTableItenspercentual2: TFloatField;
    fltfldFdTableItensfltfldFdTableItenspercentual3: TFloatField;
    TableItensvalorliquido: TFloatField;
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
    TableItensTotal: TFloatField;
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
    TableFdTablePedidoidcliente: TIntegerField;
    TablePedidoEnderecoCliente: TStringField;
    procedure FdTableContatoClienteBeforePost(DataSet: TDataSet);
    procedure TableItensqtdValidate(Sender: TField);
    procedure FdTableItensBeforePost(DataSet: TDataSet);
    procedure FdTableItensCalcFields(DataSet: TDataSet);
    procedure FdTableItensAfterPost(DataSet: TDataSet);
    procedure FdTablePedidoBeforePost(DataSet: TDataSet);
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

procedure TDMRaito.FdTableItensAfterPost(DataSet: TDataSet);
var
total, totalBruto: Double;
begin
    DMRaito.FdTableItens.DisableControls;
    DMRaito.FdTableItens.First;
    total:= 0;
    totalBruto:= 0;
    while not DMRaito.FdTableItens.Eof do
    begin
   // totliquido:= totliquido + DMRatio.TBItensTotalBruto.Value;
    total:= total + DMRaito.TableItensTotal.Value;
    DMRaito.FdTableItens.Next;
    end;
    DMRaito.FdTablePedido.Edit;
    DMRaito.TablePedidototalbruto.Value:= total;
  //  DMRatio.TBPedidoTotalliquido.Value:= total;
    DMRaito.FdTablePedido.Post;
    DMRaito.FdTableItens.EnableControls;

end;

procedure TDMRaito.FdTableItensBeforePost(DataSet: TDataSet);
begin
  if DMRaito.FdTableItens.FieldByName('qtd').AsString = EmptyStr  then
   begin
    ShowMessage('O preenchimento da Quantidade é obrigatório !');
    Abort;
  end;
end;

procedure TDMRaito.FdTableItensCalcFields(DataSet: TDataSet);
begin
DMRaito.TableItensTotal.Value :=
(DMRaito.TableitensValorUnit.Value * DMRaito.TableItensqtd.Value);

end;

procedure TDMRaito.FdTablePedidoBeforePost(DataSet: TDataSet);
begin
DMRaito.TableFdTablePedidoidcliente.Value := DMRaito.FDTableClienteidcliente.Value;
//ENDEREÇO DO CLIENTE
DMRaito.TablePedidoEnderecoCliente.Value := DMRaito.TableClienteendereco.Value;

end;

procedure TDMRaito.TableItensqtdValidate(
  Sender: TField);
begin

//if DMRaito.FdTableItens.FieldByName('qtd').AsFloat = StrToFloat(EmptyStr)  then
//   begin
//    ShowMessage('O preenchimento da Quantidade é obrigatório !');
//    Abort;
//  end;

end;

end.

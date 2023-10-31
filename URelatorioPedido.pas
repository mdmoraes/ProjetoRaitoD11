unit URelatorioPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt, qrpBaseCtrls,
  QRCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TfrmRelatorioPedido = class(TForm)
    QRPQuickrep1: TQRPQuickrep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRImage1: TQRImage;
    QRBand3: TQRBand;
    queryRelPedido: TFDQuery;
    qrdbtxtCliente: TQRDBText;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    dbtxt1: TDBText;
    qrdbtxtNUM_PEDIDO: TQRDBText;
    qrdbtxtNUM_PEDIDO1: TQRDBText;
    qrsysdt1: TQRSysData;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    qrlbl13: TQRLabel;
    qrlbl14: TQRLabel;
    qrlbl15: TQRLabel;
    qrlbl16: TQRLabel;
    qrlbl17: TQRLabel;
    qrlbl18: TQRLabel;
    qrlbl19: TQRLabel;
    qrdbtxtCliente1: TQRDBText;
    qrdbtxtCliente2: TQRDBText;
    qrdbtxt7: TQRDBText;
    qrdbtxtCONDICOESPAGTO: TQRDBText;
    qrdbtxtTRANSPORTADORA: TQRDBText;
    qrdbtxtCODIGO: TQRDBText;
    qrdbtxtPRODUTO: TQRDBText;
    qrdbtxtQTD: TQRDBText;
    qrdbtxtGRUPO: TQRDBText;
    qrdbtxtVALORUNIT: TQRDBText;
    qrdbtxtPERCENTUAL1: TQRDBText;
    qrdbtxtTOTAL: TQRDBText;
    qrlbl20: TQRLabel;
    qrlbl21: TQRLabel;
    qrlbl22: TQRLabel;
    qrlbl23: TQRLabel;
    qrlbl24: TQRLabel;
    qrlbl25: TQRLabel;
    qrlbl26: TQRLabel;
    qrlbl29: TQRLabel;
    qrlbl30: TQRLabel;
    QRShape1: TQRShape;
    QRBand4: TQRBand;
    qrlbl31: TQRLabel;
    qrlblObs: TQRLabel;
    qrlblLembrete: TQRLabel;
    qrlblTipoDePedido: TQRLabel;
    qrdbTIPOPEDIDO: TQRDBText;
    qrdbOBS: TQRDBText;
    qrdbLEMBRETE: TQRDBText;
    qrdbtotalbruto: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    queryRelPedidoPedidoId: TFDAutoIncField;
    queryRelPedidoDATA_PEDIDO: TDateField;
    queryRelPedidoCliente: TStringField;
    queryRelPedidoREPRESENTADA: TStringField;
    queryRelPedidoTRANSPORTADORA: TStringField;
    queryRelPedidoCondicoesPagto: TStringField;
    queryRelPedidoOBS: TStringField;
    queryRelPedidoLEMBRETE: TStringField;
    queryRelPedidoTIPOPEDIDO: TStringField;
    queryRelPedidoTOTALBRUTO: TFloatField;
    queryRelPedidoCod_Produto: TStringField;
    queryRelPedidoDes_Produto: TStringField;
    queryRelPedidoGRUPO: TStringField;
    queryRelPedidoUN: TStringField;
    queryRelPedidoVRUNIT: TFloatField;
    queryRelPedidoQTD: TFloatField;
    queryRelPedidoP1: TFloatField;
    queryRelPedidoP2: TFloatField;
    queryRelPedidoP3: TFloatField;
    queryRelPedidoICMS: TSingleField;
    queryRelPedidobairro: TStringField;
    queryRelPedidoendereco: TStringField;
    queryRelPedidocidade: TStringField;
    queryRelPedidoestado: TStringField;
    queryRelPedidocep: TStringField;
    queryRelPedidoemailnfe: TStringField;
    queryRelPedidoinscestadual: TStringField;
    queryRelPedidoemail: TStringField;
    queryRelPedidoemailnfe_1: TStringField;
    queryRelPedidocnpj: TStringField;
    queryRelPedidoLIQ1: TFloatField;
    queryRelPedidoTOTALITENS: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioPedido: TfrmRelatorioPedido;

implementation

uses UDMRaito, UPedido;

{$R *.dfm}

end.

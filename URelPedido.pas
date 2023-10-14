unit URelPedido;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;


type
    TQrOrcamento = class(TQuickRep)
    QryPedidos: TQuery;
    QryPedidosNUM_PEDIDO: TIntegerField;
    QryPedidosDATA_PEDIDO: TDateField;
    QryPedidosREPRESENTADA: TStringField;
    QryPedidosCONTROLE: TIntegerField;
    QryPedidosCODIGO: TStringField;
    QryPedidosPRODUTO: TStringField;
    QryPedidosVALORUNIT: TFloatField;
    QryPedidosPERCENTUAL1: TFloatField;
    QryPedidosPERCENTUAL2: TFloatField;
    QryPedidosPERCENTUAL3: TFloatField;
    QryPedidosVALORLIQUIDO: TFloatField;
    QryPedidosTRANSPORTADORA: TStringField;
    QryPedidosCONDICOESPAGTO: TStringField;
    QryPedidosOBS: TMemoField;
    QryPedidosTIPOPEDIDO: TStringField;
    QryPedidosQTD: TFloatField;
    QryPedidosTOTALITEM: TFloatField;
    QryPedidosNumPedCliente: TStringField;
  private

  public

  end;

var
  QrOrcamento: TQrOrcamento;

implementation

uses UDBRATIO, UEmissaodePedido;

//        uses base;  //qr Quick Report

{$R *.DFM}

end.

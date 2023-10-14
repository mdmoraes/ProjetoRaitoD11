unit URelRankingClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TFrmRelRankingCliente = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    lblTitulo: TQRLabel;
    lblPeriodo: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRImage1: TQRImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelRankingCliente: TFrmRelRankingCliente;

implementation

uses URankingVendasdeProdutos, UDBRATIO, URankingClientes;

 

{$R *.dfm}

end.

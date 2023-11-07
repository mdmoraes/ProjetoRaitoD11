unit URelatorioPlanilhaFixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, Data.DB;

type
  TfrmRelatorioPlanilhaFixa = class(TForm)
    qckrpPlanilhaFixa: TQuickRep;
    qrbnd1: TQRBand;
    qrbnd2: TQRBand;
    dsRelPlanilhaFixa: TDataSource;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qrdbtxtCodigo: TQRDBText;
    qrdbtxtDescricao: TQRDBText;
    qrxpr1: TQRExpr;
    qrxpr2: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qrdbtxtGrupo: TQRDBText;
    qrdbtxtIsolacao: TQRDBText;
    qrdbtxtCustoMP: TQRDBText;
    qrdbtxtClasse: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRImage1: TQRImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioPlanilhaFixa: TfrmRelatorioPlanilhaFixa;

implementation

{$R *.dfm}

uses UDMRaito, UTabelaFixaImportada;



end.

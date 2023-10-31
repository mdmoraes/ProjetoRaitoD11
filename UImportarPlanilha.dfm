object frmImportarPlanilha: TfrmImportarPlanilha
  Left = 347
  Top = 166
  Caption = 'Importar Planilha  -   EXCEL'
  ClientHeight = 662
  ClientWidth = 1288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object btnImportar: TSpeedButton
    Left = 1223
    Top = 24
    Width = 57
    Height = 22
    Caption = 'Importar'
    OnClick = btnImportarClick
  end
  object btnSalvar: TSpeedButton
    Left = 1223
    Top = 96
    Width = 57
    Height = 22
    Caption = 'Salvar'
    OnClick = btnSalvarClick
  end
  object btnFechar: TSpeedButton
    Left = 1215
    Top = 619
    Width = 57
    Height = 22
    Caption = 'Fechar'
    OnClick = btnFecharClick
  end
  object lbl: TLabel
    Left = 80
    Top = 408
    Width = 37
    Height = 15
    Caption = 'codigo'
    FocusControl = dbedtcodigo
  end
  object lblRecordCount: TLabel
    Left = 8
    Top = 600
    Width = 108
    Height = 21
    Caption = 'lblRecordCount'
    Color = 3937500
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object strGridExcel: TStringGrid
    Left = 8
    Top = 8
    Width = 1201
    Height = 329
    ColCount = 13
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goAlwaysShowEditor, goFixedRowDefAlign]
    TabOrder = 0
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object dbgrdGrid: TDBGrid
    Left = 8
    Top = 360
    Width = 1201
    Height = 225
    DataSource = DMRaito.dsImportacao
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object dbedtcodigo: TDBEdit
    Left = 80
    Top = 784
    Width = 904
    Height = 23
    DataField = 'codigo'
    DataSource = ds
    TabOrder = 2
  end
  object opendialog: TOpenDialog
    Left = 896
    Top = 264
  end
  object ImportExcel: TImportExcel
    Left = 1024
    Top = 264
  end
  object ds: TDataSource
    DataSet = DMRaito.FdTbImportacao
    Left = 608
    Top = 408
  end
end

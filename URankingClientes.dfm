object FrmRankingClientes: TFrmRankingClientes
  Left = 493
  Top = 133
  BorderStyle = bsNone
  Caption = 'CURVA  A B C  - CLIENTES'
  ClientHeight = 464
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnFechar: TSpeedButton
    Left = 202
    Top = 425
    Width = 120
    Height = 28
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    ParentFont = False
    OnClick = btnFecharClick
  end
  object btnRelatorio: TSpeedButton
    Left = 346
    Top = 16
    Width = 103
    Height = 30
    Caption = '&Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentFont = False
    OnClick = btnRelatorioClick
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 59
    Width = 511
    Height = 353
    Align = alCustom
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cliente'
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 251
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrtotal'
        Title.Alignment = taCenter
        Title.Caption = 'VL.TOTAL:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'comissao'
        Title.Alignment = taCenter
        Title.Caption = 'COMISS'#195'O:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 72
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 3
    Width = 327
    Height = 52
    Caption = '  ESCOLHA UM PER'#205'ODO  '
    TabOrder = 1
    object Label1: TLabel
      Left = 102
      Top = 27
      Width = 11
      Height = 20
      Caption = #192
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnAplicar: TSpeedButton
      Left = 216
      Top = 24
      Width = 103
      Height = 23
      Hint = 'EXECUTA A PESQUISA'
      Caption = 'Aplicar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAplicarClick
    end
    object Data1: TDateTimePicker
      Left = 7
      Top = 23
      Width = 91
      Height = 24
      Date = 38894.649433588000000000
      Time = 38894.649433588000000000
      TabOrder = 0
      OnCloseUp = Data1CloseUp
    end
    object Data2: TDateTimePicker
      Left = 118
      Top = 23
      Width = 90
      Height = 24
      Date = 38894.649610451400000000
      Time = 38894.649610451400000000
      TabOrder = 1
      OnCloseUp = Data2CloseUp
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 416
    Top = 16
  end
  object Query1: TQuery
    DatabaseName = 'Raito'
    SQL.Strings = (
      
        'select cliente, sum(totalliquido)as vrtotal, sum(comissaovalor)a' +
        's comissao'
      'from pedidos'
      'where data_pedido between :VardataI and :VardataF'
      'group by cliente'
      'order by vrtotal desc')
    Left = 360
    Top = 16
    ParamData = <
      item
        DataType = ftDate
        Name = 'VardataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VardataF'
        ParamType = ptUnknown
      end>
    object Query1cliente: TStringField
      FieldName = 'cliente'
      Origin = 'RAITO."pedidos.DB".Cliente'
      Size = 80
    end
    object Query1vrtotal: TFloatField
      FieldName = 'vrtotal'
      Origin = 'RAITO."pedidos.DB".Totalliquido'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = 'R$ #,##0.00'
    end
    object Query1comissao: TFloatField
      FieldName = 'comissao'
      Origin = 'RAITO."pedidos.DB".ComissaoValor'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = 'R$ #,##0.00'
    end
  end
end

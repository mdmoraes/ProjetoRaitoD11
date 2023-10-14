object FrmRankingvendasdeProdutos: TFrmRankingvendasdeProdutos
  Left = 780
  Top = 355
  BorderStyle = bsNone
  Caption = 'CURVA  A  B  C   -  PRODUTOS'
  ClientHeight = 491
  ClientWidth = 708
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
  object brnFechar: TSpeedButton
    Left = 280
    Top = 450
    Width = 79
    Height = 24
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = brnFecharClick
  end
  object btnAplicar: TSpeedButton
    Left = 400
    Top = 18
    Width = 66
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
  object Label2: TLabel
    Left = 96
    Top = 21
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
  object Label3: TLabel
    Left = 9
    Top = 2
    Width = 68
    Height = 16
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 112
    Top = 1
    Width = 62
    Height = 16
    Caption = 'Data Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnRelatorio: TSpeedButton
    Left = 520
    Top = 12
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
  object Label1: TLabel
    Left = 201
    Top = 1
    Width = 84
    Height = 16
    Caption = 'Representada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 11
    Top = 48
    Width = 687
    Height = 393
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo:'
        Title.Color = 13434828
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsItalic]
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUPO'
        Title.Alignment = taCenter
        Title.Color = clLime
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o:'
        Title.Color = 13434828
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsItalic]
        Width = 340
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.:'
        Title.Color = 13434828
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsItalic]
        Width = 76
        Visible = True
      end>
  end
  object DataI: TDateTimePicker
    Left = 7
    Top = 19
    Width = 86
    Height = 24
    Date = 38894.649433588000000000
    Time = 38894.649433588000000000
    TabOrder = 1
  end
  object DataF: TDateTimePicker
    Left = 110
    Top = 18
    Width = 86
    Height = 24
    Date = 38894.649610451400000000
    Time = 38894.649610451400000000
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 629
    Top = 14
    Width = 9
    Height = 22
    Caption = 'Filtrar Ranking por:'
    Color = 14286847
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Visible = False
    object rdQuant: TRadioButton
      Left = 6
      Top = 20
      Width = 67
      Height = 17
      Caption = 'Quant.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = rdQuantClick
    end
    object rdLucro: TRadioButton
      Left = 79
      Top = 21
      Width = 57
      Height = 17
      Caption = 'Lucro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = rdLucroClick
    end
  end
  object dblokup1: TDBLookupComboBox
    Left = 198
    Top = 19
    Width = 198
    Height = 21
    KeyField = 'NomeCliente'
    ListField = 'NomeCliente'
    ListSource = DMRatio.DSCadRepresentada
    TabOrder = 4
  end
  object Query1: TQuery
    DatabaseName = 'Raito'
    SQL.Strings = (
      
        'SELECT A.REPRESENTADA, B.CODIGO, B.PRODUTO, B.GRUPO, SUM(B.QTD) ' +
        'AS QUANT'
      'FROM PEDIDOS A, ITENS B, CADASTROPRODUTOS C'
      
        'WHERE A.NUM_PEDIDO = B.CONTROLE AND DATA_PEDIDO BETWEEN :VARDATA' +
        'I AND :VARDATAF AND'
      'A.REPRESENTADA LIKE :VARREP'
      'GROUP BY A.REPRESENTADA, B.CODIGO, B.PRODUTO, B.GRUPO'
      'ORDER BY QUANT DESC, B.Grupo')
    Left = 455
    Top = 3
    ParamData = <
      item
        DataType = ftDate
        Name = 'VARDATAI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VARDATAF'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'VARREP'
        ParamType = ptUnknown
      end>
    object Query1CODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'RAITO."Itens.DB".Codigo'
      Size = 25
    end
    object Query1PRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'RAITO."Itens.DB".Produto'
      Size = 80
    end
    object Query1QUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'RAITO."Itens.DB".Qtd'
    end
    object Query1REPRESENTADA: TStringField
      FieldName = 'REPRESENTADA'
      Origin = 'RAITO."Pedidos.DB".Representada'
      Size = 80
    end
    object Query1GRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'RAITO."CadastroProdutos.DB".Grupo'
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 485
    Top = 2
  end
end

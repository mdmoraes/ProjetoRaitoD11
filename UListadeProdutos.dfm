object FormListadeProdutos: TFormListadeProdutos
  Left = 1168
  Top = 345
  AutoScroll = False
  Caption = 'Lista de Produtos'
  ClientHeight = 575
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object grpListadeProdutos: TGroupBox
    Left = 6
    Top = 2
    Width = 575
    Height = 549
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LabelFechar: TLabel
      Left = 220
      Top = 488
      Width = 85
      Height = 16
      Caption = 'Fechar  <Esc>'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = LabelFecharClick
    end
    object Label1: TLabel
      Left = 6
      Top = 9
      Width = 90
      Height = 16
      Caption = 'Representada:'
    end
    object btnFiltar: TSpeedButton
      Left = 421
      Top = 50
      Width = 26
      Height = 6
      Visible = False
      OnClick = btnFiltarClick
    end
    object btnCopiar: TSpeedButton
      Left = 321
      Top = 41
      Width = 83
      Height = 25
      Hint = 'COPIA OS DADOS SELECIONADOS'#13#10'PARA A TELA DE PEDIDO.'
      Caption = 'Copiar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCopiarClick
    end
    object Label2: TLabel
      Left = 6
      Top = 53
      Width = 38
      Height = 16
      Caption = 'Digite '
    end
    object Label3: TLabel
      Left = 160
      Top = 52
      Width = 113
      Height = 16
      Caption = 'Escolha o Campo: '
    end
    object Label4: TLabel
      Left = 8
      Top = 96
      Width = 41
      Height = 16
      Caption = 'Label4'
    end
    object grp1: TGroupBox
      Left = 2
      Top = 121
      Width = 483
      Height = 364
      Caption = 'Itens pertencentes a esta Representada'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 18
        Width = 479
        Height = 344
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object chk1: TCheckBox
      Left = 145
      Top = 11
      Width = 156
      Height = 10
      Caption = 'Qualquer parte:'
      Checked = True
      State = cbChecked
      TabOrder = 1
      Visible = False
    end
    object grp2: TGroupBox
      Left = 296
      Top = 9
      Width = 62
      Height = 15
      Caption = 'Filtrar por:'
      TabOrder = 2
      Visible = False
      object rbcodigo: TRadioButton
        Left = 2
        Top = 20
        Width = 69
        Height = 16
        Caption = 'C'#243'digo'
        TabOrder = 0
      end
      object rbproduto: TRadioButton
        Left = 79
        Top = 19
        Width = 76
        Height = 16
        Caption = 'Produto'
        TabOrder = 1
      end
    end
    object ComboBox1: TComboBox
      Left = 159
      Top = 68
      Width = 145
      Height = 24
      AutoDropDown = True
      Color = 14277043
      DropDownCount = 5
      ItemHeight = 16
      TabOrder = 3
    end
    object chkMarcarTodos: TCheckBox
      Left = 310
      Top = 73
      Width = 144
      Height = 17
      Caption = 'Marcar Todos'
      TabOrder = 5
      OnClick = chkMarcarTodosClick
    end
    object edtRepresentada: TEdit
      Left = 7
      Top = 28
      Width = 289
      Height = 24
      Color = clSilver
      ReadOnly = True
      TabOrder = 4
    end
    object edtFindEdit1: TJvDBFindEdit
      Left = 10
      Top = 70
      Width = 121
      Height = 24
      TabOrder = 6
      Text = 'edtFindEdit1'
    end
  end
  object qry1: TQuery
    Active = True
    AutoCalcFields = False
    CachedUpdates = True
    AutoRefresh = True
    DatabaseName = 'DMRAITO'
    SQL.Strings = (
      
        'select IdProduto as X, codigoproduto as Codigo, descricao as Pro' +
        'duto, representada, Pvenda, unidade, grupo'
      'from CadastroProdutos'
      'where Representada like :varRep'
      'order by codigoproduto')
    Left = 455
    Top = 9
    ParamData = <
      item
        DataType = ftString
        Name = 'varRep'
        ParamType = ptUnknown
      end>
    object qry1X: TIntegerField
      FieldName = 'X'
      Origin = 'RAITO."CadastroProdutos.DB".IdProduto'
    end
    object qry1Codigo: TStringField
      FieldName = 'Codigo'
      Origin = 'RAITO."CadastroProdutos.DB".CodigoProduto'
      Size = 25
    end
    object qry1Produto: TStringField
      FieldName = 'Produto'
      Origin = 'RAITO."CadastroProdutos.DB".Descricao'
      Size = 70
    end
    object qry1representada: TStringField
      FieldName = 'representada'
      Origin = 'RAITO."CadastroProdutos.DB".Representada'
      Size = 60
    end
    object qry1Pvenda: TFloatField
      FieldName = 'Pvenda'
      Origin = 'RAITO."CadastroProdutos.DB".Pvenda'
    end
    object qry1unidade: TStringField
      FieldName = 'unidade'
      Origin = 'RAITO."CadastroProdutos.DB".Unidade'
    end
    object qry1grupo: TStringField
      FieldName = 'grupo'
      Origin = 'RAITO."CadastroProdutos.DB".Grupo'
      Size = 30
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 417
    Top = 10
  end
end

object FrmPesquisarProdutos: TFrmPesquisarProdutos
  Left = 702
  Top = 276
  BorderStyle = bsNone
  Caption = 'Pesquisar Produtos'
  ClientHeight = 470
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object grp1: TGroupBox
    Left = 3
    Top = 2
    Width = 276
    Height = 53
    Caption = 'Digite as Iniciais do C'#243'digo para pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object edt1: TEdit
      Left = 9
      Top = 21
      Width = 159
      Height = 24
      TabOrder = 0
      OnChange = edt1Change
    end
  end
  object pnl1: TPanel
    Left = 3
    Top = 59
    Width = 854
    Height = 364
    TabOrder = 1
    object dbgrd1: TDBGrid
      Left = 3
      Top = 7
      Width = 838
      Height = 351
      DataSource = dsConsultaProduto
      DrawingStyle = gdsGradient
      GradientEndColor = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = dbgrd1CellClick
      OnDblClick = dbgrd1DblClick
      OnEnter = dbgrd1Enter
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'codigoproduto'
          Width = 177
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 284
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'grupo'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'unidade'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pvenda'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'marcado'
          Visible = True
        end>
    end
  end
  object btnFechar: TBitBtn
    Left = 400
    Top = 429
    Width = 74
    Height = 25
    Caption = '&Fechar'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
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
    TabOrder = 2
    TabStop = False
    OnClick = btnFecharClick
  end
  object grp2: TGroupBox
    Left = 290
    Top = 4
    Width = 224
    Height = 51
    Caption = 'Ordenar por:'
    Color = 15138790
    ParentColor = False
    TabOrder = 3
    object rbCodigo: TRadioButton
      Left = 8
      Top = 20
      Width = 76
      Height = 17
      Caption = 'C'#243'digo'
      TabOrder = 0
      OnClick = rbCodigoClick
    end
    object rbDescricao: TRadioButton
      Left = 118
      Top = 19
      Width = 76
      Height = 20
      Caption = 'Descri'#231#227'o'
      TabOrder = 1
      OnClick = rbDescricaoClick
    end
  end
  object dsConsultaProduto: TDataSource
    DataSet = DMRaito.FdTableCadastroProdutos
    Left = 643
    Top = 339
  end
end

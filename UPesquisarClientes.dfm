object FrmPesquisarClientes: TFrmPesquisarClientes
  Left = 96
  Top = 117
  BorderStyle = bsNone
  Caption = 'Pesquisar Clientes'
  ClientHeight = 412
  ClientWidth = 482
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
    Width = 318
    Height = 53
    Caption = 'Digite as Iniciais do Nome para pesquisa'
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
      Width = 248
      Height = 24
      TabOrder = 0
      OnChange = edt1Change
    end
  end
  object pnl1: TPanel
    Left = 3
    Top = 59
    Width = 479
    Height = 296
    TabOrder = 1
    object dbgrd1: TDBGrid
      Left = 5
      Top = 6
      Width = 467
      Height = 282
      DataSource = DMRaito.dsCliente
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
          FieldName = 'nomecliente'
          Visible = True
        end>
    end
  end
  object btnFechar: TBitBtn
    Left = 201
    Top = 362
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
end

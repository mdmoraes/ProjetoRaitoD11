object frmPedido: TfrmPedido
  Left = 0
  Top = 0
  Caption = 'Emiss'#227'o de Pedido'
  ClientHeight = 662
  ClientWidth = 1288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object lbl8: TLabel
    Left = 1057
    Top = 608
    Width = 102
    Height = 17
    Caption = 'Total do Pedido:'
    FocusControl = dbedttotaldopedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object panelConfirma: TPanel
    Left = 243
    Top = 615
    Width = 471
    Height = 34
    TabOrder = 1
    object btnCancelar: TSpeedButton
      Left = 42
      Top = 5
      Width = 73
      Height = 25
      Caption = 'Cancelar'
      Glyph.Data = {
        BE060000424DBE06000000000000360400002800000024000000120000000100
        0800000000008802000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C0007D654F00B199
        8300000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D9CCC100A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303F8F80303030303030303030303030303030303FF03030303030303030303
        0303030303F90101F80303030303F9F80303030303030303F8F8FF0303030303
        03FF03030303030303F9010101F8030303F90101F8030303030303F8FF03F8FF
        030303FFF8F8FF030303030303F901010101F803F901010101F80303030303F8
        FF0303F8FF03FFF80303F8FF030303030303F901010101F80101010101F80303
        030303F8FF030303F8FFF803030303F8FF030303030303F90101010101010101
        F803030303030303F8FF030303F803030303FFF80303030303030303F9010101
        010101F8030303030303030303F8FF030303030303FFF8030303030303030303
        030101010101F80303030303030303030303F8FF0303030303F8030303030303
        0303030303F901010101F8030303030303030303030303F8FF030303F8030303
        0303030303030303F90101010101F8030303030303030303030303F803030303
        F8FF030303030303030303F9010101F8010101F803030303030303030303F803
        03030303F8FF0303030303030303F9010101F803F9010101F803030303030303
        03F8030303F8FF0303F8FF03030303030303F90101F8030303F9010101F80303
        03030303F8FF0303F803F8FF0303F8FF03030303030303F9010303030303F901
        0101030303030303F8FFFFF8030303F8FF0303F8FF0303030303030303030303
        030303F901F903030303030303F8FC0303030303F8FFFFFFF803030303030303
        03030303030303030303030303030303030303030303030303F8F8F803030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303}
      NumGlyphs = 2
      OnClick = btnCancelarClick
    end
    object btnGravar: TSpeedButton
      Left = 359
      Top = 6
      Width = 73
      Height = 25
      Caption = 'Gravar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
        FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
        FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
        FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
        0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
        9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
        9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
        99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
        93337777FF777777733370000000073333333777777773333333}
      NumGlyphs = 2
      OnClick = btnGravarClick
    end
  end
  object panelNav: TPanel
    Left = 48
    Top = 615
    Width = 873
    Height = 33
    TabOrder = 0
    object btnNovo: TSpeedButton
      Left = 171
      Top = 4
      Width = 73
      Height = 25
      Caption = 'Novo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777777777777777777777770000007777777777FFFFFF77777770000AAAA0777
        7777FFFFAAAAF77777770770000007777777F77FFFFFF7777777077777777777
        7777F7777777777777770777777777779777F77777777777F777077000000779
        7777F77FFFFFF77F77770000AAAA07999999FFFFAAAAF7FFFFFF077000000779
        7777F77FFFFFF77F77770777777777779777F77777777777F777077777777777
        7777F7777777777777770770000007777777F77FFFFFF77777770000AAAA0777
        7777FFFFAAAAF77777770770000007777777F77FFFFFF7777777077777777777
        7777F77777777777777777777777777777777777777777777777}
      NumGlyphs = 2
      OnClick = btnNovoClick
    end
    object btnAlterar: TSpeedButton
      Left = 247
      Top = 4
      Width = 73
      Height = 25
      Caption = 'Alterar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      OnClick = btnAlterarClick
    end
    object btnExcluir: TSpeedButton
      Left = 324
      Top = 3
      Width = 73
      Height = 25
      Caption = 'Excluir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = btnExcluirClick
    end
    object btnPesquisa: TSpeedButton
      Left = 417
      Top = 3
      Width = 87
      Height = 25
      Hint = 'Pesquisa Clientes'
      Caption = 'Pesquisa'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333300
        3333333333333333FF333333333330EC033333333333333FE7F3330000000ECC
        00333333FFFFFFFE77FF33033330ECC330333333F8888FE7788F330FFF0ECC3F
        30333333F333FE77838F3300003CC3FF30333333FFFF8778338F303E30003FFF
        3033333F8E8FFF83338F0FE3E303FFFF303333F3E8E8F833338F0EFE3E03FFFF
        303333FE3E8EF833338F0FEFE303FFFF303333F3E3E8F833338F30FEF03FFFFF
        3033333F3E3F8333338F330003FFFFFF30333333FFF83333338F330FFFFFFF00
        00333333F3333333FFFF330FFFFFFF3F03333333F333333383F3330FFFFFFF30
        33333333F33333338F3333000000000333333333FFFFFFFFF333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnPesquisaClick
    end
    object btnImprimir: TSpeedButton
      Left = 584
      Top = 5
      Width = 97
      Height = 20
      Hint = 'Gerar relat'#243'rio para Impressora ou para .PDF'
      Caption = 'Imprimir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnImprimirClick
    end
    object btn1: TBitBtn
      Left = 760
      Top = 3
      Width = 87
      Height = 23
      Caption = '&Fechar'
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
      TabOrder = 0
      TabStop = False
      OnClick = btn1Click
    end
    object dbnv1: TDBNavigator
      Left = 21
      Top = 8
      Width = 144
      Height = 18
      DataSource = DMRaito.dsPedidos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro'
        'Anterior'
        'Pr'#243'ximo'
        #218'ltimo')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object panelTela: TPanel
    Left = 8
    Top = 14
    Width = 1272
    Height = 593
    Enabled = False
    TabOrder = 2
    object lbl: TLabel
      Left = 12
      Top = 16
      Width = 40
      Height = 15
      Caption = 'N'#186' Ped.'
      FocusControl = dbedtnum_pedido
    end
    object lbl1: TLabel
      Left = 704
      Top = 16
      Width = 65
      Height = 15
      Caption = 'data_pedido'
      FocusControl = dbedtdata_pedido
    end
    object lbl2: TLabel
      Left = 64
      Top = 60
      Width = 68
      Height = 15
      Caption = 'representada'
    end
    object lbl3: TLabel
      Left = 63
      Top = 16
      Width = 35
      Height = 15
      Caption = 'cliente'
    end
    object lbl4: TLabel
      Left = 63
      Top = 105
      Width = 78
      Height = 15
      Caption = 'transportadora'
    end
    object btn2: TSpeedButton
      Left = 611
      Top = 34
      Width = 23
      Height = 22
    end
    object btnNovoCliente: TSpeedButton
      Left = 651
      Top = 32
      Width = 23
      Height = 25
      Hint = 'Cadastrar novo Cliente.'
      CustomHint = BalloonHint1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777777777777777777777770000007777777777FFFFFF77777770000AAAA0777
        7777FFFFAAAAF77777770770000007777777F77FFFFFF7777777077777777777
        7777F7777777777777770777777777779777F77777777777F777077000000779
        7777F77FFFFFF77F77770000AAAA07999999FFFFAAAAF7FFFFFF077000000779
        7777F77FFFFFF77F77770777777777779777F77777777777F777077777777777
        7777F7777777777777770770000007777777F77FFFFFF77777770000AAAA0777
        7777FFFFAAAAF77777770770000007777777F77FFFFFF7777777077777777777
        7777F77777777777777777777777777777777777777777777777}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNovoClienteClick
    end
    object btnNovaRepresentada: TSpeedButton
      Left = 535
      Top = 74
      Width = 23
      Height = 25
      Hint = 'Cadastrar Nova Representada.'
      CustomHint = BalloonHint1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777777777777777777777770000007777777777FFFFFF77777770000AAAA0777
        7777FFFFAAAAF77777770770000007777777F77FFFFFF7777777077777777777
        7777F7777777777777770777777777779777F77777777777F777077000000779
        7777F77FFFFFF77F77770000AAAA07999999FFFFAAAAF7FFFFFF077000000779
        7777F77FFFFFF77F77770777777777779777F77777777777F777077777777777
        7777F7777777777777770770000007777777F77FFFFFF77777770000AAAA0777
        7777FFFFAAAAF77777770770000007777777F77FFFFFF7777777077777777777
        7777F77777777777777777777777777777777777777777777777}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNovoClick
    end
    object btnNovaTransportadora: TSpeedButton
      Left = 535
      Top = 119
      Width = 23
      Height = 25
      Hint = 'Cadastrar nova Transportadora.'
      CustomHint = BalloonHint1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777777777777777777777770000007777777777FFFFFF77777770000AAAA0777
        7777FFFFAAAAF77777770770000007777777F77FFFFFF7777777077777777777
        7777F7777777777777770777777777779777F77777777777F777077000000779
        7777F77FFFFFF77F77770000AAAA07999999FFFFAAAAF7FFFFFF077000000779
        7777F77FFFFFF77F77770777777777779777F77777777777F777077777777777
        7777F7777777777777770770000007777777F77FFFFFF77777770000AAAA0777
        7777FFFFAAAAF77777770770000007777777F77FFFFFF7777777077777777777
        7777F77777777777777777777777777777777777777777777777}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object lbl9: TLabel
      Left = 9
      Top = 152
      Width = 85
      Height = 15
      Caption = 'condicoespagto'
      FocusControl = dbedtcondicoespagto1
    end
    object lbl10: TLabel
      Left = 153
      Top = 152
      Width = 91
      Height = 15
      Caption = 'comis.percentual'
      FocusControl = dbedtcomissaopercentual
    end
    object lbl11: TLabel
      Left = 252
      Top = 152
      Width = 76
      Height = 15
      Caption = 'comissaovalor'
      FocusControl = dbedtcomissaovalor1
    end
    object lbl12: TLabel
      Left = 9
      Top = 208
      Width = 19
      Height = 15
      Caption = 'obs'
    end
    object lbl13: TLabel
      Left = 250
      Top = 208
      Width = 47
      Height = 15
      Caption = 'lembrete'
    end
    object SpeedButton1: TSpeedButton
      Left = 561
      Top = 30
      Width = 77
      Height = 25
      Hint = 'Pesquisa Clientes'
      Caption = 'Pesquisa'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333300
        3333333333333333FF333333333330EC033333333333333FE7F3330000000ECC
        00333333FFFFFFFE77FF33033330ECC330333333F8888FE7788F330FFF0ECC3F
        30333333F333FE77838F3300003CC3FF30333333FFFF8778338F303E30003FFF
        3033333F8E8FFF83338F0FE3E303FFFF303333F3E8E8F833338F0EFE3E03FFFF
        303333FE3E8EF833338F0FEFE303FFFF303333F3E3E8F833338F30FEF03FFFFF
        3033333F3E3F8333338F330003FFFFFF30333333FFF83333338F330FFFFFFF00
        00333333F3333333FFFF330FFFFFFF3F03333333F333333383F3330FFFFFFF30
        33333333F33333338F3333000000000333333333FFFFFFFFF333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object dbedtnum_pedido: TDBEdit
      Left = 10
      Top = 32
      Width = 46
      Height = 23
      DataField = 'PedidoId'
      DataSource = DMRaito.dsPedidos
      TabOrder = 0
    end
    object dbedtdata_pedido: TDBEdit
      Left = 704
      Top = 32
      Width = 83
      Height = 23
      TabStop = False
      DataField = 'data_pedido'
      DataSource = DMRaito.dsPedidos
      ReadOnly = True
      TabOrder = 1
    end
    object dbrgrptipopedido: TDBRadioGroup
      Left = 800
      Top = 16
      Width = 185
      Height = 53
      Hint = 'Definir Tipo de Pedido: Apenas Or'#231'amento ou Venda Efetiva.'
      CustomHint = BalloonHint1
      Caption = 'Tipo de Pedido: '
      Columns = 2
      DataField = 'TipoPedido'
      DataSource = DMRaito.dsPedidos
      Items.Strings = (
        'Or'#231'amento'
        'Venda')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Values.Strings = (
        'Or'#231'amento'
        'Venda')
    end
    object dbedtcondicoespagto1: TDBEdit
      Left = 9
      Top = 173
      Width = 144
      Height = 23
      DataField = 'condicoespagto'
      DataSource = DMRaito.dsPedidos
      TabOrder = 3
    end
    object dbedtcomissaopercentual: TDBEdit
      Left = 159
      Top = 173
      Width = 58
      Height = 23
      DataField = 'Comissao'
      DataSource = DMRaito.dsPedidos
      TabOrder = 4
    end
    object dbedtcomissaovalor1: TDBEdit
      Left = 250
      Top = 173
      Width = 97
      Height = 23
      DataField = 'comissaovalor'
      DataSource = DMRaito.dsPedidos
      TabOrder = 5
    end
    object lokupcliente1: TDBLookupComboBox
      Left = 63
      Top = 78
      Width = 466
      Height = 21
      Ctl3D = False
      DataField = 'Representada'
      DataSource = DMRaito.dsPedidos
      DropDownRows = 10
      KeyField = 'nomecliente'
      ListField = 'nomecliente'
      ListSource = DMRaito.dsRepresentada
      ParentCtl3D = False
      TabOrder = 6
      OnClick = lokupclienteClick
    end
    object lokuprepresentada: TDBLookupComboBox
      Left = 63
      Top = 123
      Width = 466
      Height = 21
      Ctl3D = False
      DataField = 'transportadora'
      DataSource = DMRaito.dsPedidos
      DropDownRows = 10
      KeyField = 'NomeTransportadora'
      ListField = 'NomeTransportadora'
      ListSource = DMRaito.dsTableTransportadora
      ParentCtl3D = False
      TabOrder = 7
      OnClick = lokupclienteClick
    end
    object dbmmoobs: TDBMemo
      Left = 9
      Top = 229
      Width = 185
      Height = 68
      DataField = 'Obs'
      DataSource = DMRaito.dsPedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 8
      WantTabs = True
    end
    object dbmmoobs1: TDBMemo
      Left = 250
      Top = 229
      Width = 185
      Height = 68
      DataField = 'Lembrete'
      DataSource = DMRaito.dsPedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 9
      WantTabs = True
    end
    object dbgrdItens: TDBGrid
      Left = 0
      Top = 320
      Width = 1233
      Height = 217
      Color = clInactiveCaption
      DataSource = DMRaito.dsItens
      FixedColor = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrdItensDrawColumnCell
      OnEditButtonClick = dbgrdItensEditButtonClick
      OnKeyDown = dbgrdItensKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'ItemId'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'pedidos_PedidoId'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'cod_produto'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Des_Produto'
          Title.Alignment = taCenter
          Title.Caption = 'Desc. Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 352
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'grupo'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 217
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'un'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtd'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vrunit'
          Title.Alignment = taCenter
          Title.Caption = 'Vr. Unit'
          Title.Color = clHighlightText
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p1'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p2'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p3'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'liq1'
          Title.Alignment = taCenter
          Title.Caption = 'Vr.Desc.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'icms'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9109504
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Total Itens'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 109
          Visible = True
        end>
    end
    object DBEditCliente: TDBEdit
      Left = 63
      Top = 32
      Width = 495
      Height = 23
      DataField = 'cliente'
      DataSource = DMRaito.dsPedidos
      TabOrder = 11
      OnExit = DBEditClienteExit
    end
    object DBEditIdCliente: TDBEdit
      Left = 728
      Top = 136
      Width = 89
      Height = 23
      DataField = 'cadastroclientes_idcliente'
      DataSource = DMRaito.dsPedidos
      TabOrder = 12
    end
  end
  object dbedttotaldopedido: TDBEdit
    Left = 1057
    Top = 626
    Width = 167
    Height = 29
    BiDiMode = bdRightToLeft
    DataField = 'TOTALBRUTO'
    DataSource = DMRaito.dsPedidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object BalloonHint1: TBalloonHint
    Left = 1152
    Top = 160
  end
end

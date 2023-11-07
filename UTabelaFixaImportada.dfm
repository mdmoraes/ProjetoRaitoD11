object frmTabelaFixaImportada: TfrmTabelaFixaImportada
  Left = 0
  Top = 0
  Caption = 'Tabela Fixa Importada'
  ClientHeight = 662
  ClientWidth = 1188
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lblRecordCount: TLabel
    Left = 8
    Top = 623
    Width = 113
    Height = 21
    Caption = 'lblRecordCount'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2763429
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object btnMontarLista: TSpeedButton
    Left = 304
    Top = 622
    Width = 137
    Height = 22
    Hint = 'Monta um lista de itens solicitada pelo Cliente. '
    CustomHint = ballonHint
    Caption = 'Montar Lista de Itens'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333333444444444333333388888888833333334FFFF
      FFF4333333387777777833333334F00000F4333333387000007830000004FFFF
      FFF43FFFFFF87777777830FFFFF4F00000F43F7777787000007830F00004FFFF
      FFF43F7FFFF87777777830FFFFF4F00F44443F7777787007888830F00004FFFF
      4F433F7FFFF87777878330FFFFF4FFFF44333F7777787777883330F00F044444
      43333F7FF7F88888833330FFFF0F033333333F7777F7F333333330FFFF003333
      33333F7777FF3333333330000003333333333FFFFFF333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btnMontarListaClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1188
    Height = 41
    Align = alTop
    Caption = 'DATA DA ATUALIZA'#199#195'O:'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1184
    object DBTextDataAtualizacao: TDBText
      Left = 702
      Top = 10
      Width = 65
      Height = 17
      DataField = 'daterecebida'
      DataSource = DMRaito.dsImportacao
    end
  end
  object gridTabelaFixa: TJvDBUltimGrid
    Left = 8
    Top = 136
    Width = 1180
    Height = 437
    DataSource = dsQueryFiltro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    MultiSelect = True
    TitleButtons = True
    AlternateRowColor = 12903679
    SelectColumn = scGrid
    TitleArrow = True
    ShowCellHint = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 19
    TitleRowHeight = 19
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Width = 322
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'grupo'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'isolacao'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'classe'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'temperatura'
        Title.Caption = 'temp.'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kg_km'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icms18'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icms12'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icms7'
        Width = 51
        Visible = True
      end>
  end
  object btnFechar: TButton
    Left = 1105
    Top = 619
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Default = True
    TabOrder = 2
    OnClick = btnFecharClick
  end
  object GroupBoxPesquisa: TGroupBox
    Left = 8
    Top = 47
    Width = 353
    Height = 82
    Caption = ' Pesquisar  '
    Color = 13959039
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 278
      Top = 35
      Width = 48
      Height = 22
      Hint = 'Limpa pesquisa'
      CustomHint = ballonHint
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object rbCodigo: TRadioButton
      Left = 8
      Top = 21
      Width = 85
      Height = 17
      Caption = 'Por C'#243'digo'
      TabOrder = 0
      OnClick = rbCodigoClick
    end
    object rbDescricao: TRadioButton
      Left = 8
      Top = 52
      Width = 97
      Height = 17
      Caption = 'Por Descri'#231#227'o'
      TabOrder = 1
      OnClick = rbDescricaoClick
    end
    object edPesquisar: TEdit
      Left = 108
      Top = 34
      Width = 170
      Height = 23
      TabOrder = 2
      OnChange = edPesquisarChange
    end
  end
  object GroupBoxFiltro: TGroupBox
    Left = 367
    Top = 42
    Width = 611
    Height = 88
    Caption = 'Filtrar'
    Color = 13959039
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    object Label1: TLabel
      Left = 3
      Top = 40
      Width = 17
      Height = 15
      Caption = 'D'#234':'
    end
    object Label2: TLabel
      Left = 137
      Top = 40
      Width = 21
      Height = 15
      Caption = 'At'#233':'
    end
    object Label3: TLabel
      Left = 335
      Top = 40
      Width = 131
      Height = 15
      Caption = 'Digite parte da Descri'#231#227'o'
    end
    object btnFiltroCodigo: TSpeedButton
      Left = 271
      Top = 57
      Width = 23
      Height = 22
      Hint = 'Executa o filtro por C'#243'digo'
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
    end
    object btnFiltroporCodigo: TSpeedButton
      Left = 266
      Top = 54
      Width = 32
      Height = 27
      Hint = 'Executa o Filtro por C'#243'digo'
      CustomHint = ballonHint
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000FFFF00808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000FFFF00808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000FFFF00808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0000000FFFFFFC0C0C0808000808000000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0000000FFFFFFFFFF00FFFF00C0C0C0808000808000000000C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
        00FFFFFFFFFF00FFFFFFC0C0C0FFFF00C0C0C0808000808000000000C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFF
        FFFFFF00FFFFFFFFFF00FFFF00C0C0C0808000C0C0C0808000808000000000C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFC0C0C0FFFF00C0C0C0808000C0C0C080800080800000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFF00C0C0C0808000C0C0C0808000C0C0C080800080
        8000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFC0C0C0FFFF00C0C0C0808000C0C0C0808000C0C0C080
        8000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFF00FFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000080
        8000808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C00000000000000000000000000000008080808080
        80808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000080808000000000
        0000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0000000000000808000808000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF808080808080808080808080FFFFFF000000C0C0C000000080
        8000808000808000808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C00000008080008080008080008080000000008080808080808080
        80808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000808080C0C0C000
        0000808000808000808000808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000808000808000808000808000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF808080808080808080808080FFFFFF000000808080C0C0C080808000
        0000808000808000808000808000808000808000000000C0C0C0C0C0C0C0C0C0
        C0C0C00000008080008080008080008080000000008080808080808080808080
        80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0808080C0C0C080
        8080000000808000808000808000808000808000000000C0C0C0C0C0C0C0C0C0
        C0C0C0000000808000808000808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF808080808080808080808080808080FFFFFF000000C0C0C0C0C0C0808080C0
        C0C0000000808000808000808000808000808000000000C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000000808000808000000000808080808080808080808080FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFC0C0C0C0C0C080
        8080C0C0C0000000808000808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
        80808080808080808080808080FFFFFF000000FFFFFFC0C0C0FFFFFF808080C0
        C0C0808080000000808000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0000000808080808080808080808080FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0FFFFFFC0C0C0C0C0C080
        8080C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080808080
        80808080808080808080FFFFFF000000000000FFFFFFC0C0C0FFFFFFC0C0C0C0
        C0C0808080C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0000000808080808080808080808080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0
        C0C0C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000000000000000000000000000FFFFFFFFFFFFC0C0C0FFFFFFC0C0C0FF
        FFFFC0C0C0C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000000FFFFFF000000000000000000000000000000000000C0C0
        C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFF00
        0000000000000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000000000000808080808080C0C0C0808080C0C0C0808080C0C0
        C0FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FF
        FFFFFFFFFFFFFFFF000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000808080808080808080C0C0C0808080C0C0C0808080C0C0C0C0C0
        C0C0C0C0000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000808080808080808080808080C0C0C0808080C0C0C0C0C0C0C0C0
        C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000000000000808080C0C0C0808080C0C0C0808080C0C0C0FFFF
        FFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0808080C0C0C0C0C0C0C0C0
        C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0FFFF
        FFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFF00000000000000000000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000
        00000000000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnFiltroporCodigoClick
    end
    object btnFiltroPorDescricao: TSpeedButton
      Left = 478
      Top = 57
      Width = 32
      Height = 27
      Hint = 'Executa o Filtro por Descri'#231#227'o'
      CustomHint = ballonHint
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000FFFF00808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000FFFF00808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000FFFF00808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0000000FFFFFFC0C0C0808000808000000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0000000FFFFFFFFFF00FFFF00C0C0C0808000808000000000C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
        00FFFFFFFFFF00FFFFFFC0C0C0FFFF00C0C0C0808000808000000000C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFF
        FFFFFF00FFFFFFFFFF00FFFF00C0C0C0808000C0C0C0808000808000000000C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFC0C0C0FFFF00C0C0C0808000C0C0C080800080800000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFF00FFFF
        FFFFFF00FFFFFFFFFF00FFFF00C0C0C0808000C0C0C0808000C0C0C080800080
        8000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFC0C0C0FFFF00C0C0C0808000C0C0C0808000C0C0C080
        8000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFF00FFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000080
        8000808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C00000000000000000000000000000008080808080
        80808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000080808000000000
        0000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0000000000000808000808000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF808080808080808080808080FFFFFF000000C0C0C000000080
        8000808000808000808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C00000008080008080008080008080000000008080808080808080
        80808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000808080C0C0C000
        0000808000808000808000808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000808000808000808000808000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF808080808080808080808080FFFFFF000000808080C0C0C080808000
        0000808000808000808000808000808000808000000000C0C0C0C0C0C0C0C0C0
        C0C0C00000008080008080008080008080000000008080808080808080808080
        80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0808080C0C0C080
        8080000000808000808000808000808000808000000000C0C0C0C0C0C0C0C0C0
        C0C0C0000000808000808000808000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF808080808080808080808080808080FFFFFF000000C0C0C0C0C0C0808080C0
        C0C0000000808000808000808000808000808000000000C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000000808000808000000000808080808080808080808080FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFC0C0C0C0C0C080
        8080C0C0C0000000808000808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
        80808080808080808080808080FFFFFF000000FFFFFFC0C0C0FFFFFF808080C0
        C0C0808080000000808000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0000000808080808080808080808080FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0FFFFFFC0C0C0C0C0C080
        8080C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080808080
        80808080808080808080FFFFFF000000000000FFFFFFC0C0C0FFFFFFC0C0C0C0
        C0C0808080C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0000000808080808080808080808080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0
        C0C0C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000000000000000000000000000FFFFFFFFFFFFC0C0C0FFFFFFC0C0C0FF
        FFFFC0C0C0C0C0C0808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000000FFFFFF000000000000000000000000000000000000C0C0
        C0C0C0C0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFF00
        0000000000000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000000000000808080808080C0C0C0808080C0C0C0808080C0C0
        C0FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FF
        FFFFFFFFFFFFFFFF000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000808080808080808080C0C0C0808080C0C0C0808080C0C0C0C0C0
        C0C0C0C0000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000808080808080808080808080C0C0C0808080C0C0C0C0C0C0C0C0
        C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0000000000000808080C0C0C0808080C0C0C0808080C0C0C0FFFF
        FFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0808080C0C0C0C0C0C0C0C0
        C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C0FFFF
        FFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFFFFFFF00000000000000000000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000
        00000000000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnFiltroPorDescricaoClick
    end
    object btnlimparFiltro1: TSpeedButton
      Left = 303
      Top = 56
      Width = 23
      Height = 22
      Caption = 'X'
      OnClick = btnlimparFiltro1Click
    end
    object Label4: TLabel
      Left = 3
      Top = 16
      Width = 71
      Height = 17
      Caption = 'Por c'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 335
      Top = 16
      Width = 88
      Height = 17
      Caption = 'Por Descri'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 3
      Top = 59
      Width = 126
      Height = 23
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 137
      Top = 59
      Width = 126
      Height = 23
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 335
      Top = 59
      Width = 140
      Height = 23
      TabOrder = 2
    end
  end
  object pnlGridItens: TPanel
    Left = 502
    Top = 81
    Width = 667
    Height = 495
    TabOrder = 5
    Visible = False
    object Label6: TLabel
      Left = 16
      Top = 1
      Width = 302
      Height = 17
      Caption = 'Lista de itens da Tabela Fixa Solicitadas pelo Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnImprimir: TSpeedButton
      Left = 520
      Top = 10
      Width = 119
      Height = 26
      Hint = 'Imprimir a lista e gerar relat'#243'rio em .PDF'
      CustomHint = ballonHint
      Caption = 'Imprimir Lista'
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
    object Label7: TLabel
      Left = 16
      Top = 32
      Width = 43
      Height = 15
      Caption = 'Cliente: '
    end
    object btnBuscarCliente: TSpeedButton
      Left = 418
      Top = 28
      Width = 29
      Height = 24
      Hint = 'Buscar Cliente'
      CustomHint = ballonHint
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
      OnClick = btnBuscarClienteClick
    end
    object Label8: TLabel
      Left = 19
      Top = 64
      Width = 107
      Height = 15
      Caption = 'Data da Atualiza'#231#227'o:'
    end
    object gridItensCopiados: TJvDBGrid
      Left = 16
      Top = 96
      Width = 633
      Height = 341
      DataSource = dsmemdata
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      AutoSizeColumns = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <
        item
          FieldName = 'codigo'
          FitCell = fcCellSize
          LeaveOnEnterKey = True
          LeaveOnUpDownKey = True
        end
        item
          FieldName = 'descricao'
          FitCell = fcCellSize
          LeaveOnEnterKey = True
          LeaveOnUpDownKey = True
        end
        item
          FieldName = 'grupo'
          FitCell = fcCellSize
          LeaveOnEnterKey = True
          LeaveOnUpDownKey = True
        end>
      RowsHeight = 17
      TitleRowHeight = 19
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'grupo'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'isolacao'
          Title.Caption = 'Isol.'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'classe'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'temperatura'
          Title.Caption = 'Temp.'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kg_km'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'icms18'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'icms12'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'icms7'
          Width = 69
          Visible = True
        end>
    end
    object btnFecharGradeItens: TButton
      Left = 568
      Top = 448
      Width = 75
      Height = 25
      Caption = '&Fechar'
      Default = True
      TabOrder = 1
      OnClick = btnFecharGradeItensClick
    end
    object btnCopiarItens: TButton
      Left = 16
      Top = 448
      Width = 75
      Height = 25
      Hint = 'Copia os Itens do Filtro'
      CustomHint = ballonHint
      Caption = 'Copiar itens'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnCopiarItensClick
    end
    object edCliente: TEdit
      Left = 63
      Top = 29
      Width = 353
      Height = 23
      TabOrder = 3
      Text = 'edCliente'
    end
  end
  object dsQueryFiltro: TDataSource
    DataSet = FDQueryFiltro
    Left = 248
    Top = 352
  end
  object FDQueryFiltro: TFDQuery
    Active = True
    Indexes = <
      item
        Active = True
        Name = 'idxCodigo'
        Fields = 'codigo'
        Distinct = True
      end
      item
        Active = True
        Name = 'idxDescricao'
        Fields = 'descricao'
      end>
    Connection = DMRaito.FDConnection1
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    SQL.Strings = (
      'SELECT * FROM dbratio.tbimportacao'
      
        'WHERE CODIGO between :CODIGO1 AND :CODIGO2 OR DESCRICAO LIKE :DE' +
        'SCRICAO')
    Left = 256
    Top = 280
    ParamData = <
      item
        Name = 'CODIGO1'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'CODIGO2'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
    object FDQueryFiltrocodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 60
    end
    object FDQueryFiltrodescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object FDQueryFiltrogrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 60
    end
    object FDQueryFiltroisolacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'isolacao'
      Origin = 'isolacao'
      Size = 30
    end
    object FDQueryFiltroclasse: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'classe'
      Origin = 'classe'
      Size = 30
    end
    object FDQueryFiltrotemperatura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'temperatura'
      Origin = 'temperatura'
    end
    object FDQueryFiltrokg_km: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'kg_km'
      Origin = 'kg_km'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
    end
    object FDQueryFiltroicms18: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms18'
      Origin = 'icms18'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDQueryFiltroicms12: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms12'
      Origin = 'icms12'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDQueryFiltroicms7: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms7'
      Origin = 'icms7'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object ballonHint: TBalloonHint
    Left = 288
    Top = 16
  end
  object memdata: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'grupo'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'isolacao'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'classe'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'temperatura'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'kg_km'
        DataType = ftFloat
      end
      item
        Name = 'icms18'
        DataType = ftFloat
      end
      item
        Name = 'icms12'
        DataType = ftFloat
      end
      item
        Name = 'icms7'
        DataType = ftFloat
      end
      item
        Name = 'C67F70Z90'
        DataType = ftSmallint
      end>
    DataSet = FDQueryFiltro
    LoadRecords = True
    ApplyMode = amAppend
    Left = 694
    Top = 274
    object memdatacodigo: TStringField
      FieldName = 'codigo'
      Size = 60
    end
    object memdatadescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object memdatagrupo: TStringField
      FieldName = 'grupo'
      Size = 60
    end
    object memdataisolacao: TStringField
      FieldName = 'isolacao'
      Size = 30
    end
    object memdataclasse: TStringField
      FieldName = 'classe'
      Size = 30
    end
    object memdatatemperatura: TStringField
      FieldName = 'temperatura'
    end
    object memdatakg_km: TFloatField
      FieldName = 'kg_km'
    end
    object memdataicms18: TFloatField
      FieldName = 'icms18'
    end
    object memdataicms12: TFloatField
      FieldName = 'icms12'
    end
    object memdataicms7: TFloatField
      FieldName = 'icms7'
    end
  end
  object dsmemdata: TDataSource
    DataSet = memdata
    Left = 822
    Top = 274
  end
end

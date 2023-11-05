object frmBuscarProdutoParaPedido: TfrmBuscarProdutoParaPedido
  Left = 0
  Top = 0
  Caption = 'Buscar Produto para emiss'#227'o de Pedido'
  ClientHeight = 612
  ClientWidth = 1188
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object JvDBGrid1: TJvDBGrid
    Left = 8
    Top = 99
    Width = 1172
    Height = 454
    DataSource = DMRaito.dsImportacao
    DrawingStyle = gdsGradient
    GradientEndColor = clMoneyGreen
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = JvDBGrid1DblClick
    AlternateRowColor = 13959039
    AlternateRowFontColor = clBlue
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'grupo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'norma'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'isolacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cobertura'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'classe'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'blindagem'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'temperatura'
        Title.Caption = 'temp.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'customp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kg_km'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icms18'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icms12'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icms7'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'daterecebida'
        Visible = False
      end>
  end
  object GroupBox1: TGroupBox
    Left = 995
    Top = 8
    Width = 185
    Height = 57
    Caption = 'Escolha o ICMS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object rb18: TRadioButton
      Left = 8
      Top = 24
      Width = 41
      Height = 17
      Caption = '18'
      TabOrder = 0
    end
    object rb12: TRadioButton
      Left = 69
      Top = 24
      Width = 41
      Height = 17
      Caption = '12'
      TabOrder = 1
    end
    object rb7: TRadioButton
      Left = 130
      Top = 24
      Width = 39
      Height = 17
      Caption = '7'
      TabOrder = 2
    end
  end
  object GroupBoxPesquisa: TGroupBox
    Left = 8
    Top = 8
    Width = 353
    Height = 82
    Caption = ' Pesquisar  '
    Color = 13959039
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 282
      Top = 35
      Width = 42
      Height = 22
      Hint = 'Limpa pesquisa'
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
  object btnFechar: TButton
    Left = 544
    Top = 571
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Default = True
    TabOrder = 3
    OnClick = btnFecharClick
  end
end

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
    Left = 0
    Top = 8
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
      GradientEndColor = clBlack
      GradientStartColor = clSilver
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgrd1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'idcliente'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nomecliente'
          Visible = True
        end>
    end
  end
  object ButtonFechar: TButton
    Left = 198
    Top = 371
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Default = True
    TabOrder = 2
    OnClick = ButtonFecharClick
  end
end

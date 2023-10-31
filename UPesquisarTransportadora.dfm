object frmPesquisarTransportadora: TfrmPesquisarTransportadora
  Left = 0
  Top = 0
  Caption = 'Pesquisar Transportadora'
  ClientHeight = 415
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
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
      Left = 3
      Top = 26
      Width = 248
      Height = 24
      TabOrder = 0
      OnChange = edt1Change
    end
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 71
    Width = 467
    Height = 282
    DataSource = DMRaito.dsTableTransportadora
    GradientEndColor = clBlack
    GradientStartColor = clSilver
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeTransportadora'
        Visible = True
      end>
  end
  object BtnFechar: TButton
    Left = 216
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Default = True
    TabOrder = 2
    OnClick = BtnFecharClick
  end
end

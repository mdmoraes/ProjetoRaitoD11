object FormPesquisaGrupo: TFormPesquisaGrupo
  Left = 1179
  Top = 427
  BorderStyle = bsNone
  Caption = 'Pesquisa Grupo'
  ClientHeight = 326
  ClientWidth = 359
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
  object lbl1: TLabel
    Left = 4
    Top = 1
    Width = 115
    Height = 13
    Caption = 'Digite o nome do Grupo:'
  end
  object dbgrd1: TDBGrid
    Left = 4
    Top = 42
    Width = 329
    Height = 221
    DataSource = DMRatio.dsDSGrupo
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
        FieldName = 'Grupo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object edt1: TEdit
    Left = 4
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = edt1Change
  end
  object btnFechar: TBitBtn
    Left = 124
    Top = 269
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = btnFecharClick
  end
end

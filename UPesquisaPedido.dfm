object FrmPesquisaPedido: TFrmPesquisaPedido
  Left = 749
  Top = 277
  BorderStyle = bsNone
  Caption = 'Pesquisa Pedido'
  ClientHeight = 421
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnFechar: TSpeedButton
    Left = 228
    Top = 382
    Width = 72
    Height = 22
    Caption = 'Fechar'
    OnClick = btnFecharClick
  end
  object pnl1: TPanel
    Left = 2
    Top = 2
    Width = 532
    Height = 57
    BevelInner = bvLowered
    BevelOuter = bvSpace
    TabOrder = 0
    object grp1: TGroupBox
      Left = 5
      Top = 5
      Width = 169
      Height = 47
      Caption = 'Digite dados p/ pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object edt1: TEdit
        Left = 4
        Top = 21
        Width = 159
        Height = 21
        AutoSize = False
        TabOrder = 0
        OnChange = edt1Change
      end
    end
    object grp2: TGroupBox
      Left = 194
      Top = 4
      Width = 297
      Height = 48
      Caption = 'Pesquisar por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object rbPedido: TRadioButton
        Left = 6
        Top = 24
        Width = 67
        Height = 17
        Caption = 'Pedido'
        TabOrder = 0
        OnClick = rbPedidoClick
      end
      object rbRepresentada: TRadioButton
        Left = 80
        Top = 24
        Width = 111
        Height = 17
        Caption = 'Representada'
        TabOrder = 1
        OnClick = rbRepresentadaClick
      end
      object rbCliente: TRadioButton
        Left = 202
        Top = 25
        Width = 74
        Height = 17
        Caption = 'Cliente'
        TabOrder = 2
        OnClick = rbClienteClick
      end
    end
  end
  object pnl2: TPanel
    Left = 1
    Top = 62
    Width = 534
    Height = 313
    TabOrder = 1
    object dbgrd1: TDBGrid
      Left = 4
      Top = 5
      Width = 524
      Height = 303
      Color = 14540253
      DataSource = DMRatio.DSPedido
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
          FieldName = 'Num_Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Pedido:'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Representada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 240
          Visible = True
        end>
    end
  end
end

object FrmVenda: TFrmVenda
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 538
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 42
    Height = 15
    Caption = 'idvenda'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 504
    Top = 16
    Width = 60
    Height = 15
    Caption = 'data_venda'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 48
    Top = 80
    Width = 43
    Height = 15
    Caption = 'produto'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 40
    Top = 144
    Width = 50
    Height = 15
    Caption = 'descricao'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 32
    Width = 154
    Height = 23
    DataField = 'idvenda'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 504
    Top = 32
    Width = 154
    Height = 23
    DataField = 'data_venda'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 240
    Width = 626
    Height = 120
    DataSource = DMRaito.DSItemVenda
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 392
    Width = 240
    Height = 25
    DataSource = DMRaito.DSVenda
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 48
    Top = 96
    Width = 209
    Height = 23
    DataField = 'produto'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 40
    Top = 160
    Width = 273
    Height = 23
    DataField = 'descricao'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DataSource1: TDataSource
    DataSet = DMRaito.FDTableVenda
    Left = 648
    Top = 104
  end
end

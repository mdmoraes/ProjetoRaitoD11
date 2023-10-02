object frmPedido: TfrmPedido
  Left = 0
  Top = 0
  Caption = 'Emiss'#227'o de Pedido'
  ClientHeight = 612
  ClientWidth = 1288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lbl: TLabel
    Left = 40
    Top = 16
    Width = 67
    Height = 15
    Caption = 'num_pedido'
    FocusControl = dbedtnum_pedido
  end
  object lbl1: TLabel
    Left = 1120
    Top = 16
    Width = 65
    Height = 15
    Caption = 'data_pedido'
    FocusControl = dbedtdata_pedido
  end
  object lbl2: TLabel
    Left = 552
    Top = 16
    Width = 68
    Height = 15
    Caption = 'representada'
    FocusControl = dbedtrepresentada
  end
  object Label1: TLabel
    Left = 113
    Top = 16
    Width = 35
    Height = 15
    Caption = 'cliente'
    FocusControl = DBEdit1
  end
  object dbedtnum_pedido: TDBEdit
    Left = 40
    Top = 32
    Width = 67
    Height = 23
    DataField = 'num_pedido'
    DataSource = dsPedido
    TabOrder = 0
  end
  object dbedtdata_pedido: TDBEdit
    Left = 1120
    Top = 32
    Width = 154
    Height = 23
    DataField = 'data_pedido'
    DataSource = dsPedido
    TabOrder = 1
  end
  object dbedtrepresentada: TDBEdit
    Left = 552
    Top = 32
    Width = 393
    Height = 23
    DataField = 'representada'
    DataSource = dsPedido
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 113
    Top = 32
    Width = 433
    Height = 23
    DataField = 'cliente'
    DataSource = dsPedido
    TabOrder = 3
  end
  object dbgrdItens: TDBGrid
    Left = 0
    Top = 312
    Width = 1097
    Height = 201
    DataSource = dsItens
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codinc'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_pedido'
        Width = 46
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        DropDownRows = 10
        Expanded = False
        FieldName = 'codigo'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'grupo'
        Width = 112
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'qtd'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unidade'
        Title.Caption = 'unid.'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valorunit'
        Title.Caption = 'val.Unit.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'percentual1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'percentual2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'percentual3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'marcado'
        Visible = True
      end>
  end
  object dsPedido: TDataSource
    DataSet = DMRaito.FdTablePedido
    Left = 1168
    Top = 128
  end
  object dsItens: TDataSource
    DataSet = DMRaito.FdTableItens
    Left = 1160
    Top = 304
  end
end

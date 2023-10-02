object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'TELA PRINCIPAL'
  ClientHeight = 562
  ClientWidth = 1288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mm1
  Position = poScreenCenter
  TextHeight = 15
  object mm1: TMainMenu
    Left = 400
    Top = 40
    object MenuCadastros: TMenuItem
      Caption = 'Cadastros'
      object MenuCliente: TMenuItem
        Caption = 'Cliente'
        OnClick = MenuClienteClick
      end
      object MenuSubProdutos: TMenuItem
        Caption = 'Produtos'
        OnClick = MenuSubProdutosClick
      end
      object MenuSubImportarPlanilha: TMenuItem
        Caption = 'Importar Planilha'
        OnClick = MenuSubImportarPlanilhaClick
      end
    end
    object MenuVendas: TMenuItem
      Caption = 'Vendas'
      object MenuEmitirPedido: TMenuItem
        Caption = 'Emitir Pedido'
        OnClick = MenuEmitirPedidoClick
      end
    end
  end
end

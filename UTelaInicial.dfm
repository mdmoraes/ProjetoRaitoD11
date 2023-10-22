object frmTelaInicial: TfrmTelaInicial
  Left = 0
  Top = 0
  Caption = 'Tela Inicial do Sistema'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 448
    Top = 120
    object MenuCadastro: TMenuItem
      Caption = 'Cadastro'
      object SubMenuEmissodoPedido: TMenuItem
        Caption = 'Emiss'#227'o do Pedido'
        OnClick = SubMenuEmissodoPedidoClick
      end
    end
  end
end

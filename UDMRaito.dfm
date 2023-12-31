object DMRaito: TDMRaito
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=dbratio'
      'User_Name=root'
      'Password=omegaone'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 400
    Top = 16
  end
  object FDTableCliente: TFDTable
    Active = True
    IndexFieldNames = 'idcliente'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.cadastroclientes'
    Left = 32
    Top = 16
    object FDTableClienteidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
    end
    object strngfldFDTableClientenomecliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomecliente'
      Origin = 'nomecliente'
      Size = 70
    end
    object strngfldFDTableClienteregiao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'regiao'
      Origin = 'regiao'
      Size = 25
    end
    object FDTableClientedatacadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
    object strngfldFDTableClienteendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 80
    end
    object strngfldFDTableClientebairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object strngfldFDTableClientecidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object strngfldFDTableClienteestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      Size = 2
    end
    object strngfldFDTableClientecep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 10
    end
    object strngfldFDTableClientetel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 15
    end
    object strngfldFDTableClientetel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      Size = 15
    end
    object strngfldFDTableClientetel3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel3'
      Origin = 'tel3'
      Size = 15
    end
    object strngfldFDTableClientetel4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel4'
      Origin = 'tel4'
      Size = 15
    end
    object strngfldFDTableClientefax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fax'
      Origin = 'fax'
      Size = 15
    end
    object strngfldFDTableClientecel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel1'
      Origin = 'cel1'
      Size = 15
    end
    object strngfldFDTableClientecel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel2'
      Origin = 'cel2'
      Size = 15
    end
    object strngfldFDTableClientecel3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel3'
      Origin = 'cel3'
      Size = 15
    end
    object strngfldFDTableClienteradio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'radio'
      Origin = 'radio'
    end
    object strngfldFDTableClienteidradio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'idradio'
      Origin = 'idradio'
    end
    object strngfldFDTableClientemsn: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'msn'
      Origin = 'msn'
      Size = 60
    end
    object strngfldFDTableClienteskipe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'skipe'
      Origin = 'skipe'
      Size = 60
    end
    object strngfldFDTableClientecontato1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contato1'
      Origin = 'contato1'
      Size = 30
    end
    object strngfldFDTableClientecontato2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contato2'
      Origin = 'contato2'
      Size = 30
    end
    object strngfldFDTableClienteemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object strngfldFDTableClienteemailnfe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emailnfe'
      Origin = 'emailnfe'
      Size = 50
    end
    object strngfldFDTableClientesite: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'site'
      Origin = 'site'
      Size = 50
    end
    object FDTableClienteobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object strngfldFDTableClientecnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 25
    end
    object strngfldFDTableClienteinscestadual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'inscestadual'
      Origin = 'inscestadual'
    end
    object strngfldFDTableClientetwitter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'twitter'
      Origin = 'twitter'
      Size = 40
    end
    object strngfldFDTableClientetransportadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'transportadora'
      Origin = 'transportadora'
      Size = 60
    end
    object strngfldFDTableClienteteltransportadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'teltransportadora'
      Origin = 'teltransportadora'
      Size = 15
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 504
    Top = 24
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'D:\PROJETOS DELPHI\Sistema Raito D11\libmysql.dll'
    Left = 520
    Top = 104
  end
  object FdTbImportacao: TFDTable
    Active = True
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbimportacao'
    Left = 32
    Top = 192
    object FdTbImportacaocodigo: TStringField
      FieldName = 'codigo'
      Size = 60
    end
    object strngfldFdTbImportacaodescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object strngfldFdTbImportacaogrupo: TStringField
      FieldName = 'grupo'
      Size = 60
    end
    object strngfldFdTbImportacaonorma: TStringField
      FieldName = 'norma'
      Size = 60
    end
    object strngfldFdTbImportacaoisolacao: TStringField
      FieldName = 'isolacao'
      Size = 30
    end
    object strngfldFdTbImportacaocobertura: TStringField
      FieldName = 'cobertura'
      Size = 30
    end
    object strngfldFdTbImportacaoclasse: TStringField
      FieldName = 'classe'
      Size = 30
    end
    object strngfldFdTbImportacaoblindagem: TStringField
      FieldName = 'blindagem'
      Size = 30
    end
    object strngfldFdTbImportacaotemperatura: TStringField
      FieldName = 'temperatura'
    end
    object strngfldFdTbImportacaocustomp: TStringField
      FieldName = 'customp'
      Size = 10
    end
    object FdTbImportacaokg_km: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'kg_km'
      Origin = 'kg_km'
    end
    object FdTbImportacaoicms18: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'icms18'
      Origin = 'icms18'
    end
    object FdTbImportacaoicms12: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'icms12'
      Origin = 'icms12'
    end
    object FdTbImportacaoicms7: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'icms7'
      Origin = 'icms7'
    end
  end
  object FdTableCadastroProdutos: TFDTable
    Active = True
    IndexFieldNames = 'idproduto'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.cadastroprodutos'
    Left = 168
    Top = 16
    object FdTableCadastroProdutosidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object strngfldFdTableCadastroProdutoscodigoproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigoproduto'
      Origin = 'codigoproduto'
      Size = 25
    end
    object strngfldFdTableCadastroProdutoscodauxiliar: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codauxiliar'
      Origin = 'codauxiliar'
      Size = 25
    end
    object fltfldFdTableCadastroProdutoscodbarra: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'codbarra'
      Origin = 'codbarra'
    end
    object strngfldFdTableCadastroProdutosncm: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ncm'
      Origin = 'ncm'
      Size = 25
    end
    object strngfldFdTableCadastroProdutosunidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'unidade'
      Origin = 'unidade'
    end
    object strngfldFdTableCadastroProdutosdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 70
    end
    object strngfldFdTableCadastroProdutosgrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 30
    end
    object strngfldFdTableCadastroProdutosrepresentada: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'representada'
      Origin = 'representada'
      Size = 60
    end
    object fltfldFdTableCadastroProdutosipi: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ipi'
      Origin = 'ipi'
    end
    object fltfldFdTableCadastroProdutosicm: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icm'
      Origin = 'icm'
    end
    object strngfldFdTableCadastroProdutoscst: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cst'
      Origin = 'cst'
    end
    object fltfldFdTableCadastroProdutospeso: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'peso'
      Origin = 'peso'
    end
    object fltfldFdTableCadastroProdutospcusto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pcusto'
      Origin = 'pcusto'
    end
    object fltfldFdTableCadastroProdutospvenda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pvenda'
      Origin = 'pvenda'
    end
    object FdTableCadastroProdutosmarcado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'marcado'
      Origin = 'marcado'
    end
  end
  object FdTablePedido: TFDTable
    Active = True
    IndexFieldNames = 'num_pedido'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.pedidos'
    Left = 32
    Top = 96
    object FdTablePedidonum_pedido: TIntegerField
      FieldName = 'num_pedido'
      Origin = 'num_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtfldFdTablePedidodata_pedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_pedido'
      Origin = 'data_pedido'
    end
    object strngfldFdTablePedidorepresentada: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'representada'
      Origin = 'representada'
      Size = 80
    end
    object strngfldFdTablePedidocliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'cliente'
      Size = 80
    end
    object strngfldFdTablePedidotransportadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'transportadora'
      Origin = 'transportadora'
      Size = 80
    end
    object strngfldFdTablePedidocondicoespagto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'condicoespagto'
      Origin = 'condicoespagto'
      Size = 80
    end
    object fltfldFdTablePedidocomissaopercentual: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'comissaopercentual'
      Origin = 'comissaopercentual'
    end
    object fltfldFdTablePedidocomissaovalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'comissaovalor'
      Origin = 'comissaovalor'
    end
    object fltfldFdTablePedidodesc1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desc1'
      Origin = 'desc1'
    end
    object fltfldFdTablePedidodesc2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desc2'
      Origin = 'desc2'
    end
    object fltfldFdTablePedidodesc3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desc3'
      Origin = 'desc3'
    end
    object fltfldFdTablePedidodesc4: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desc4'
      Origin = 'desc4'
    end
    object fltfldFdTablePedidodesc5: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desc5'
      Origin = 'desc5'
    end
    object fltfldFdTablePedidodesc6: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desc6'
      Origin = 'desc6'
    end
    object mfldFdTablePedidoobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object mfldFdTablePedidolembrete: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'lembrete'
      Origin = 'lembrete'
      BlobType = ftMemo
    end
    object fltfldFdTablePedidototalliquido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'totalliquido'
      Origin = 'totalliquido'
    end
    object fltfldFdTablePedidototalbruto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'totalbruto'
      Origin = 'totalbruto'
    end
    object strngfldFdTablePedidotipopedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipopedido'
      Origin = 'tipopedido'
      Size = 15
    end
    object FdTablePedidoidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
    end
    object FdTablePedidostatus: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`status`'
    end
    object strngfldFdTablePedidonumpedcliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numpedcliente'
      Origin = 'numpedcliente'
      Size = 25
    end
  end
  object FdTableItens: TFDTable
    Active = True
    IndexFieldNames = 'codinc'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.itens'
    Left = 136
    Top = 104
    object fdtncfldFdTableItenscodinc: TFDAutoIncField
      FieldName = 'codinc'
      Origin = 'codinc'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FdTableItensid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      Required = True
    end
    object strngfldFdTableItenscodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 25
    end
    object fltfldFdTableItensqtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object strngfldFdTableItensunidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'unidade'
      Origin = 'unidade'
      Size = 15
    end
    object strngfldFdTableItensproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      Size = 80
    end
    object fltfldFdTableItensvalorunit: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valorunit'
      Origin = 'valorunit'
    end
    object fltfldFdTableItenspercentual1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'percentual1'
      Origin = 'percentual1'
    end
    object fltfldFdTableItenspercentual2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'percentual2'
      Origin = 'percentual2'
    end
    object fltfldFdTableItenspercentual3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'percentual3'
      Origin = 'percentual3'
    end
    object fltfldFdTableItensvalorliquido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valorliquido'
      Origin = 'valorliquido'
    end
    object strngfldFdTableItensgrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 40
    end
    object FdTableItensmarcado: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'marcado'
      Origin = 'marcado'
    end
  end
end

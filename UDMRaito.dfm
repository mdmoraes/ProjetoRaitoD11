object DMRaito: TDMRaito
  Height = 480
  Width = 720
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=dbratio'
      'User_Name=root'
      'Password=omegaone'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 488
    Top = 184
  end
  object FDTableCliente: TFDTable
    Active = True
    BeforePost = FDTableClienteBeforePost
    Filtered = True
    CachedUpdates = True
    IndexName = 'IdxCliente'
    Connection = FDConnection1
    SchemaAdapter = FDSchemaAdapter
    FetchOptions.AssignedValues = [evAutoClose]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.cadastroclientes'
    Left = 32
    Top = 16
    object FDTableClienteidcliente: TFDAutoIncField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTableClientenomecliente: TStringField
      FieldName = 'nomecliente'
      Origin = 'nomecliente'
      Required = True
      Size = 70
    end
    object FDTableClienteregiao: TStringField
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
    object FDTableClienteendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 80
    end
    object FDTableClientebairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object FDTableClientecidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object FDTableClienteestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      Size = 2
    end
    object FDTableClientecep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 10
    end
    object FDTableClientetel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 15
    end
    object FDTableClientetel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      Size = 15
    end
    object FDTableClientetel3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel3'
      Origin = 'tel3'
      Size = 15
    end
    object FDTableClientetel4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel4'
      Origin = 'tel4'
      Size = 15
    end
    object FDTableClientefax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fax'
      Origin = 'fax'
      Size = 15
    end
    object FDTableClientecel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel1'
      Origin = 'cel1'
      Size = 15
    end
    object FDTableClientecel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel2'
      Origin = 'cel2'
      Size = 15
    end
    object FDTableClientecel3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel3'
      Origin = 'cel3'
      Size = 15
    end
    object FDTableClienteradio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'radio'
      Origin = 'radio'
    end
    object FDTableClienteidradio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'idradio'
      Origin = 'idradio'
    end
    object FDTableClientemsn: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'msn'
      Origin = 'msn'
      Size = 60
    end
    object FDTableClienteskipe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'skipe'
      Origin = 'skipe'
      Size = 60
    end
    object FDTableClientecontato1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contato1'
      Origin = 'contato1'
      Size = 30
    end
    object FDTableClientecontato2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contato2'
      Origin = 'contato2'
      Size = 30
    end
    object FDTableClienteemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object FDTableClienteemailnfe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emailnfe'
      Origin = 'emailnfe'
      Size = 50
    end
    object FDTableClientesite: TStringField
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
    object FDTableClientecnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 25
    end
    object FDTableClienteinscestadual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'inscestadual'
      Origin = 'inscestadual'
    end
    object FDTableClientetwitter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'twitter'
      Origin = 'twitter'
      Size = 40
    end
    object FDTableClientetransportadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'transportadora'
      Origin = 'transportadora'
      Size = 60
    end
    object FDTableClienteteltransportadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'teltransportadora'
      Origin = 'teltransportadora'
      Size = 15
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 624
    Top = 200
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'D:\PROJETOS DELPHI\Sistema Raito D11\libmysql.dll'
    Left = 520
    Top = 104
  end
  object FdTbImportacao: TFDTable
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
    object fltfldFdTbImportacaokg_km: TFloatField
      FieldName = 'kg_km'
    end
    object fltfldFdTbImportacaoicms18: TFloatField
      FieldName = 'icms18'
    end
    object fltfldFdTbImportacaoicms12: TFloatField
      FieldName = 'icms12'
    end
    object fltfldFdTbImportacaoicms7: TFloatField
      FieldName = 'icms7'
    end
  end
  object FdTableCadastroProdutos: TFDTable
    Active = True
    IndexFieldNames = 'idproduto'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.cadastroprodutos'
    Left = 224
    Top = 8
    object FdTableCadastroProdutosidproduto: TFDAutoIncField
      FieldName = 'idproduto'
      ReadOnly = True
    end
    object FdTableCadastroProdutoscodigoproduto: TStringField
      FieldName = 'codigoproduto'
      Size = 25
    end
    object FdTableCadastroProdutosdescricao: TStringField
      FieldName = 'descricao'
      Size = 70
    end
    object FdTableCadastroProdutosgrupo: TStringField
      FieldName = 'grupo'
      Size = 30
    end
    object FdTableCadastroProdutoscodauxiliar: TStringField
      FieldName = 'codauxiliar'
      Size = 25
    end
    object FdTableCadastroProdutoscodbarra: TFloatField
      FieldName = 'codbarra'
    end
    object FdTableCadastroProdutosncm: TStringField
      FieldName = 'ncm'
      Size = 25
    end
    object FdTableCadastroProdutosunidade: TStringField
      FieldName = 'unidade'
    end
    object FdTableCadastroProdutossubgrupo: TStringField
      FieldName = 'subgrupo'
    end
    object FdTableCadastroProdutosrepresentada: TStringField
      FieldName = 'representada'
      Size = 60
    end
    object FdTableCadastroProdutosipi: TFloatField
      FieldName = 'ipi'
    end
    object FdTableCadastroProdutosicms: TStringField
      FieldName = 'icms'
      FixedChar = True
      Size = 2
    end
    object FdTableCadastroProdutospeso: TFloatField
      FieldName = 'peso'
    end
    object FdTableCadastroProdutospvenda: TFloatField
      FieldName = 'pvenda'
    end
  end
  object dsPedido: TDataSource
    DataSet = FdTablePedido
    Left = 120
    Top = 104
  end
  object dsItens: TDataSource
    DataSet = FdTableItens
    Left = 344
    Top = 112
  end
  object dsCliente: TDataSource
    DataSet = FDTableCliente
    Left = 104
    Top = 16
  end
  object FdTableTransportadora: TFDTable
    IndexFieldNames = 'TransportadoraId'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.transportadora'
    Left = 240
    Top = 192
    object FdTableTransportadoraTransportadoraId: TFDAutoIncField
      FieldName = 'TransportadoraId'
      ReadOnly = True
    end
    object FdTableTransportadoraNomeTransportadora: TStringField
      FieldName = 'NomeTransportadora'
      Required = True
      Size = 80
    end
    object FdTableTransportadoraEndereco: TStringField
      FieldName = 'Endereco'
      Size = 80
    end
    object FdTableTransportadoraTelefone: TStringField
      FieldName = 'Telefone'
      Size = 30
    end
    object FdTableTransportadoraemail: TStringField
      FieldName = 'e-mail'
      Size = 80
    end
    object FdTableTransportadoraContato: TStringField
      FieldName = 'Contato'
      Size = 45
    end
    object FdTableTransportadoraCidade: TStringField
      FieldName = 'Cidade'
      Size = 45
    end
    object FdTableTransportadoraUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object FdTableTransportadoraCep: TStringField
      FieldName = 'Cep'
      Size = 10
    end
    object FdTableTransportadoraObs: TStringField
      FieldName = 'Obs'
      Size = 80
    end
  end
  object FdTableContatoCliente: TFDTable
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'cadastroclientes_idcliente'
    ConstraintsEnabled = True
    MasterSource = dsCliente
    MasterFields = 'idcliente'
    DetailFields = 'cadastroclientes_idcliente'
    Connection = FDConnection1
    SchemaAdapter = FDSchemaAdapter
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'contatocliente'
    Left = 48
    Top = 296
    object FdTableContatoClienteContatoId: TFDAutoIncField
      FieldName = 'ContatoId'
      Origin = 'ContatoId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FdTableContatoClienteContato_IdCliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Contato_IdCliente'
      Origin = 'Contato_IdCliente'
    end
    object FdTableContatoClienteTipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tipo'
      Origin = 'Tipo'
      Size = 45
    end
    object FdTableContatoClienteDescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 45
    end
    object FdTableContatoClienteNomeDoContato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NomeDoContato'
      Origin = 'NomeDoContato'
      Size = 45
    end
    object FdTableContatoClientecadastroclientes_idcliente: TIntegerField
      FieldName = 'cadastroclientes_idcliente'
      Origin = 'cadastroclientes_idcliente'
      Required = True
    end
  end
  object dsContatoCliente: TDataSource
    DataSet = FdTableContatoCliente
    Left = 184
    Top = 296
  end
  object dsTableTransportadora: TDataSource
    DataSet = FdTableTransportadora
    Left = 376
    Top = 200
  end
  object FdTableRepresentada: TFDTable
    Active = True
    IndexFieldNames = 'idcliente'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.cadastrorepresentada'
    Left = 336
    Top = 304
    object fdtncfldFdTableRepresentadaidcliente: TFDAutoIncField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ReadOnly = True
    end
    object TableFdTableRepresentadanomecliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomecliente'
      Origin = 'nomecliente'
      Size = 70
    end
    object TableFdTableRepresentadaregiao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'regiao'
      Origin = 'regiao'
      Size = 25
    end
    object dtfldFdTableRepresentadadatacadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
    object TableFdTableRepresentadaendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 80
    end
    object TableFdTableRepresentadabairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object TableFdTableRepresentadacidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object TableFdTableRepresentadaestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      Size = 2
    end
    object TableFdTableRepresentadacep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 10
    end
    object TableFdTableRepresentadacomissao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'comissao'
      Origin = 'comissao'
    end
    object TableFdTableRepresentadatel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 15
    end
    object TableFdTableRepresentadatel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      Size = 15
    end
    object TableFdTableRepresentadatel3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel3'
      Origin = 'tel3'
      Size = 15
    end
    object TableFdTableRepresentadatel4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel4'
      Origin = 'tel4'
      Size = 15
    end
    object TableFdTableRepresentadafax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fax'
      Origin = 'fax'
      Size = 15
    end
    object TableFdTableRepresentadacel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel1'
      Origin = 'cel1'
      Size = 15
    end
    object TableFdTableRepresentadacel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel2'
      Origin = 'cel2'
      Size = 15
    end
    object TableFdTableRepresentadacel3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cel3'
      Origin = 'cel3'
      Size = 15
    end
    object TableFdTableRepresentadaradio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'radio'
      Origin = 'radio'
      Size = 30
    end
    object TableFdTableRepresentadaid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
      Size = 30
    end
    object TableFdTableRepresentadamsn: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'msn'
      Origin = 'msn'
      Size = 60
    end
    object TableFdTableRepresentadaskipe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'skipe'
      Origin = 'skipe'
      Size = 60
    end
    object TableFdTableRepresentadacontato1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contato1'
      Origin = 'contato1'
      Size = 30
    end
    object TableFdTableRepresentadacontato2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contato2'
      Origin = 'contato2'
      Size = 30
    end
    object TableFdTableRepresentadaemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object TableFdTableRepresentadaemailnfe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emailnfe'
      Origin = 'emailnfe'
      Size = 50
    end
    object TableFdTableRepresentadasite: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'site'
      Origin = 'site'
      Size = 50
    end
    object mfldFdTableRepresentadaobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object TableFdTableRepresentadacnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 25
    end
    object TableFdTableRepresentadainscestadual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'inscestadual'
      Origin = 'inscestadual'
    end
    object TableFdTableRepresentadatwitter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'twitter'
      Origin = 'twitter'
      Size = 40
    end
  end
  object dsRepresentada: TDataSource
    DataSet = FdTableRepresentada
    Left = 440
    Top = 304
  end
  object dsCadastroDeProdutos: TDataSource
    DataSet = FdTableCadastroProdutos
    Left = 352
    Top = 8
  end
  object FdTablePedido: TFDTable
    Active = True
    AutoCalcFields = False
    AfterPost = FdTablePedidoAfterPost
    CachedUpdates = True
    IndexFieldNames = 'PedidoId'
    Connection = FDConnection1
    SchemaAdapter = FDSchemaAdapter
    FetchOptions.AssignedValues = [evDetailCascade]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'pedidos'
    Left = 32
    Top = 104
    object FdTablePedidoPedidoId: TFDAutoIncField
      FieldName = 'PedidoId'
      Origin = 'PedidoId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FdTablePedidodata_pedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_pedido'
      Origin = 'data_pedido'
    end
    object FdTablePedidorepresentada: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'representada'
      Origin = 'representada'
      Size = 80
    end
    object FdTablePedidocliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'cliente'
      Size = 80
    end
    object FdTablePedidotransportadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'transportadora'
      Origin = 'transportadora'
      Size = 80
    end
    object FdTablePedidocondicoespagto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'condicoespagto'
      Origin = 'condicoespagto'
      Size = 25
    end
    object FdTablePedidocomissao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'comissao'
      Origin = 'comissao'
    end
    object FdTablePedidocomissaovalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'comissaovalor'
      Origin = 'comissaovalor'
    end
    object FdTablePedidoobs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object FdTablePedidolembrete: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'lembrete'
      Origin = 'lembrete'
      Size = 100
    end
    object FdTablePedidototalbruto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'totalbruto'
      Origin = 'totalbruto'
    end
    object FdTablePedidotipopedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipopedido'
      Origin = 'tipopedido'
      Size = 15
    end
    object FdTablePedidocadastroclientes_idcliente: TIntegerField
      FieldName = 'cadastroclientes_idcliente'
      Origin = 'cadastroclientes_idcliente'
      Required = True
    end
    object FdTablePedidoidcliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
  end
  object FdTableItens: TFDTable
    Active = True
    AutoCalcFields = False
    OnCalcFields = FdTableItensCalcFields
    CachedUpdates = True
    IndexFieldNames = 'pedidos_PedidoId'
    MasterSource = dsPedido
    MasterFields = 'PedidoId'
    DetailFields = 'pedidos_PedidoId'
    Connection = FDConnection1
    SchemaAdapter = FDSchemaAdapter
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    UpdateOptions.AssignedValues = [uvUpdateMode, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    TableName = 'dbratio.itens'
    Left = 256
    Top = 112
    object FdTableItensItemId: TFDAutoIncField
      FieldName = 'ItemId'
      Origin = 'ItemId'
      ReadOnly = True
    end
    object FdTableItensitem_PedidoId: TIntegerField
      FieldName = 'item_PedidoId'
      Origin = 'item_PedidoId'
      Required = True
    end
    object FdTableItenscod_produto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_produto'
      Origin = 'cod_produto'
      Size = 25
    end
    object FdTableItensDes_Produto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Des_Produto'
      Origin = 'Des_Produto'
      Size = 80
    end
    object FdTableItensgrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 40
    end
    object FdTableItensun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'un'
      Origin = 'un'
      Size = 15
    end
    object FdTableItensqtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object FdTableItensvrunit: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrunit'
      Origin = 'vrunit'
    end
    object FdTableItensp1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'p1'
      Origin = 'p1'
    end
    object FdTableItensp2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'p2'
      Origin = 'p2'
    end
    object FdTableItensp3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'p3'
      Origin = 'p3'
    end
    object FdTableItensicms: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'icms'
      Origin = 'icms'
    end
    object FdTableItenspedidos_PedidoId: TIntegerField
      FieldName = 'pedidos_PedidoId'
      Origin = 'pedidos_PedidoId'
      Required = True
    end
    object FdTableItensDesct: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Desct'
      Calculated = True
    end
    object FdTableItensTotalItens: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalItens'
      Calculated = True
    end
  end
  object FDTableVenda: TFDTable
    IndexFieldNames = 'idvenda'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.venda'
    Left = 32
    Top = 392
    object FDTableVendaidvenda: TFDAutoIncField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTableVendadata_venda: TDateField
      FieldName = 'data_venda'
      Origin = 'data_venda'
      Required = True
    end
    object FDTableVendaproduto: TStringField
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 45
    end
    object FDTableVendadescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 45
    end
  end
  object FDTableItemVenda: TFDTable
    IndexFieldNames = 'iditem_venda'
    MasterSource = DSVenda
    MasterFields = 'idvenda'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.item_venda'
    Left = 312
    Top = 392
    object FDTableItemVendaiditem_venda: TFDAutoIncField
      FieldName = 'iditem_venda'
      Origin = 'iditem_venda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTableItemVendaidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      Required = True
    end
    object FDTableItemVendaproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      Size = 45
    end
    object FDTableItemVendadescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 45
    end
  end
  object DSVenda: TDataSource
    DataSet = FDTableVenda
    Left = 112
    Top = 400
  end
  object DSItemVenda: TDataSource
    DataSet = FDTableItemVenda
    Left = 432
    Top = 384
  end
  object FDSchemaAdapter: TFDSchemaAdapter
    AfterApplyUpdate = FDSchemaAdapterAfterApplyUpdate
    Left = 576
    Top = 312
  end
end

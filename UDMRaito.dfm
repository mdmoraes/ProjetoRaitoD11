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
    Filtered = True
    IndexName = 'IdxCliente'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.cadastroclientes'
    Left = 32
    Top = 16
    object FDTableClienteidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
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
    object TableClienteendereco: TStringField
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
      EditMask = '00000\-999;1;_'
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
      EditMask = '99.999.999/9999-99;0'
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
    Left = 624
    Top = 200
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
    Active = True
    IndexFieldNames = 'TransportadoraId'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.transportadora'
    Left = 240
    Top = 192
    object fdtncfldFdTableTransportadoraTransportadoraId: TFDAutoIncField
      FieldName = 'TransportadoraId'
      Origin = 'TransportadoraId'
      ReadOnly = True
    end
    object strngfldFdTableTransportadoraNomeTransportadora: TStringField
      FieldName = 'NomeTransportadora'
      Origin = 'NomeTransportadora'
      Required = True
      Size = 80
    end
    object strngfldFdTableTransportadoraEndereço: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Endere'#231'o'
      Origin = '`Endere'#231'o`'
      Size = 80
    end
    object strngfldFdTableTransportadoraTelefone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefone1'
      Origin = 'Telefone1'
      Size = 60
    end
    object strngfldFdTableTransportadoraemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'e-mail'
      Origin = '`e-mail`'
      Size = 80
    end
    object strngfldFdTableTransportadoraUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object strngfldFdTableTransportadoraCidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cidade'
      Origin = 'Cidade'
      Size = 45
    end
    object strngfldFdTableTransportadoraContato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Contato'
      Origin = 'Contato'
      Size = 80
    end
    object strngfldFdTableTransportadoraObs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Obs'
      Origin = 'Obs'
      Size = 100
    end
    object strngfldFdTableTransportadoraCep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cep'
      Origin = 'Cep'
      Size = 12
    end
  end
  object FdTableContatoCliente: TFDTable
    Active = True
    IndexFieldNames = 'IdCliente'
    ConstraintsEnabled = True
    MasterSource = dsCliente
    MasterFields = 'idcliente'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.contatocliente'
    Left = 48
    Top = 296
    object TableFdTableContatoClienteContatoId: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'ContatoId'
      Origin = 'ContatoId'
    end
    object FdTableContatoClienteIdCliente: TIntegerField
      DisplayWidth = 10
      FieldName = 'IdCliente'
      Origin = 'IdCliente'
      Required = True
    end
    object FdTableContatoClienteTipo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 30
      FieldName = 'Tipo'
      Origin = 'Tipo'
      Size = 45
    end
    object FdTableContatoClienteDadosDoTipo: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 44
      FieldName = 'DadosDoTipo'
      Origin = 'DadosDoTipo'
      Size = 80
    end
    object FdTableContatoClienteNomeDoContato: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 26
      FieldName = 'NomeDoContato'
      Origin = 'NomeDoContato'
      Size = 80
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
    CachedUpdates = True
    IndexFieldNames = 'PedidoId'
    Connection = FDConnection1
    SchemaAdapter = FDSchemaAdapter
    FetchOptions.AssignedValues = [evDetailCascade]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.pedido'
    Left = 32
    Top = 104
    object FdTablePedidoPedidoId: TFDAutoIncField
      FieldName = 'PedidoId'
      Origin = 'PedidoId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FdTablePedidodata_pedido: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_pedido'
      Origin = 'data_pedido'
    end
    object FdTablePedidoRepresentada: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Representada'
      Origin = 'Representada'
      Size = 80
    end
    object FdTablePedidoCliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cliente'
      Origin = 'Cliente'
      Size = 80
    end
    object FdTablePedidoTransportadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transportadora'
      Origin = 'Transportadora'
      Size = 80
    end
    object FdTablePedidoCondicoesPagamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CondicoesPagamento'
      Origin = 'CondicoesPagamento'
      Size = 65
    end
    object FdTablePedidoComissao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Comissao'
      Origin = 'Comissao'
    end
    object FdTablePedidoVrComissao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VrComissao'
      Origin = 'VrComissao'
      EditFormat = '###,###,##0.00'
    end
    object FdTablePedidoObs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Obs'
      Origin = 'Obs'
      Size = 150
    end
    object FdTablePedidoLembrete: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lembrete'
      Origin = 'Lembrete'
      Size = 145
    end
    object FdTablePedidoTotalBruto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TotalBruto'
      Origin = 'TotalBruto'
    end
    object FdTablePedidoTipoPedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TipoPedido'
      Origin = 'TipoPedido'
      EditMask = '###,###,##0.00'
      Size = 10
    end
  end
  object FdTableItens: TFDTable
    Active = True
    AutoCalcFields = False
    AfterPost = FdTableItensAfterPost
    OnCalcFields = FdTableItensCalcFields
    CachedUpdates = True
    IndexFieldNames = 'PedidoId'
    MasterSource = dsPedido
    MasterFields = 'PedidoId'
    DetailFields = 'PedidoId'
    Connection = FDConnection1
    SchemaAdapter = FDSchemaAdapter
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    UpdateOptions.AssignedValues = [uvUpdateMode, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    TableName = 'itens'
    Left = 256
    Top = 112
    object FdTableItensItensId: TFDAutoIncField
      FieldName = 'ItensId'
      Origin = 'ItensId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FdTableItensCodProd: TStringField
      FieldName = 'CodProd'
      Origin = 'CodProd'
      Required = True
      Size = 35
    end
    object FdTableItensQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = 'Qtd'
      Required = True
    end
    object FdTableItensDescProduto: TStringField
      FieldName = 'DescProduto'
      Origin = 'DescProduto'
      Required = True
      Size = 80
    end
    object FdTableItensVrUnit: TFloatField
      FieldName = 'VrUnit'
      Origin = 'VrUnit'
      Required = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
    end
    object FdTableItensp1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'p1'
      Origin = 'p1'
    end
    object FdTableItensVrDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VrDesc'
      Origin = 'VrDesc'
    end
    object FdTableItensGrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Grupo'
      Origin = 'Grupo'
      Size = 45
    end
    object FdTableItensmc: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'mc'
      Origin = 'mc'
    end
    object FdTableItensUn: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Un'
      Origin = 'Un'
      Size = 5
    end
    object FdTableItensPedidoId: TIntegerField
      FieldName = 'PedidoId'
      Origin = 'PedidoId'
      Required = True
    end
    object FdTableItensTotalItens: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalItens'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object FdTableItensDesct: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Desct'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
  end
  object FDTableVenda: TFDTable
    Active = True
    IndexFieldNames = 'idvenda'
    Connection = FDConnection1
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
    Active = True
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
    Left = 416
    Top = 384
  end
  object FDSchemaAdapter: TFDSchemaAdapter
    AfterApplyUpdate = FDSchemaAdapterAfterApplyUpdate
    Left = 576
    Top = 312
  end
end

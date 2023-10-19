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
    Left = 584
    Top = 192
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
  object FdTablePedido: TFDTable
    Active = True
    BeforePost = FdTablePedidoBeforePost
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
    object TablePedidototalbruto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'totalbruto'
      Origin = 'totalbruto'
      DisplayFormat = 'R$  ###,###,##0.00;1;_'
      EditFormat = 'R$  ###,###,##0.00;1;_'
      currency = True
    end
    object TablePedidotipopedido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipopedido'
      Origin = 'tipopedido'
      Size = 15
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
    object TableFdTablePedidoidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
    end
    object TablePedidoEnderecoCliente: TStringField
      FieldName = 'EnderecoCliente'
      Origin = 'EnderecoCliente'
      Required = True
      Size = 80
    end
  end
  object FdTableItens: TFDTable
    Active = True
    AfterPost = FdTableItensAfterPost
    OnCalcFields = FdTableItensCalcFields
    CachedUpdates = True
    IndexFieldNames = 'id_pedido'
    MasterSource = dsPedido
    MasterFields = 'num_pedido'
    DetailFields = 'codinc'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'dbratio.itens'
    Left = 272
    Top = 112
    object FdTableItenscodinc: TFDAutoIncField
      FieldName = 'codinc'
      Origin = 'codinc'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FdTableItensid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      Required = True
    end
    object FdTableItenscodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 25
    end
    object FdTableItensqtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object FdTableItensun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'un'
      Origin = 'un'
      Size = 15
    end
    object FdTableItensproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      Size = 80
    end
    object FdTableItensvunit: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vunit'
      Origin = 'vunit'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object FdTableItensp1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'p1'
      Origin = 'p1'
      DisplayFormat = '#.##%'
      EditFormat = '#.##%'
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
    object FdTableItensvalorliquido: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valorliquido'
      Origin = 'valorliquido'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object FdTableItensgrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 40
    end
    object FdTableItensmc: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'mc'
      Origin = 'mc'
    end
    object FdTableItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Calculated = True
    end
    object FdTableItensLiq1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liq1'
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
      Calculated = True
    end
    object FdTableItensLiq2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liq2'
      Calculated = True
    end
    object FdTableItensLiq3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liq3'
      Calculated = True
    end
    object FdTableItensVDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VDesc'
      Origin = 'VDesc'
    end
  end
  object dsPedido: TDataSource
    DataSet = FdTablePedido
    Left = 112
    Top = 96
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
    Left = 368
    Top = 8
  end
end

# E-commerce

Modelamos juntos um contexto reduzido de e-commerce. Agora é a sua vez, podes escolher a ferramenta de modelagem para realizar o desafio. Contudo, fique atento! Caso opte por uma variação do modelo entidade relacionamento, como nas ferramentas Mysql Workbench ou DBDesigner será preciso especificar as PK e FKs corretamente. Apesar desse conceito não ser utilizado na modelagem conceitual exploramos brevemente suas definições. Sendo assim, seu entregável será o esquema conceitual para o cenário de E-commerce.

## Qual o escopo?

- Venda de produtos
  - Produto
  - Estoque
  - Fornecedor
  - Pedido
  - Cliente

Cliente faz pedido
Produto tem estoque
Estoque associado a fornecedor

### Narrativa: Produto

- Os produtos são vendidos por uma única plataforma online. Contudo, estes podem ter vendedores distintos (terceiros).
- Cada produto possui um fornecedor
- Um ou mais produtos podem compor um pedido

### Narrativa: Cliente

- Cliente pode se cadastrar no site com CPF ou CNPJ
- O endereço do cliente irá determinar o valor do frete
- Um cliente pode fazer mais de um pedido. Este tem um pedido de carência para devolução do produto.

### Narrativa: Pedido

- Os pedidos são criados por clientes e possuem informações de compra, endereço e status de entrega.
- Um ou mais produtos compõe o pedido.
- O pedido pode ser cancelado.

### Narrativa: Fornecedor e Estoque

- Será elaborado em conjunto

## Modelando E commerce

- Refinar:
  - Cliente pode ser:
    - Pessoa física
    - Pessoa jurídica
      - Mas não pode ser pessoa física e jurídica

- Forma de pagamento
  - Pode ter mais de uma forma de pagamento

- Entrega
  - Possui status e código de rastreio
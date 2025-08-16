# Alexandria Web MVP

Esta é uma camada web simples para a biblioteca Alexandria, permitindo uso pelo navegador.

## Como rodar localmente

1. Instale dependências Ruby:
   ```bash
   bundle install
   ```

2. Execute o app web:
   ```bash
   ruby web/app.rb
   ```

3. Acesse em [http://localhost:8080](http://localhost:8080)

## Estrutura

- `web/app.rb`: Backend Sinatra, serve API REST e arquivos estáticos.
- `web/public/index.html`: Interface web simples.
- Endpoints:
  - `GET /api/list`
  - `GET /api/info/:language`
  - `GET /api/compare/:lang1/:lang2`

## Limite Freemium

- Coloque lógica de limite por IP conforme desejar (exemplo: 10 requisições/dia).

## Deploy

- Pode ser hospedado em EC2, Heroku, Railway, etc.
- Ou use AWS Elastic Beanstalk para deploy automatizado.
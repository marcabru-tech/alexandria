# alexandria
Alexandria é uma biblioteca Ruby para análise comparativa e interoperabilidade entre linguagens de programação, baseada no banco de dados do projeto Programação Comparada.
# Alexandria – Biblioteca de Programação Comparada

**Alexandria** é uma biblioteca Ruby para análise comparativa e interoperabilidade entre linguagens de programação, baseada no banco de dados do projeto Programação Comparada.

- Consulta e compara linguagens.
- Analisa paradigmas, tipagem, interoperabilidade.
- Mostra exemplos de "Hello, World!".
- Recomenda linguagens por paradigma.
- CLI pronta para uso!

## Instalação

```bash
git clone https://github.com/seu-usuario/alexandria.git
cd alexandria
bundle install # se desejar usar gems extras no futuro
chmod +x bin/alexandria
```

## Uso

```bash
./bin/alexandria list
./bin/alexandria info Python
./bin/alexandria compare Python JavaScript
./bin/alexandria hello
./bin/alexandria recomend funcional
./bin/alexandria matriz
```

## Estrutura

- `lib/alexandria.rb`: Interface principal
- `lib/alexandria/`: Núcleo da biblioteca
- `bin/alexandria`: CLI
- `data/linguagens_programacao_comparada.json`: Banco de dados

## Contribua

Pull requests são bem-vindos! Veja `CONTRIBUTING.md`.

## Licença

MIT

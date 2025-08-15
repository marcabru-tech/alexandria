
# Alexandria – Biblioteca de Programação Comparada

**Alexandria** é uma biblioteca Ruby que implementa os conceitos do **ProCP (Programação Comparada)**, um paradigma que trata linguagens, bibliotecas e stacks como dados observáveis, permitindo decisões de engenharia guiadas por evidências estatísticas.

## Visão ProCP

Em vez de escolher tecnologias por moda ou buzzwords, Alexandria permite comparar métricas objetivas: paradigmas, tipagem, interoperabilidade, exemplos práticos e características técnicas. Baseada no banco de dados expandido do projeto Programação Comparada.

### Funcionalidades

- **Consulta e comparação** de 37+ linguagens de programação
- **Análise de paradigmas** (funcional, imperativa, proof assistant, etc.)
- **Tipagem e características** técnicas detalhadas
- **Exemplos "Hello, World!"** para todas as linguagens
- **Recomendações inteligentes** por paradigma
- **Matriz de interoperabilidade** entre linguagens
- **CLI completa** para análise rápida

## Instalação

```bash
git clone https://github.com/seu-usuario/alexandria.git
cd alexandria
bundle install # se desejar usar gems extras no futuro
chmod +x bin/alexandria
```

## Uso

### CLI Básica

```bash
# Listar todas as linguagens (37+ disponíveis)
./bin/alexandria list

# Informações detalhadas sobre uma linguagem
./bin/alexandria info Python

# Comparar duas linguagens
./bin/alexandria compare Python JavaScript

# Ver exemplos Hello World de todas as linguagens
./bin/alexandria hello

# Recomendar linguagens por paradigma
./bin/alexandria recomend funcional
./bin/alexandria recomend "proof assistant"
./bin/alexandria recomend paralela

# Matriz de interoperabilidade
./bin/alexandria matriz
```

### Análise ProCP

Alexandria implementa o conceito de **dados observáveis** para linguagens de programação:

- **Paradigmas**: Funcional, imperativa, orientada a objetos, proof assistant, paralela, etc.
- **Tipagem**: Estática, dinâmica, dependente
- **Características técnicas**: Compilação, gerenciamento de memória, família sintática
- **Ecossistema**: IDEs, bibliotecas principais, empresa desenvolvedora
- **Interoperabilidade**: Bridges, modos de interop, observações técnicas

## Estrutura

### Arquitetura ProCP

- `lib/alexandria.rb`: Interface principal do paradigma ProCP
- `lib/alexandria/`: Núcleo da biblioteca de análise comparativa
- `bin/alexandria`: CLI para consultas e análises
- `data/linguagens_programacao_comparada.json`: Banco de dados expandido com 37+ linguagens

### Dados Observáveis

Cada linguagem contém metadados estruturados segundo o modelo ProCP:

```json
{
  "nome": "Pony",
  "paradigmas": ["actor", "capabilidades", "segurança"],
  "tipagem": "estática",
  "compilada_ou_interpretada": "compilada",
  "extensao_padrao": ".pony",
  "bibliotecas_principais": ["Pony Standard Library"],
  "ides_principais": ["VS Code", "Pony Language Server"],
  "gerenciamento_memoria": "Garbage-free reference counting",
  "empresa_desenvolvedora": "Pony Team",
  "ano_criacao": 2015,
  "proposito": "Alta concorrência, zero race-conditions",
  "exemplo_hello_world": "actor Main...",
  "interop_gurudev": {
    "possui_bridge": false,
    "modos_interop": [],
    "observacoes": "Informações de interoperabilidade a serem determinadas."
  }
}
```

### Linguagens Incluídas

**Modernas**: Haskell, Zig, Lua, Pony, Chapel, Carbon, Odin
**Proof Assistants**: Coq, Agda, Lean, Idris, ATS  
**GPU/Paralelas**: CUDA C, OpenCL C, Metal Shading Language, SYCL
**Históricas**: ALGOL 60, B, BCPL, APL, Simula 67, Modula-2, Eiffel
**E muitas outras...**

## Contribua

Alexandria implementa o paradigma **ProCP (Programação Comparada)** baseado no white paper de Guilherme Gonçalves Machado. Pull requests são bem-vindos para:

- Adicionar novas linguagens ao banco de dados
- Melhorar metadados de interoperabilidade  
- Implementar funcionalidades de análise ProCP
- Corrigir informações técnicas
- Expandir a CLI com novos comandos de análise

Veja `CONTRIBUTING.md` para detalhes sobre como contribuir.

## Roadmap ProCP

- **Fase 1** ✅: Coleta de dados (37+ linguagens)  
- **Fase 2** 🔄: Modelagem de pacotes/bibliotecas
- **Fase 3** 📋: DSL MVP + CLI expandida
- **Fase 4** 📋: Marketplace de stacks certificados

## Licença

MIT - Ver arquivo `LICENSE` para detalhes completos.

**Nota**: O paradigma ProCP é propriedade intelectual de Guilherme Gonçalves Machado (CC-BY-NC 4.0 para uso acadêmico).

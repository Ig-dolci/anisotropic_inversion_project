# Projeto de Pós-Doutorado

Repositório contendo o projeto de pesquisa de pós-doutorado.

## Estrutura do Repositório

```
usp_postdoc/
├── projeto_posdoc.tex       # Documento principal
├── referencias.bib          # Arquivo de referências bibliográficas
├── figuras/                 # Imagens e gráficos
├── tabelas/                 # Arquivos de dados e tabelas
├── scripts/                 # Scripts auxiliares (Python, etc.)
└── README.md               # Este arquivo
```

## Como Compilar

### Usando pdflatex

```bash
pdflatex projeto_posdoc.tex
bibtex projeto_posdoc
pdflatex projeto_posdoc.tex
pdflatex projeto_posdoc.tex
```

### Usando latexmk (recomendado)

```bash
latexmk -pdf projeto_posdoc.tex
```

### Limpando arquivos temporários

```bash
latexmk -c
```

## Requisitos

- LaTeX (TeX Live, MacTeX, ou MiKTeX)
- Pacotes necessários (geralmente já incluídos nas distribuições):
  - babel (português)
  - graphicx
  - amsmath
  - hyperref
  - booktabs
  - etc.

## Estrutura do Documento

1. **Identificação** - Dados básicos do projeto
2. **Resumo** - Síntese da proposta
3. **Introdução e Justificativa** - Contextualização e motivação
4. **Objetivos** - Geral e específicos
5. **Metodologia** - Abordagem e etapas da pesquisa
6. **Cronograma** - Planejamento temporal
7. **Resultados Esperados** - Produtos e impactos
8. **Histórico do Candidato** - Formação e experiência
9. **Infraestrutura** - Recursos disponíveis
10. **Referências** - Bibliografia

## Notas

- Sempre compile duas vezes após alterar referências ou sumário
- Use o arquivo `referencias.bib` para gerenciar bibliografia
- Figuras devem estar no diretório `figuras/`
- Para incluir uma figura: `\includegraphics[width=0.8\textwidth]{figuras/nome_da_figura.pdf}`

## Contato

[Seu Nome]  
[email@exemplo.com]

# Makefile para compilar o projeto LaTeX

# Nome do arquivo principal (sem extensão)
MAIN = projeto_posdoc

# Compilador
LATEX = pdflatex
BIBTEX = bibtex

# Opções
LATEX_FLAGS = -interaction=nonstopmode -halt-on-error

# Alvo padrão
.PHONY: all
all: pdf

# Compilar PDF completo (com bibliografia)
.PHONY: pdf
pdf:
	@echo "Compilando $(MAIN).tex..."
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex
	@if grep -q "\\citation" $(MAIN).aux; then \
		echo "Processando bibliografia..."; \
		$(BIBTEX) $(MAIN); \
		$(LATEX) $(LATEX_FLAGS) $(MAIN).tex; \
	fi
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex
	@echo "✓ PDF gerado: $(MAIN).pdf"

# Compilação rápida (sem bibliografia)
.PHONY: quick
quick:
	@echo "Compilação rápida..."
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex

# Limpar arquivos temporários
.PHONY: clean
clean:
	@echo "Removendo arquivos temporários..."
	@rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot
	@rm -f *.fdb_latexmk *.fls *.synctex.gz
	@rm -f *.nav *.snm *.vrb
	@echo "✓ Limpeza concluída"

# Limpar tudo (incluindo PDF)
.PHONY: cleanall
cleanall: clean
	@echo "Removendo PDF..."
	@rm -f $(MAIN).pdf
	@echo "✓ Limpeza completa"

# Abrir o PDF
.PHONY: view
view: pdf
	@echo "Abrindo PDF..."
	@open $(MAIN).pdf || xdg-open $(MAIN).pdf || start $(MAIN).pdf

# Ajuda
.PHONY: help
help:
	@echo "Makefile para compilar projeto LaTeX"
	@echo ""
	@echo "Uso:"
	@echo "  make           - Compila o PDF completo"
	@echo "  make pdf       - Compila o PDF completo"
	@echo "  make quick     - Compilação rápida (sem bibliografia)"
	@echo "  make clean     - Remove arquivos temporários"
	@echo "  make cleanall  - Remove tudo (incluindo PDF)"
	@echo "  make view      - Compila e abre o PDF"
	@echo "  make help      - Mostra esta ajuda"

# Makefile para compilar arquivos .puml em imagens PNG usando o comando plantuml

# Diretórios
SRCDIR := src
BUILDDIR := build

# Encontrar todos os arquivos .puml no diretório de origem
PUML_FILES := $(wildcard $(SRCDIR)/*.puml)

# Gerar a lista dos arquivos PNG correspondentes em build/
PNG_FILES := $(patsubst $(SRCDIR)/%.puml,$(BUILDDIR)/%.png,$(PUML_FILES))

.PHONY: all clean

# Alvo padrão
all: $(PNG_FILES)

# Regra para gerar cada PNG a partir do respectivo .puml
$(BUILDDIR)/%.png: $(SRCDIR)/%.puml
	@mkdir -p $(BUILDDIR)
	plantuml -tpng -o $(BUILDDIR) $<

# Alvo para limpar os arquivos gerados
clean:
	rm -rf $(BUILDDIR)


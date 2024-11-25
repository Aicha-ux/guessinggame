# Variables
README = README.md
SCRIPT = guessinggame.sh

# Règle par défaut
all: $(README)

# Génération de README.md
$(README): $(SCRIPT)
	echo "# Projet Guessing Game" > $(README)
	echo "" >> $(README)
	echo "Ce projet consiste à deviner le nombre de fichiers dans le répertoire courant." >> $(README)
	echo "" >> $(README)
	echo "## Date et heure de génération" >> $(README)
	echo "`date`" >> $(README)
	echo "" >> $(README)
	echo "## Nombre de lignes dans le script \`$(SCRIPT)\`" >> $(README)
	wc -l < $(SCRIPT) | awk '{print $$1 " lignes"}' >> $(README)
	echo "" >> $(README)

# Nettoyage
clean:
	rm -f $(README)

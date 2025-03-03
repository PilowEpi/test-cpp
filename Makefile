# Compilateur C++
CXX = g++

# Drapeaux de compilation
CXXFLAGS = -Wall -Wextra -Werror -std=c++17

# Répertoires
SRC_DIR = src
INCLUDE_DIR = include
BUILD_DIR = build

# Fichiers source
SRCS = $(wildcard $(SRC_DIR)/*.cpp)

# Fichiers objet
OBJS = $(SRCS:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

# Nom de l'exécutable
TARGET = test_cpp

# Dossier de sortie
BUILD_DIR := build

# Créer le dossier de sortie s'il n'existe pas
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Règle pour compiler les fichiers source en fichiers objet
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -I$(INCLUDE_DIR) -c $< -o $@

# Règle pour lier les fichiers objet en un exécutable
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $@

# Règle par défaut
all: $(BUILD_DIR) $(TARGET)

# Règle pour nettoyer les fichiers générés
clean:
	rm -rf $(BUILD_DIR) $(TARGET)

# Règle pour afficher les règles de compilation
.PHONY: all clean
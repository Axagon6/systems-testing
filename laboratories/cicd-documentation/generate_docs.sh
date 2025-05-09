#!/bin/bash
# save as generate_docs.sh

echo "Generating Doxygen configuration..."
doxygen -g

echo "Modifying Doxyfile..."
sed -i 's/EXTRACT_ALL.*/EXTRACT_ALL = YES/' Doxyfile
sed -i 's/RECURSIVE.*/RECURSIVE = YES/' Doxyfile
sed -i 's/FILE_PATTERNS.*/FILE_PATTERNS = *.py/' Doxyfile
sed -i 's|INPUT.*|INPUT = .|' Doxyfile
sed -i 's/GENERATE_LATEX.*/GENERATE_LATEX = NO/' Doxyfile

echo "Running Doxygen..."
doxygen Doxyfile

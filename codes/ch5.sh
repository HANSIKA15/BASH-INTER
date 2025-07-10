#!/bin/bash

# Bioinformatics Bash Tool - Using Flow Control

PS3="Select a task: "
options=("Check FASTA File" "Count Sequences" "Nucleotide Frequencies" "Find First Stop Codon" "Exit")

select opt in "${options[@]}"
do
    case $opt in

        "Check FASTA File")
            echo "Enter FASTA filename:"
            read file
            if [ -f "$file" ]; then
                echo " File '$file' found."
            else
                echo " File not found!"
            fi
            ;;

        "Count Sequences")
            echo "Enter FASTA filename:"
            read file
            if [ ! -f "$file" ]; then
                echo " File does not exist."
                continue
            fi
            count=0
            while read line; do
                if [[ $line == ">"* ]]; then
                    count=$((count + 1))
                fi
            done < "$file"
            echo " Number of sequences: $count"
            ;;

        "Nucleotide Frequencies")
            echo "Enter DNA sequence (no spaces):"
            read DNA
            echo "A: $(echo "$DNA" | grep -o "A" | wc -l)"
            echo "T: $(echo "$DNA" | grep -o "T" | wc -l)"
            echo "G: $(echo "$DNA" | grep -o "G" | wc -l)"
            echo "C: $(echo "$DNA" | grep -o "C" | wc -l)"
            ;;

        "Find First Stop Codon")
            echo "Enter DNA sequence (no spaces):"
            read DNA
            index=0
            codon=""
            until [[ "$codon" == "TAA" || "$codon" == "TAG" || "$codon" == "TGA" ]]; do
                codon=${DNA:$index:3}
                echo "🔎 Reading codon: $codon"
                index=$((index + 3))
                if [ $index -ge ${#DNA} ]; then
                    echo " No stop codon found."
                    break
                fi
            done
            if [[ "$codon" == "TAA" || "$codon" == "TAG" || "$codon" == "TGA" ]]; then
                echo " Stop codon encountered: $codon"
            fi
            ;;

        "Exit")
            echo " Exiting program."
            break
            ;;

        *)
            echo "Invalid option, try again."
            ;;
    esac
done

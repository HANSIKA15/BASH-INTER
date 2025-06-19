#!/bin/bash

file="example.fasta"

if [[ ! -f "$file" ]]; then
    echo "Error: File '$file' not found!"
    exit 1
fi
# CODE 2 
count=$(grep -c "^>" "$file")
echo "Total sequences: $count"
#!/bin/bash
echo "First argument: $1"
echo "Total arguments: $#"
#!/bin/bash

count_sequences() {
    file=$1
    count=$(grep -c "^>" "$file")
    echo "Number of sequences in $file: $count"
}
# CODE 3 
# Usage:
count_sequences "example.fasta"
#!/bin/bash

count=0

while read line; do
  if [[ $line == ">"* ]]; then
    count=$((count + 1))
  fi
done < sequences.fasta

echo "Number of sequences in the file: $count"
#!/bin/bash

count_sequences() {
    file=$1
    count=$(grep -c "^>" "$file")
    echo "Number of sequences in $file: $count"
}
# CODE 4
# Usage:
count_sequences "example.fasta"
#!/bin/bash

if [ -f "data.txt" ]; then
    echo "File exists!"
else
    echo "File does not exist!"
fi
#!/bin/bash

calculate_gc_content() {
    file=$1
    seq=$(grep -v "^>" "$file" | tr -d '\n')
    gc=$(echo "$seq" | grep -o "[GCgc]" | wc -l)
    total=$(echo "$seq" | wc -c)
    gc_content=$(echo "scale=2; $gc*100/$total" | bc)
    echo "GC Content: $gc_content%"
}
# CODE 5 
# Usage:
calculate_gc_content "example.fasta"
#!/bin/bash

echo "Enter your name:"
read name
echo "Good morning, $name!"

# CODE 6 
#!/bin/bash
# A simple script
echo "Hello hansika , WSL Bash script is working!"

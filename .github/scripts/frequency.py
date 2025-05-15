import sys
from collections import Counter

def count_vowels(file_path):
    try:
        with open(file_path, 'r') as f:
            text = f.read().lower()
        vowels = "aeiou"
        filtered = [char for char in text if char in vowels]
        counts = Counter(filtered)
        return counts
    except FileNotFoundError:
        print(f"File not found: {file_path}")
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python frequency.py <file_path>")
        sys.exit(1)
    result = count_vowels(sys.argv[1])
    print(result)

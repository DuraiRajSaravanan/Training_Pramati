grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" testingthemail

grep '\(([0-9]\{3\})\|[0-9]\{3\}\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' testingthemail

grep -o '201[0-8]\{1\}' testingthemail

FILE = "testingthemail"

echo "${FILE%%.*}"

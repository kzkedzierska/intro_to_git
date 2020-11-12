Create the file.

```bash
touch commitment_issues.txt
```

Add text.

```bash
echo "Here we are creating files, learning git." >> commitment_issues.txt
```

Commit the changes.

```bash
git add . && git commit -m "Solving exercise 2"
```

Add new line to the file.

```bash
echo "And it's not that hard! :)" >> commitment_issues.txt
```

And amend last commit.

```bash
git add .
git commit --ammend
```

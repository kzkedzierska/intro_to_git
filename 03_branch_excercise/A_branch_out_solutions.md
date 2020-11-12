Copy the last file we created.

```bash
cp commitment_issues.txt checking_out_branches.txt
```

Create new branch.

```bash
git checkout -b exercising
```

Edit the file and add new lines.

```bash
echo "We're increasing the complexity!" >> checking_out_branches.txt
```

Now commit the changes.

```bash
git add . && git commit -m "Testing out branches"
```

Check the status and the change of the file.

```bash
git status
head checking_out_branches.txt
```

Now, checkout and see if you can see the changes on the master branch.

```bash
git status
head checking_out_branches.txt
```



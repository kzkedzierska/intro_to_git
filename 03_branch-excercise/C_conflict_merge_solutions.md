Make sure we're on the proper branch.

```bash
git checkout master
```

Edit the file.

```bash
echo "We're gonna make two different changes to the same file. This is how you're get in trouble" >> checking_out_branches.txt
```

Commit.

```bash
git add . && git commit -m "Putting first edits"
```

Now, let's checkout, edit and commit.

```bash
git checkout exercises
echo "Let's see what that gets us." >> checking_out_branches.txt
git add . && git commit -m "Putting in the second edit"
```

Now, the merging.

```bash
git merge exercises
```

Oops, error. We need to see what git can tell us.

```bash 
git status
```

Let's look up the file changes and edit what we want to keep. Remember to remove all `<<<<<<<`, `=======` and `>>>>>>>`.

```bash
vim checking_out_branches.txt
```

Now add changes and commit.
```bash
git commit -a -m "Fixed merge conflict"
```

And voila! You fixed your first merge conflict.

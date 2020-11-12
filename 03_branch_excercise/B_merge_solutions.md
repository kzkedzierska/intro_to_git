Merge the last branch.

```bash
git checkout master
git merge exercising
```

Now compare the results on both branches. Start with the old one.

```bash
git checkout exercising
git status
head checking_out_branches.txt
```

And now, the master.

```bash
git checkout master
git status
head checking_out_branches.txt
```

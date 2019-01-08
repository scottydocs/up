## 🎈 Up
A simple bash script that allows you to quickly move up a number of directories from the command line.

I modified this really useful script from the original posted [here](https://stackoverflow.com/questions/188162/what-is-the-most-useful-script-youve-written-for-everyday-life/245724#245724). 

## 🎬 Getting Started
To add the Up script to your terminal:

1. Edit your `.bashrc file`, the shell script that Bash runs whenever you start it:

   ```vim ~/.bashrc```

   You can use another text editor like `vi` or `atom` or `sublime`.
   
2. Add the Up script to the file:

   ```up ()
   {
      LIMIT=$1
      P=$PWD

      echo "Moving $LIMIT directories up from $P"

      for ((i=1; i <= LIMIT; i++))
      do
          P=$P/..
      done
      cd $P
    }
    ```
3. Write and save the changes using `:wq`.

4. Reload your bash file:

   ```source ~/.bashrc``` 

   Alternatively, run the shortcut:

   ```. ~/.bashrc```
   
You can now use the script to move up a number of directories from you current location.

## 💻 Using Up
To use the script, you can use `up` followed by `N`, the number of directories you want to move up:

`up N`

For example, if you are in `/git/repository1/folder1/sub-folder1/sub-folder2/sub-folder3/` and you want to move up to the `git` directory, you can run: 

```up 5```

Alternatively, you could move to `folder1` using:

```up 4```

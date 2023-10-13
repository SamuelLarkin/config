# Configuration Files

* [Difference Between `.bashrc`, `.bash-profile`, and `.profile`](https://www.baeldung.com/linux/bashrc-vs-bash-profile-vs-profile)
* [What are the functional differences between .profile .bash_profile and .bashrc](https://serverfault.com/questions/261802/what-are-the-functional-differences-between-profile-bash-profile-and-bashrc)


`.bash_profile` and `.bashrc` are specific to `bash`, whereas `.profile` is read by many shells in the absence of their own shell-specific config files.
(`.profile` was used by the original Bourne shell.) `.bash_profile` or `.profile` is read by login shells, along with `.bashrc`; subshells read only `.bashrc`.
(Between job control and modern windowing systems, `.bashrc` by itself doesn't get used much. If you use `screen` or `tmux`, screens/windows usually run subshells instead of login shells.)

The idea behind this was that one-time setup was done by `.profile` (or shell-specific version thereof), and per-shell stuff by `.bashrc`.
For example, you generally only want to load environment variables once per session instead of getting them whacked any time you launch a subshell within a session, whereas you always want your aliases (which aren't propagated automatically like environment variables are).

Other notable shell config files:

`/etc/bash_profile` (fallback `/etc/profile`) is read before the user's .profile for system-wide configuration, and likewise `/etc/bashrc` in subshells (no fallback for this one).
Many systems including Ubuntu also use an `/etc/profile.d` directory containing shell scriptlets, which are `.` (`source`)-ed from `/etc/profile`; the fragments here are per-shell, with `*.sh` applying to all Bourne/POSIX compatible shells and other extensions applying to that particular shell.

# Bash Colors
[Script to display all terminal colors](https://askubuntu.com/a/1044802)
```sh
msgcat --color=test
```

# Putty Colors
We need to use `putty-256color` instead of `xterm-256color` or else the `Home` key is not working.

[Putty shows prompt with no color, but Linux SSH can](https://superuser.com/a/1502895)
In Putty, change Settings -> Connection > Data > Terminal-type string to: `putty-256color`.
["Emulate" 256 colors in PuTTY terminal](https://superuser.com/a/436928)
1. Configure Putty

In Settings > Windows > Colours there is a check box for "Allow terminal to use xterm 256-colour mode".
2. Let the app know

You'll probably have to change Settings -> Connection > Data > Terminal-type string to: `xterm-256color`

if your server has a terminfo entry for `putty-256color`, typically in `/usr/share/terminfo/p/putty-256color`, you can set `Putty`'s Terminal-Type to `putty-256color` instead.

The main thing here is to make the server use an available `Terminfo` entry that most closely matches the way `Putty` is configured.

## 24bit
* [Getting 24-bit color working in terminals](https://pisquare.osisoft.com/s/Blog-Detail/a8r1I000000GvXBQA0/console-things-getting-24bit-color-working-in-terminals)


# LSCOLORS Schemes
```sh
for theme in $(vivid themes); do     echo "Theme: $theme";     LS_COLORS=$(vivid generate $theme);     ls;     echo; done
vivid generate one-light
LSCOLORS=$(vivid generate one-light)
```


# Tips-and-Tricks
## Sort
Sort according to a set of columns:
```sh
zcat FILE.gz | awk -F'\t' '!_[$4,$5]++'
```

## Filtering
Filtering tsv files based on a subset of columns.
Provided by Marc.
```sh
# Filter-in
awk -F'\t' 'NR==FNR{a[$4,$5];next} ($4,$5) in a'    uniq.DEVTEST_2022_${BIFILTER}.tsv uniq.TRAIN_2021-2016_${BIFILTER}.tsv > TRAIN_indev.tsv
```
```sh
# Filter-out
awk -F'\t' 'NR==FNR{a[$4,$5];next} !(($4,$5) in a)' uniq.DEVTEST_2022_${BIFILTER}.tsv uniq.TRAIN_2021-2016_${BIFILTER}.tsv > TRAIN_notindev.tsv
```

## JSONL
### Compare
Compare two jsonl files that are not in the same order.
This implies that we need to sort the files on some `key`.
To a trick a la `Schwartian transform` where we prepend the sort `key`, sort on that `key` and the remove the `key`.
```sh
jqdiff \
  <(zcat train.jsonl.gz \
    | jq --compact-output --raw-output '[.id, .|@text] | @tsv' \
    | sort -k1,1 \
    | cut -f2,2) \
  <(zcat source/train.jsonl.gz \
    | jq --compact-output --raw-output '[.id, .|@text] | @tsv' \
    | sort -k1,1 \
    | cut -f 2,2)
```

### Parallel Processing
```sh
function process {
   cat
}
export -f process

zcat input.gz \
    | time \parallel \
       --keep-order \
       --spreadstdin \
       --recend='\n' \
       --env=process \
       'process' \
| gzip \
> output.gz
```

# git
[How to remove a remote branch ref from local (gh-pages)](https://stackoverflow.com/a/64618529)
```sh
git update-ref -d refs/remotes/origin/gh-pages
```

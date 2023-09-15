# A collection of useful .gitignore templates 

- ```.gitignore```세팅 언어별로 다 정리되어 있다. 굿 👍💕🙌

  - https://github.com/github/gitignore/

<hr>

# Rust .gitignore(macOS, LinuxOS)

```bash
echo "/target" >> .gitignore &&
echo "# Result\xa\xa\x60\x60\x60\xa\xa\x60\x60\x60" >> README.md &&
echo ".DS_Store" >> .gitignore &&
echo "/.vscode" >> .gitignore &&
echo "# Generated by Cargo" >> .gitignore  &&
echo "# will have compiled files and executables" >> .gitignore &&
echo "debug/" >> .gitignore &&

echo "# Remove Cargo.lock from gitignore if creating an executable, leave it for libraries" >> .gitignore &&
echo "# More information here https://doc.rust-lang.org/cargo/guide/cargo-toml-vs-cargo-lock.html" >> .gitignore &&
echo "Cargo.lock" >> .gitignore &&

echo "# These are backup files generated by rustfmt" >> .gitignore &&
echo "**/*.rs.bk" >> .gitignore &&

echo "# MSVC Windows builds of rustc generate these, which store debugging information" >> .gitignore &&
echo "*.pdb" >> .gitignore &&

echo "dist/" >> .gitignore &&
echo "pkg/" >> .gitignore &&
```

- ```WindowsOS```(PowerShell)

```
echo "# Result`r`n`r`n```````n`r`n```````n" >> README.md &&
echo "/target`r`nCargo.lock`r`n" >> .gitignore
```

- ```WindowsOS```(PowerShell) ver.2
```
echo "# Generated by Cargo`r`n# will have compiled files and executables`r`ndebug/`r`ntarget/`r`n `r`n`r`n# Remove Cargo.lock from gitignore if creating an executable, leave it for libraries`r`n# More information here https://doc.rust-lang.org/cargo/guide/cargo-toml-vs-cargo-lock.html`r`nCargo.lock`r`n`r`n `r`n# These are backup files generated by rustfmt`r`n**/*.rs.bk`r`n`r`n `r`n# MSVC Windows builds of rustc generate these, which store debugging information`r`n*.pdb`r`n" >> .gitignore &&

echo "# Result`r`n`r`n```````n`r`n```````n" >> README.md
```

https://devblogs.microsoft.com/scripting/powertip-new-lines-with-powershell/

- ```macOS & LinuxOS```

```
echo "/target\xa\.DS_Store\xa/.vscode\xa# Generated by Cargo\xa# will have compiled files and executables\xadebug/\xatarget/\xa# Remove Cargo.lock from gitignore if creating an executable, leave it for libraries\xa# More information here https://doc.rust-lang.org/cargo/guide/cargo-toml-vs-cargo-lock.html\xaCargo.lock\xa# These are backup files generated by rustfmt\xa*/*.rs.bk\xa# MSVC Windows builds of rustc generate these, which store debugging information\xa*.pdb\xadist/\xapkg/\xa" >> .gitignore &&
echo "# Result\xa\xa\x60\x60\x60\xa\xa\x60\x60\x60" >> README.md
```

# TypeScript .gitignore

```bash
echo "node_modules/" >> .gitignore &&
echo ".DS_Store" >> .gitignore &&
echo "package-lock.lock" >> .gitignore &&
echo ".vscode/" >> .gitignore &&
echo "dist/" >> .gitignore &&
echo "pkg/" >> .gitignore &&
echo "build/" >> .gitignore &&

```

<hr>

# ```echo``` 유니코드 출력하기

```
echo $'\uf115'
```


<hr>


# Power10k Install

https://economiceco.tistory.com/m/16511

- 1. sudo apt install zsh

```
$ sudo apt install zsh
```

- 2. Nerd Font설치

https://github.com/romkatv/powerlevel10k#fonts

- . ohmyzsh설치

https://ohmyz.sh/

https://ohmyz.sh/#install

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

ohmyzsh github
https://github.com/ohmyzsh/ohmyzsh

- 4. power10k설치

https://github.com/romkatv/powerlevel10k

- 5. bashrc 설정 최상단에 추가
```bash
exec zsh
```
 
- 6. 터미널에서 zsh 치면 설정화면 나옴 ```.zshrc``` 설정 끝내고 Plugins 추가
```bash
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
    # other plugins..
    zsh-syntax-highlighting
    zsh-autosuggestions
    z
    fzf # 필요하면 추가하세요
    fasd # 필요하면 추가하세요
)
```

- 7. 설정 끝내고 Plugins 추가
```bash
cd .oh-my-zsh/plugins
```
plugins폴더 들어가서

git clone 으로 강제로 넣어주기


zsh-z
https://github.com/agkozak/zsh-z

https://github.com/zsh-users/zsh-autosuggestions

https://github.com/zsh-users/zsh-syntax-highlighting

- 8. path 관리는

.zshrc 에서 할 예정

```bash
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH




끝은 :$PATH로 끝내고 그 사이에 폴더 넣고 : 으로 분리한다.


내 설정
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.cargo/bin:$HOME/.zig:$HOME/zls:$PATH:
```

- 9. 내가 세팅한 PATH확인방법

```bash
$PATH
```

https://github.com/YoungHaKim7/rust_vim_setting

dotfiles_linux/참조하세요



<br>

<hr>

# shell명령어 정리잘됨.commands.dev

https://www.commands.dev/

<hr>

# xxd 사용법

- https://twpower.github.io/122-xxd-command-usage

  - https://linux.die.net/man/1/xxd

<hr>

# Regular Expression

https://www.regexpal.com/

# Shell_Script

- https://www.guru99.com/introduction-to-shell-scripting.html

# ASCII Table(16진수로 외우자)

- https://www.asciitable.xyz/

- https://www.asciitable.com/

- https://learn.microsoft.com/en-us/cpp/c-language/octal-and-hexadecimal-character-specifications?view=msvc-170

- https://en.wikipedia.org/wiki/Unicode

- https://www.unicode.org/versions/Unicode15.0.0/

- http://xahlee.info/comp/unicode_index.html?q=

- http://xahlee.info/comp/ascii_chars.html

<table border="1">
    <tr>
    <td colspan="8" align="center"></a>주로 쓰는 ascii & Unicode 정리</td>
    </tr>
    <tr align="center">
        <td>char✨</td>
        <td>Escape </td>
        <td>16진수Hx</td>
        <td>설명Description</td>
        <td>10진수Dec</td>
        <td>8진수Oct</td>
        <td>2진수Binary</td>
        <td>In Unicode</td>
    </tr>
    <tr align="center">
        <td>LF</td>
        <td>\xa</td>
        <td>0xA</td>
        <td>NL line feed, new line</td>
        <td>10</td>
        <td>0o12</td>
        <td>0b1010</td>
    </tr>
    <tr align="center">
        <td>Space</td>
        <td>\x20</td>
        <td>0x20</td>
        <td>Space</td>
        <td>32</td>
        <td>0o40</td>
        <td>0b00100000</td>
    </tr>
    <tr align="center">
        <td>!</td>
        <td>\x21</td>
        <td>0x21</td>
        <td>Exclamation mark</td>
        <td>33</td>
        <td>0o41</td>
        <td>0b00100001</td>
    </tr>
    <tr align="center">
        <td>`</td>
        <td>\x60</td>
        <td>0x60</td>
        <td>Backtic, Grave</td>
        <td>96</td>
        <td>0o140</td>
        <td>0b1100000</td>
        <td>U+0060 <br>`<br> GRAVE ACCENT</td>
    </tr>
</table>

<br>

<hr>

# SILQ Unicode

https://github.com/YoungHaKim7/silq_project

<table border="1">
    <tr>
    <td colspan="5" align="center">양자 코딩  자주 쓰는 Unicode</td>
    </tr>
    <tr align="center">
        <td>Symbol</td>
        <td>Unicode(Hex)</td>
        <td>LaTeX ShortCut</td>
        <td>Name</td>
        <td>10진수Dec</td>
    </tr>
    <tr align="center">
        <td>→</td>
        <td>2192</td>
        <td>\to</td>
        <td>Rightwards Arrow</td>
        <td>8594</td>
    </td>
    </tr>
    <tr align="center">
        <td>ℕ</td>
        <td>2115</td>
        <td>\bn</td>
        <td>Double-Struck Capital N</td>
        <td>8469</td>
    </td>
    </tr>
    <tr align="center">
        <td>ℝ</td>
        <td>211D</td>
        <td>\br</td>
        <td>Double-Struck Capital R</td>
        <td>8477</td>
    </td>
    </tr>
    <tr align="center">
        <td>π</td>
        <td>3A0</td>
        <td>\pi</td>
        <td>Greek Capital Letter Pi</td>
        <td>928</td>
    </td>
    </tr>
    <tr align="center">
        <td>𝔹</td>
        <td>1D539</td>
        <td>\bb</td>
        <td>Mathematical Double-Struck Capital B</td>
        <td>120121</td>
    </td>
    </tr>
    <tr align="center">
        <td>⋅</td>
        <td>22C5</td>
        <td>\cdot</td>
        <td>Dot Operator</td>
        <td>8901</td>
    </td>
    </tr>
    <tr align="center">
        <td>θ</td>
        <td>398</td>
        <td>\theta</td>
        <td>Greek Capital Letter Theta</td>
        <td>920</td>
    </td>
    </tr>
    <tr align="center">
        <td>ψ</td>
        <td>3A8</td>
        <td>\psi</td>
        <td>Greek Capital Letter PSI</td>
        <td>936</td>
    </td>
    </tr>
    <tr align="center">
        <td>λ</td>
        <td>39B</td>
        <td>\lambda</td>
        <td>Greek Capital Letter LAMDA</td>
        <td>923</td>
    </td>
    </tr>
    <tr align="center">
        <td>¬</td>
        <td>AC</td>
        <td>\neg</td>
        <td>Not Sign</td>
        <td>172</td>
    </td>
    </tr>
    <tr align="center">
        <td>×</td>
        <td>D7</td>
        <td>\times</td>
        <td>Multiplication Sign</td>
        <td>215</td>
    </td>
    </tr>
    <tr align="center">
        <td>±</td>
        <td>B1</td>
        <td>\pm</td>
        <td>Plus-Minus Sign</td>
        <td>177</td>
    </td>
    </tr>
    <tr align="center">
        <td>𝟙</td>
        <td>1D7D9</td>
        <td>\b1</td>
        <td>Mathematical Double-Struck Digit One</td>
        <td>120793</td>
    </td>
    </tr>
</table>

<br>

# Memory 2, 8 , 16 pattern

<table border="1">
    <tr>
    <td colspan="5" align="center"></a>Binary vs  Octal vs Decimal vs Hexadecimal</td>
    </tr>
    <tr align="center">
        <td>16진수Hx</td>
        <td>설명Description</td>
        <td>10진수Dec</td>
        <td>8진수Oct</td>
        <td>2진수Binary</td>
    </tr>
        <tr align="center">
        <td>0xff</td>
        <td></td>
        <td>255</td>
        <td>0o377</td>
        <td>0b11111111</td>
    </tr>
</table>

<br>

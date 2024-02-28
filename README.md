# Qito

Qito is a custom CLI-based password management solution that is quickly accessible via your terminal.

> Fun fact: The name 'qito' is inspired from [Qitou](https://www.ancient-symbols.com/qitou), also called Earth Spirits, who are the guardians of the tombs in China. (qito here guards your passwords instead :p)

### Why Qito?
When it comes to your passwords, you should be in control of how it is stored and where it is stored. Qito also provides an awesome CLI interface for quick access to your passwords.

## Installation

Run `build.sh` from top directory

```
$ ./build.sh
++ test
++ go fmt ./...
++ go test -count=1 ./...
?   	github.com/sparsh2/qito	[no test files]
?   	github.com/sparsh2/qito/cmd	[no test files]
?   	github.com/sparsh2/qito/cmd/add	[no test files]
?   	github.com/sparsh2/qito/cmd/copy	[no test files]
?   	github.com/sparsh2/qito/cmd/list	[no test files]
?   	github.com/sparsh2/qito/cmd/remove	[no test files]
?   	github.com/sparsh2/qito/cmd/update	[no test files]
?   	github.com/sparsh2/qito/common	[no test files]
?   	github.com/sparsh2/qito/password_manager	[no test files]
?   	github.com/sparsh2/qito/password_manager/services/clipboard	[no test files]
?   	github.com/sparsh2/qito/password_manager/services/password_generator	[no test files]
?   	github.com/sparsh2/qito/password_manager/services/storage	[no test files]
?   	github.com/sparsh2/qito/password_manager/services/storage/parser	[no test files]
ok  	github.com/sparsh2/qito/password_manager/services/storage/encryption	0.001s
++ build
++ python3 ./build.py
enter secret file path[~/.qito.psm]: 
Build successful!

$_
```

The CLI binary is built at `./target/qito`. You can add this path to your PATH variable or you can copy it to `$GOPATH/bin`

## Quick-start guide

### Add a new password

qito can also generate a password for you.
```
$ qito add gmail
Enter # of characters of type
Lowercase:3
Uppercase:4
Numbers:4
Special:2
added gmail password to database
$_
```

### Copy the password
```
$ qito copy gmail
copied gmail password to clipboard!
$_
```

### List all passwords
```
$ qito list
github
gmail
okta
test
$_
```
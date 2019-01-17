# IOSCodeChecker
一行代码解决iOS代码规范问题

只需要执行一次命令文件就可以给iOS项目，就可以给iOS工程增加代码风格规范检查功能，此项目依赖于 git hooks 每次代码 commit 的时候进行代码风格规范检查。

如何使用：

提取项目中得 setup-code-checker.command 文件放置到 git 工程的根目录，在终端cd到当前目录，执行命令并根据提示操作

```
./setup-code-checker.command
```

若提示无权限，则为 setup-code-checker.command 文件增加执行权限

```
> chmod +x setup-code-checker.command
```

Would you like to use the code checker ? [ yes / no ] 输入 yes 并回车为初始化操作，之后每次 commit 便会自动检查代码风格规范；输入 no 并回车为卸载操作，当不需要代码风格检查的时候执行此操作。

```
> yes
```



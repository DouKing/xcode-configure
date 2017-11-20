### Install

````bash
$ git clone https://github.com/douking/xcode-configure
$ cd xcode-configure/
$ ./install.sh
````
### IDETemplateMacros

[Xcode Help](https://help.apple.com/xcode/mac/9.0/index.html?localePath=en.lproj#/dev7fe737ce0)

IDETemplateMacros.plist 文件放置到不同的目录，其影响的范围也不同：

- 只对当前 Project 指定的用户（username）有影响

> <ProjectName>.xcodeproj/xcuserdata/[username].xcuserdatad/IDETemplateMacros.plist

- 对当前 Project 的所有成员有影响

> <ProjectName>.xcodeproj/xcshareddata/IDETemplateMacros.plist

- 对指定用户的 Workspace 下的 Project 有影响

> <WorkspaceName>.xcworkspace/xcuserdata/[username].xcuserdatad/IDETemplateMacros.plist

- 对所有成员 Workspace 下的 Project 有影响

> <WorkspaceName>.xcworkspace/xcshareddata/IDETemplateMacros.plist

- 对 Xcode 所有创建的文件都有影响

> ~/Library/Developer/Xcode/UserData/IDETemplateMacros.plist

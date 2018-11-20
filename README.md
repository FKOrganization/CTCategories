# CTCategories
组件化开发 初步尝试

先去开一个repo，这个repo就是我们私有Pod源仓库

pod repo add [私有Pod源仓库名字] [私有Pod源的repo地址]

创立一个文件夹，例如Project。把我们的主工程文件夹放到Project下：~/Project/MainProject

在~/Project下clone快速配置私有源的脚本repo：git clone git@github.com:FKOrganization/CTCategories.git

将ConfigPrivatePod的template文件夹下Podfile中source 'https://github.com/FKOrganization/CTCategories.git'改成第一步里面你自己的私有Pod源仓库的repo地址

将ConfigPrivatePod的template文件夹下upload.sh中PrivatePods改成第二步里面你自己的私有Pod源仓库的名字

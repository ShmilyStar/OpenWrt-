
# 该项目可云编译 OpenWrt
## 编译步骤：
### 1.权限配置： 
您需要确保 GITHUB_TOKEN 拥有适当的权限：  
转到您的 GitHub 仓库，点击“设置”。在左侧菜单中找到“Actions”部分。确保“Workflow permissions”选择了“Read and write permissions”。  
### 2.自定义设置build目录下setting.ini文件  
REPO_URL 为源码链接  
REPO_BRANCH 为分支名称  
CONFIG_FILE 为配置文件路径  
DEVICE_NAME 为设备名称  
DIY_P1_SH 为自定义设置1  
DIY_P2_SH 为自定义设置2  
### 3.开始编译流程
①如需生成配置文件后再编译首先运行<生成配置文件>Action，待运行成功后会在config目录下生成以设备名称命名的配置文件，然后运行<编译固件>Action，成功后会上传固件至release  
②如已有配置文件，将配置文件放在config目录下，修改build目录下setting.ini文件相关参数后，运行<编译固件>Action，成功后会上传固件至release

### 感谢大佬们的源码和付出 

<!-- - [天灵](https://github.com/1715173329)
- [lean](https://github.com/coolsnowwolf/lede)
- [lorz](https://github.com/1orz/My-action)
- [P3TERX](https://github.com/P3TERX/Actions-OpenWrt)
- [kenzok8](https://github.com/kenzok8/openwrt-packages)
- [sdf8057](https://github.com/sdf8057)
- [hanwckf](https://github.com/hanwckf/immortalwrt-mt798x)
- [padavanonly](https://github.com/padavanonly/immortalwrtARM) -->

|          [lean](https://github.com/coolsnowwolf/lede)         |        [天灵](https://github.com/1715173329)               |              [lorz](https://github.com/1orz/My-action)               |              [P3TERX](https://github.com/P3TERX/Actions-OpenWrt)               |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img width="60" src="https://avatars.githubusercontent.com/u/31687149?v=4"/> | <img width="60" src="https://avatars.githubusercontent.com/u/22235437?v=4" /> | <img width="60" src="https://avatars.githubusercontent.com/u/31647663?v=4" /> | <img width="60" src="https://avatars.githubusercontent.com/u/25927179?v=4" /> |
|          [kenzok8](https://github.com/kenzok8/openwrt-packages)         |           [sdf8057](https://github.com/sdf8057)          |              [hanwckf](https://github.com/hanwckf/immortalwrt-mt798x)               |              [padavanonly](https://github.com/padavanonly/immortalwrt-mt798x)               |
| <img width="60" src="https://avatars.githubusercontent.com/u/39034242?v=4"/> | <img width="60" src="https://avatars.githubusercontent.com/u/54014465?v=4" /> | <img width="60" src="https://avatars.githubusercontent.com/u/27666983?v=4" /> | <img width="60" src="https://avatars.githubusercontent.com/u/83120842?v=4" /> |







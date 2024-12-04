<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 LanguageTool server

[![集成程度](https://dash.yunohost.org/integration/languagetool.svg)](https://dash.yunohost.org/appci/app/languagetool) ![工作状态](https://ci-apps.yunohost.org/ci/badges/languagetool.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/languagetool.maintain.svg)

[![使用 YunoHost 安装 LanguageTool server](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=languagetool)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 LanguageTool server。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

LanguageTool is a multilingual grammar, style, and spell checker. This package provides the API server for use by other programs, like the LanguageTool extensions for browsers and word processors.


**分发版本：** 6.5~ynh1

**演示：** <https://api.languagetool.org/>

## 截图

![LanguageTool server 的截图](./doc/screenshots/screenshot.png)
![LanguageTool server 的截图](./doc/screenshots/screenshot_fr.png)

## 文档与资源

- 官方应用网站： <https://languagetool.org>
- 官方管理文档： <https://dev.languagetool.org/>
- 上游应用代码库： <https://github.com/languagetool-org/languagetool>
- YunoHost 商店： <https://apps.yunohost.org/app/languagetool>
- 报告 bug： <https://github.com/YunoHost-Apps/languagetool_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
或
sudo yunohost app upgrade languagetool -u https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>

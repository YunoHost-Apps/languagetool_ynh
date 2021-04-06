# LanguageTool server for YunoHost

[![Integration level](https://dash.yunohost.org/integration/languagetool.svg)](https://dash.yunohost.org/appci/app/languagetool) ![](https://ci-apps.yunohost.org/ci/badges/languagetool.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/languagetool.maintain.svg)  
[![Install languagetool with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=languagetool)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install LanguageTool quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
LanguageTool is a multilingual grammar, style, and spell checker. This package provides the API server for use by other programs, like the LanguageTool extensions for browsers and word processors.

**Shipped version:** 5.3

## Screenshots

![](https://github.com/YunoHost-Apps/languagetool_ynh/raw/master/screenshot.png)

## Demo

* [Official demo](https://api.languagetool.org/)

## Configuration

There is a configuration file at `/opt/yunohost/languagetool/languagetool.conf` (for the first install).
## Documentation

 * Official documentation: https://dev.languagetool.org/

#### Multi-user support

* Are LDAP and HTTP auth supported? **N/A**
* Can the app be used by multiple users? **N/A**

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/languagetool%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/languagetool/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/languagetool%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/languagetool/)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/languagetool_ynh/issues
 * App website: https://languagetool.org/
 * Upstream app repository: https://github.com/languagetool-org/languagetool
 * YunoHost website: https://yunohost.org/

---

## Developer info

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
or
sudo yunohost app upgrade languagetool -u https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
```

# Serveur LanguageTool pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/languagetool.svg)](https://dash.yunohost.org/appci/app/languagetool) ![](https://ci-apps.yunohost.org/ci/badges/languagetool.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/languagetool.maintain.svg)  
[![Installer languagetool avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=languagetool)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer LanguageTool rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble
LanguageTool est un correcteur d'orthographe, de grammaire et de style multilingue. Ce paquet fournit le serveur API pour utilisation depuis d'autres programmes, comme les extensions LangageTool pour navigateurs et logiciels de bureautique.

**Version incluse :** 5.7

## Captures d'écran

![](https://github.com/YunoHost-Apps/languagetool_ynh/raw/master/screenshot_fr.png)

## Démo

* [Démo officielle](https://api.languagetool.org/)

## Configuration

Il y a un fichier de configuration à `/opt/yunohost/languagetool/languagetool.conf` (pour la première installation).

## Documentation

 * Documentation officielle : https://dev.languagetool.org/

#### Support multi-utilisateur

* L'authentification LDAP et HTTP est-elle prise en charge ? **S/O**
* L'application peut-elle être utilisée par plusieurs utilisateurs ? **S/O**

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/languagetool%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/languagetool/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/languagetool%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/languagetool/)

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/languagetool_ynh/issues
 * Site de l'application : https://languagetool.org/fr/
 * Dépôt de l'application principale : https://github.com/languagetool-org/languagetool
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

**Seulement si vous voulez utiliser une branche de test pour le codage, au lieu de fusionner directement dans la banche principale.**
Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
ou
sudo yunohost app upgrade languagetool -u https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
```

<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# LanguageTool server pour YunoHost

[![Niveau d’intégration](https://apps.yunohost.org/badge/integration/languagetool)](https://ci-apps.yunohost.org/ci/apps/languagetool/)
![Statut du fonctionnement](https://apps.yunohost.org/badge/state/languagetool)
![Statut de maintenance](https://apps.yunohost.org/badge/maintained/languagetool)

[![Installer LanguageTool server avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=languagetool)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer LanguageTool server rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

LanguageTool est un correcteur d'orthographe, de grammaire et de style multilingue. Ce paquet fournit le serveur API pour utilisation depuis d'autres programmes, comme les extensions LangageTool pour navigateurs et logiciels de bureautique.


**Version incluse :** 6.5~ynh1

**Démo :** <https://api.languagetool.org/>

## Captures d’écran

![Capture d’écran de LanguageTool server](./doc/screenshots/screenshot.png)
![Capture d’écran de LanguageTool server](./doc/screenshots/screenshot_fr.png)

## Documentations et ressources

- Site officiel de l’app : <https://languagetool.org>
- Documentation officielle de l’admin : <https://dev.languagetool.org/>
- Dépôt de code officiel de l’app : <https://github.com/languagetool-org/languagetool>
- YunoHost Store : <https://apps.yunohost.org/app/languagetool>
- Signaler un bug : <https://github.com/YunoHost-Apps/languagetool_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
ou
sudo yunohost app upgrade languagetool -u https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>

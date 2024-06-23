<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# LanguageTool server YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/languagetool.svg)](https://dash.yunohost.org/appci/app/languagetool) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/languagetool.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/languagetool.maintain.svg)

[![Instalatu LanguageTool server YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=languagetool)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek LanguageTool server YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

LanguageTool is a multilingual grammar, style, and spell checker. This package provides the API server for use by other programs, like the LanguageTool extensions for browsers and word processors.


**Paketatutako bertsioa:** 6.4~ynh1

**Demoa:** <https://api.languagetool.org/>

## Pantaila-argazkiak

![LanguageTool server(r)en pantaila-argazkia](./doc/screenshots/screenshot_fr.png)
![LanguageTool server(r)en pantaila-argazkia](./doc/screenshots/screenshot.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://languagetool.org>
- Administratzaileen dokumentazio ofiziala: <https://dev.languagetool.org/>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/languagetool-org/languagetool>
- YunoHost Denda: <https://apps.yunohost.org/app/languagetool>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/languagetool_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
edo
sudo yunohost app upgrade languagetool -u https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>

<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# LanguageTool server untuk YunoHost

[![Tingkat integrasi](https://apps.yunohost.org/badge/integration/languagetool)](https://ci-apps.yunohost.org/ci/apps/languagetool/)
![Status kerja](https://apps.yunohost.org/badge/state/languagetool)
![Status pemeliharaan](https://apps.yunohost.org/badge/maintained/languagetool)

[![Pasang LanguageTool server dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=languagetool)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang LanguageTool server secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

LanguageTool is a multilingual grammar, style, and spell checker. This package provides the API server for use by other programs, like the LanguageTool extensions for browsers and word processors.


**Versi terkirim:** 6.5~ynh1

**Demo:** <https://api.languagetool.org/>

## Tangkapan Layar

![Tangkapan Layar pada LanguageTool server](./doc/screenshots/screenshot.png)
![Tangkapan Layar pada LanguageTool server](./doc/screenshots/screenshot_fr.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://languagetool.org>
- Dokumentasi admin resmi: <https://dev.languagetool.org/>
- Depot kode aplikasi hulu: <https://github.com/languagetool-org/languagetool>
- Gudang YunoHost: <https://apps.yunohost.org/app/languagetool>
- Laporkan bug: <https://github.com/YunoHost-Apps/languagetool_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
atau
sudo yunohost app upgrade languagetool -u https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>

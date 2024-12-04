<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# LanguageTool server для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/languagetool)](https://ci-apps.yunohost.org/ci/apps/languagetool/)
![Состояние работы](https://apps.yunohost.org/badge/state/languagetool)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/languagetool)

[![Установите LanguageTool server с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=languagetool)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить LanguageTool server быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

LanguageTool is a multilingual grammar, style, and spell checker. This package provides the API server for use by other programs, like the LanguageTool extensions for browsers and word processors.


**Поставляемая версия:** 6.5~ynh1

**Демо-версия:** <https://api.languagetool.org/>

## Снимки экрана

![Снимок экрана LanguageTool server](./doc/screenshots/screenshot.png)
![Снимок экрана LanguageTool server](./doc/screenshots/screenshot_fr.png)

## Документация и ресурсы

- Официальный веб-сайт приложения: <https://languagetool.org>
- Официальная документация администратора: <https://dev.languagetool.org/>
- Репозиторий кода главной ветки приложения: <https://github.com/languagetool-org/languagetool>
- Магазин YunoHost: <https://apps.yunohost.org/app/languagetool>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/languagetool_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
или
sudo yunohost app upgrade languagetool -u https://github.com/YunoHost-Apps/languagetool_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>

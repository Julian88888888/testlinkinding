# Налаштування GitHub Pages

## Проблема: 404 помилка

Якщо ви бачите 404 помилку для файлів на GitHub Pages, виконайте наступні кроки:

## Крок 1: Перевірте налаштування GitHub Pages

1. Перейдіть на GitHub: https://github.com/Julian88888888/testlinkinding
2. Відкрийте **Settings** → **Pages**
3. У розділі **Source** виберіть:
   - **Branch**: `main`
   - **Folder**: `/ (root)`
4. Натисніть **Save**

## Крок 2: Дочекайтеся деплою

GitHub Pages зазвичай деплоїть за 1-5 хвилин після push.

Перевірте статус:
- Відкрийте вкладку **Actions** в репозиторії
- Має бути workflow "pages build and deployment"
- Він має бути успішним (зелена галочка)

## Крок 3: Перевірте доступність

Після деплою файли мають бути доступні за адресами:
- `https://julian88888888.github.io/testlinkinding/`
- `https://julian88888888.github.io/testlinkinding/linkedin-share-image.jpg`
- `https://julian88888888.github.io/testlinkinding/index.html`

## Крок 4: Якщо все ще 404

1. Перевірте, що файли в гілці `main` (не в іншій гілці)
2. Перевірте, що GitHub Pages увімкнено в Settings
3. Зачекайте 5-10 хвилин (іноді потрібен час для DNS)
4. Спробуйте очистити кеш браузера (Ctrl+Shift+R або Cmd+Shift+R)

## Альтернатива: Використайте Vercel

Якщо GitHub Pages не працює, можна використати Vercel:
1. Зареєструйтеся на https://vercel.com
2. Імпортуйте репозиторій
3. Vercel автоматично задеплоїть сайт


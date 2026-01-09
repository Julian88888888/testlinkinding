# LinkedIn Share Test Page

Тестова HTML-сторінка для перевірки, як LinkedIn підтягує Open Graph мета-теги при поширенні посилань.

## 📋 Опис

Ця сторінка дозволяє перевірити коректність налаштування Open Graph мета-тегів для поширення контенту в LinkedIn. Сторінка містить всі необхідні мета-теги та інструменти для тестування.

## 🚀 Використання

### Локально
1. Відкрийте `linkedin-share-test.html` у браузері
2. Перевірте поточні значення мета-тегів у блоці "Поточні значення мета-тегів"
3. Натисніть кнопку **"SHARE LINKEDIN"** для поширення посилання
4. Перевірте preview у LinkedIn

### На GitHub Pages

1. **Налаштуйте GitHub Pages:**
   - Перейдіть у Settings репозиторію
   - У розділі "Pages" виберіть Source: "Deploy from a branch"
   - Виберіть branch: `main` та folder: `/ (root)`
   - Натисніть Save

2. **Дочекайтеся деплою** (зазвичай 1-2 хвилини)

3. **Відкрийте сторінку:**
   - `https://julian88888888.github.io/testlinkinding/` (головна сторінка)
   - `https://julian88888888.github.io/testlinkinding/linkedin-share-test.html` (пряме посилання)

4. **Якщо виникає помилка 404:**
   - Перевірте, що GitHub Pages увімкнено в Settings
   - Переконайтеся, що файли закомічені та запушені
   - Зачекайте кілька хвилин після першого деплою
   - Перевірте Actions вкладку - там має бути успішний деплой

## 📝 Мета-теги

Сторінка містить наступні мета-теги:

### Open Graph (обов'язкові для LinkedIn)
- `og:title` - заголовок
- `og:description` - опис (включає email як частину тексту)
- `og:image` - зображення (1200x630 пікселів)
- `og:url` - канонічний URL сторінки
- `og:type` - тип контенту (website)

### Додаткові
- `meta name="description"` - стандартний опис
- `link rel="canonical"` - канонічний URL
- Twitter Card теги (`twitter:card`, `twitter:title`, `twitter:description`, `twitter:image`)

## 🔧 Налаштування через Query Parameters

Ви можете змінити значення через URL параметри:

```
?title=Ваш заголовок&desc=Ваш опис&email=test@example.com&img=https://example.com/image.jpg
```

**⚠️ Важливо:** LinkedIn скрейпер читає HTML напряму з сервера. Якщо ви змінюєте meta теги через JavaScript, LinkedIn їх не побачить. Для динамічної зміни мета-тегів потрібен серверний рендеринг або статичні HTML файли з різними значеннями.

## 📌 Важливі примітки

1. **LinkedIn підтягує preview тільки з Open Graph мета-тегів** - переконайтеся, що всі необхідні `og:*` теги присутні в `<head>` секції HTML.

2. **Email як окреме поле** - LinkedIn не підтримує окреме поле для email, тому ми вставляємо його в опис (`og:description`) або можемо додати на картинку.

3. **Для повторного тесту** - якщо LinkedIn показує старі дані, потрібно "пробити кеш" через **LinkedIn Post Inspector**. Цей інструмент дозволяє:
   - Перевірити, які мета-теги бачить LinkedIn
   - Очистити кеш для конкретного URL
   - Побачити preview перед поширенням

4. **Розмір зображення** - рекомендований розмір для `og:image`: **1200x630 пікселів** (співвідношення 1.91:1).

5. **Абсолютні URL** - всі URL (`og:image`, `og:url`) мають бути абсолютними (починатися з `https://`).

## 🖼️ Зображення

Проект містить власне зображення `linkedin-share-image.svg` розміром 1200x630 пікселів для `og:image`.

**Примітка про формат:**
- LinkedIn зазвичай підтримує SVG, але для максимальної сумісності рекомендовано використовувати PNG або JPG
- Якщо SVG не працює, використайте `convert-svg-to-png.html` для конвертації SVG в PNG
- Або завантажте SVG на [CloudConvert](https://cloudconvert.com/svg-to-png) або інший онлайн конвертер

**Для заміни зображення:**
1. Замініть `linkedin-share-image.svg` на ваше зображення
2. Оновіть URL в `og:image` та `twitter:image` meta тегах
3. Переконайтеся, що розмір зображення 1200x630 пікселів

## 📄 Структура файлів

```
testlinkinding/
├── index.html                # Головна сторінка (копія linkedin-share-test.html)
├── linkedin-share-test.html  # Основна тестова сторінка
├── linkedin-share-image.svg  # Зображення для og:image (1200x630)
├── convert-svg-to-png.html   # Інструмент для конвертації SVG в PNG
├── .gitignore                # Git ignore файл
├── .gitattributes            # Git attributes
└── README.md                 # Документація
```

## 🔗 Корисні посилання

- [LinkedIn Post Inspector](https://www.linkedin.com/post-inspector/) - інструмент для перевірки та очищення кешу
- [Open Graph Protocol](https://ogp.me/) - документація Open Graph протоколу
- [LinkedIn Share URL Format](https://www.linkedin.com/sharing/share-offsite/)

## 📝 Ліцензія

Цей проект створено для тестування та навчальних цілей.

---

**Примітка:** Для коректної роботи всі URL мають бути доступні через HTTPS. Якщо ви тестуєте локально, використовуйте GitHub Pages або інший хостинг для перевірки.


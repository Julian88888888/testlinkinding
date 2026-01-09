# 🎥 Як зробити відео preview в LinkedIn (як на YouTube)

## ❌ Проблема
LinkedIn не показує відео preview з кнопкою play, як на YouTube.

## ✅ Рішення

### Варіант 1: YouTube відео (поточне налаштування)

Для YouTube відео LinkedIn потребує:
- `og:type="video.other"`
- `og:video` з прямим URL до YouTube (не embed)
- `og:video:url` - додатковий тег
- `og:image` - thumbnail зображення

**Формат URL:**
```
https://www.youtube.com/watch?v=VIDEO_ID
```
НЕ використовуйте:
```
https://www.youtube.com/embed/VIDEO_ID  ❌
```

### Варіант 2: Власне відео (MP4)

Якщо у вас є власне відео файл:

```html
<meta property="og:type" content="video.other">
<meta property="og:video" content="https://your-domain.com/video.mp4">
<meta property="og:video:type" content="video/mp4">
<meta property="og:video:width" content="1280">
<meta property="og:video:height" content="720">
<meta property="og:image" content="https://your-domain.com/thumbnail.jpg">
```

### Варіант 3: Vimeo відео

```html
<meta property="og:video" content="https://vimeo.com/VIDEO_ID">
<meta property="og:video:type" content="text/html">
```

## 🔍 Перевірка

1. **Перевірте HTML source:**
   - Відкрийте сторінку в браузері
   - Right click → View page source
   - Знайдіть `og:video` теги
   - Переконайтеся, що URL правильний

2. **Використайте LinkedIn Post Inspector:**
   - https://www.linkedin.com/post-inspector/
   - Введіть ваш URL
   - Натисніть "Inspect"
   - Перевірте, чи бачить LinkedIn відео теги

3. **Очистіть кеш:**
   - LinkedIn кешує дані
   - Після змін використайте Post Inspector для очищення кешу

## ⚠️ Важливо

1. **og:video має бути доступним:**
   - URL має відкриватися без помилок
   - Для YouTube - використовуйте формат `watch?v=`
   - Не використовуйте embed URL

2. **og:image обов'язковий:**
   - LinkedIn показує thumbnail навіть для відео
   - Рекомендований розмір: 1200×630 або 1280×720

3. **og:type має бути "video.other":**
   - Не використовуйте "website" для відео
   - "video.other" - найкращий варіант для YouTube

## 📝 Поточні налаштування

Ваші поточні теги:
- ✅ `og:type="video.other"`
- ✅ `og:video` з YouTube URL
- ✅ `og:video:url` додано
- ✅ `og:image` з YouTube thumbnail

Якщо все ще не працює:
1. Перевірте через LinkedIn Post Inspector
2. Очистіть кеш LinkedIn
3. Переконайтеся, що GitHub Pages налаштований (для og:url)


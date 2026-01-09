#!/bin/bash

# Скрипт для оновлення URL в HTML файлах після налаштування GitHub Pages або Vercel

echo "🔧 Оновлення URL в HTML файлах"
echo ""
echo "Введіть ваш домен (наприклад: julian88888888.github.io або testlinkinding.vercel.app):"
read -r DOMAIN

if [ -z "$DOMAIN" ]; then
    echo "❌ Домен не вказано!"
    exit 1
fi

# Видаляємо https:// якщо є
DOMAIN=$(echo "$DOMAIN" | sed 's|https://||' | sed 's|http://||')
DOMAIN=$(echo "$DOMAIN" | sed 's|/$||')

echo "📝 Оновлюю URL на: https://$DOMAIN"

# Оновлюємо linkedin-share-test.html
sed -i '' "s|https://julian88888888.github.io/testlinkinding|https://$DOMAIN|g" linkedin-share-test.html

# Оновлюємо index.html
sed -i '' "s|https://julian88888888.github.io/testlinkinding|https://$DOMAIN|g" index.html

echo "✅ Готово! URL оновлено в обох HTML файлах."
echo ""
echo "Перевірте файли:"
echo "  - linkedin-share-test.html"
echo "  - index.html"


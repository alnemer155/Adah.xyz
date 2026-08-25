#!/bin/bash
# يضيف كل النطاقات المخصصة لمشروع Cloudflare Pages دفعة وحدة عبر Wrangler CLI.
#
# قبل التشغيل:
#   1. ثبّت Wrangler إذا ما عندك: npm install -g wrangler
#   2. سجّل دخول: wrangler login
#   3. غيّر PROJECT_NAME تحت لاسم مشروع Pages الفعلي عندك
#
# تشغيل: bash add-domains.sh

PROJECT_NAME="adah-xyz"   # ← غيّر هذا لاسم مشروعك الفعلي بـCloudflare Pages

DOMAINS=(
  "adah.binjaafar.xyz"
  "t1.adah.binjaafar.xyz"
  "t2.adah.binjaafar.xyz"
  "t3.adah.binjaafar.xyz"
  "t4.adah.binjaafar.xyz"
  "t5.adah.binjaafar.xyz"
  "t6.adah.binjaafar.xyz"
  "t7.adah.binjaafar.xyz"
  "t8.adah.binjaafar.xyz"
  "t9.adah.binjaafar.xyz"
  "t10.adah.binjaafar.xyz"
  "t11.adah.binjaafar.xyz"
)

for domain in "${DOMAINS[@]}"; do
  echo "→ إضافة $domain ..."
  wrangler pages domain add "$domain" --project-name "$PROJECT_NAME"
done

echo "خلص. تأكد من النتائج فوق — أي نطاق يطلع خطأ يحتاج مراجعة يدوية بلوحة Cloudflare."

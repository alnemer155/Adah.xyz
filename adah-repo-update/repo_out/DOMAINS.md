# خريطة النطاقات — Adah.xyz

كل المواقع تنشر من **مشروع Cloudflare Pages واحد**، والتوجيه بين النطاقات الفرعية يصير عبر `_redirects`. هذا الملف مرجع سريع لإضافة النطاقات المخصصة بلوحة Cloudflare (Custom Domains)، ولمعرفة أي ملف يقابل أي نطاق.

| # | النطاق | الملف | المجلد | الاسم |
|---|--------|-------|--------|-------|
| — | `adah.binjaafar.xyz` | `adaa.html` | `/` (جذر) | أداء (الصفحة الرئيسية) |
| 1 | `t1.adah.binjaafar.xyz` | `tekrar.html` | `/t1` | تكـــرار |
| 2 | `t2.adah.binjaafar.xyz` | `qaran.html` | `/t2` | قارن |
| 3 | `t3.adah.binjaafar.xyz` | `hashai.html` | `/t3` | #ai |
| 4 | `t4.adah.binjaafar.xyz` | `tareekh.html` | `/t4` | تاريخ |
| 5 | `t5.adah.binjaafar.xyz` | `addad.html` | `/t5` | عدّاد (عدّ الكلمات) |
| 6 | `t6.adah.binjaafar.xyz` | `mzeel.html` | `/t6` | مزيـــل |
| 7 | `t7.adah.binjaafar.xyz` | `qassem.html` | `/t7` | قسّم |
| 8 | `t8.adah.binjaafar.xyz` | `qr.html` | `/t8` | QR |
| 9 | `t9.adah.binjaafar.xyz` | `raatib.html` | `/t9` | راتب |
| 10 | `t10.adah.binjaafar.xyz` | `hawwil.html` | `/t10` | حوّل |
| 11 | `t11.adah.binjaafar.xyz` | `addad2.html` | `/t11` | عــدّاد (العد التنازلي) |

## خطوات الإضافة اليدوية (Cloudflare Dashboard)

لكل نطاق بالجدول فوق:
1. **Workers & Pages** ← اختر مشروعك ← **Custom domains** ← **Set up a custom domain**
2. اكتب النطاق كامل (مثال: `t5.adah.binjaafar.xyz`)
3. Cloudflare يضيف سجل CNAME تلقائيًا إذا كان `binjaafar.xyz` مُدار عندك بـCloudflare DNS

كرر لكل الـ12 نطاق (الجذر + t1 إلى t11).

## أو أوتوماتيكي عبر Wrangler CLI

استخدم ملف `add-domains.sh` المرفق بدل ما تضيفهم يدويًا واحد واحد.

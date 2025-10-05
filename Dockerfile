# استخدم صورة Node الرسمية
FROM node:18-alpine

# تحديد مجلد العمل داخل الكونتينر
WORKDIR /app

# نسخ ملفات المشروع
COPY package*.json ./
RUN npm install

COPY . .

# المنفذ اللي هنفتح عليه السيرفر
EXPOSE 3000

# أمر التشغيل
CMD ["node", "server.js"]

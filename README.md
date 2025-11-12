# AI Smart Taxi — Render-ready (HTML/JS frontend)

## מה יש בחבילה
- Backend: Flask `app.py` (DB, AI dispatcher, Twilio hooks, admin endpoints)
- Frontend: HTML/JS pages for client, driver, admin (static)
- Render config: Procfile, render.yaml
- Example API keys file and .env.example

## פריסה מקומית
1. העתק את המערכת למחשב:
2. צור virtualenv: `python -m venv venv && source venv/bin/activate`
3. התקן דרישות: `pip install -r backend/requirements.txt`
4. צרו DB אוטומטית על הרצה ראשונה: `python backend/app.py`
5. פתחו בדפדפן: http://127.0.0.1:5000

## פריסה ב-Render
1. Push ל-GitHub.
2. Create New Web Service → Connect to GitHub repository.
3. Build Command: `pip install -r requirements.txt`
   Start Command: `gunicorn app:app --bind 0.0.0.0:$PORT --workers 3`
4. הוספת משתני סביבה ב-Render:
   - GOOGLE_MAPS_KEY, OPENAI_API_KEY, GROK_API_KEY, TWILIO_SID, TWILIO_TOKEN, TWILIO_NUMBER, BASE_URL, DEMO_MODE, ADMIN_TOKEN
5. Deploy.

## Security
- אל תדחוף `config/api_keys.json` או `.env`.
- השתמש ב־Render Environment Variables.




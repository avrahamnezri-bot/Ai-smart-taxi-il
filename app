import os
from flask import Flask

# יצירת אפליקציה Flask
app = Flask(__name__)

# דוגמה לנתיב ראשי
@app.route("/")
def home():
    return "Hello Smart Taxi! 🚖"

# הפעלה מקומית או ב-Render
if __name__ == "__main__":
    # Render נותן PORT כמשתנה סביבה, חובה להשתמש בו
    port = int(os.environ.get("PORT", 5000))
    app.run(host="0.0.0.0", port=port)

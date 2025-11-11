AI-SMART-TAXI/
│
├── app.py
├── requirements.txt
├── .gitignore
├── README.md
│
├── app/
│   ├── __init__.py
│   ├── taxi_ai_100_perfect.py
│   ├── database.py
│   ├── maps.py
│   ├── settings.py
│   └── queue.py
│
├── web/
│   ├── templates/
│   │   └── admin.html
│   └── static/
│       ├── style.css
│       └── ui.js
│
└── deploy/
    ├── render.yaml
    └── Dockerfile (אופציונלי)
app.py
from flask import Flask, request, jsonify
from app.taxi_ai_100_perfect import geocode_address, is_valid_phone
from app.queue import enqueue_driver, dequeue_driver

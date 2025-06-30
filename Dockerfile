FROM python:3.10-slim

RUN apt-get update && apt-get install -y --no-install-recommends build-essential && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /todolist_tg_bot

COPY . .

RUN pip install --no-cache-dir -r ./todolist_tg_bot/requirements.txt


CMD ["python3", "-m", "todolist_tg_bot.bot" ]

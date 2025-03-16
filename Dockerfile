FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN python3 -m venv /app/venv
RUN /app/venv/bin/pip install --no-cache-dir -r requirements.txt
RUN pip3 install --no-cache-dir --break-system-packages -r requirements.txt


COPY . .

CMD ["bash", "start.sh"]

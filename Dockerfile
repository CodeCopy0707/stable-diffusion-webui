FROM nvidia/cuda:12.1.0-runtime-ubuntu22.04

WORKDIR /app

RUN apt update && apt install -y python3 python3-pip git

RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git /app
WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python3", "webui.py", "--api", "--listen"]

FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-runtime

EXPOSE 7860

WORKDIR /workspace/yolov10

COPY requirements.txt requirements.txt

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y

RUN pip install -r requirements.txt

ENV GRADIO_SERVER_NAME="0.0.0.0"

ENTRYPOINT [ "python", "app.py" ]
FROM tdhuy/pytorch-yolov10

EXPOSE 7860

WORKDIR /workspace/yolov10

ENV GRADIO_SERVER_NAME="0.0.0.0"

ENTRYPOINT [ "python", "app.py" ]
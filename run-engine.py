from ultralytics import YOLO

tensorrt_model = YOLO("yolov10m.engine")
results = tensorrt_model("data/videos")
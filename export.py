from ultralytics import YOLOv10

model = YOLOv10.from_pretrained('jameslahm/yolov10m')

model.export(format='engine')
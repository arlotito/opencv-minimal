# opencv_minimal
Some trials looking for a compact Python & OpenCV docker

-alpine / Python 3.6.8 / OpenCV 4.0.1
-debian stretch slim / Python 3.6.8 / OpenCV 4.0.1

  Image | Description | Size (docker images) | Compressed size on dockerHUB |
  ------|-------------|----------------------|------------------------------|
  ?  | alpine / Python 3.6.8 / OpenCV 4.0.1               | ?                    | ?                |
  ?  | debian stretch slim / Python 3.6.8 / OpenCV 4.0.1  | 481MB                | 167MB            |
  ?  | debian stretch slim / Python 3.6.8 / OpenCV 4.0.1  | 738MB                | 259MB            |
  ?  | debian stretch slim / Python 3.6.8 / OpenCV 3.4.5  | ?                    | ?                |
  arturol76/py3.7-opencv4.5.3 | debian stretch slim / Python 3.7.11 / OpenCV 4.5.3 |                | 205.53MB         |

## Test:

Image is tested by importing cv2 module in python:
```
sudo docker run -it arturol76/myopencv-minimal:py3.7-opencv4.5.3 bash

python
import cv2
print(cv2.__version__)
```
Test is succesful if no errors
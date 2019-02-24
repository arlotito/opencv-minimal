# opencv_minimal
Some trials looking for a compact Python & OpenCV docker

-alpine / Python 3.6.8 / OpenCV 4.0.1
-debian stretch slim / Python 3.6.8 / OpenCV 4.0.1

  Image                                              | Tage          | Size (docker images) | Size (dockerHUB) |
  ---------------------------------------------------|---------------|----------------------|------------------|
  alpine / Python 3.6.8 / OpenCV 4.0.1               |               |                      |                  |
  debian stretch slim / Python 3.6.8 / OpenCV 4.0.1  | minlayers     | 481MB                | 167MB            |
  debian stretch slim / Python 3.6.8 / OpenCV 4.0.1  | debug         | 738MB                | 259MB            |
  debian stretch slim / Python 3.6.8 / OpenCV 3.4.5  | minlayers     | ?                    | ?                |

## Test:

Image is tested by importing cv2 module in python:
```
import cv2
```
Test is succesful if no errors
from PIL import Image

import pytesseract

# If you don't have tesseract executable in your PATH, include the following:
pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files (x86)\Tesseract-OCR\tesseract'
# Example tesseract_cmd = r'C:\Program Files (x86)\Tesseract-OCR\tesseract'



data = pytesseract.image_to_string(Image.open(r'D:\VijayN\MyRepo\Test-OCR\TestImage.png'), config='outputbase digits')
# Simple image to string
print(data)


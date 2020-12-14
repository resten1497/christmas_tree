void main() {
  generateTree(15);
}

void generateTree(int height) {  
  int widthCounter = drawTreeTop(height);
  drawUnderLine(widthCounter);
  drawText(height, widthCounter);
  drawStub(height);
  drawMadeDart(height);
}

int drawTreeTop(int height) {
  int widthCounter = 1;

  for (int i = 1; i <= height; i++) {
    int indent = height - i;
    String line = "";
    
    for (int j = 1; j <= indent; j++) {
      line += " ";
    }
    
    for (int j = 1; j <= widthCounter; j++) {
      line += "*";
    }
  
    print(line);
    widthCounter = widthCounter + 2;
  }
  
  return widthCounter;
}
  

void drawText(int height, int widthCounter) {
  int maxWidth = (height * 2) - 1;
  int center = (maxWidth / 2).floor() + 1;
  String text = "";
  
  while (center > 9) {
    text += " ";
    center--;
  }
  
  text += "Merry Christmas!";
  
  print(text);
}

void drawUnderLine(int widthCounter) {
  String underLine = "";
  for (int i = 0; i < (widthCounter - 2); i++) {
    underLine += "-";
  }
  
  print(underLine);
}
  
void drawStub(int height) {  
  int maxWidth = (height * 2) - 1;
  int center = (maxWidth / 2).floor();

  for (int i = 0; i < 3; i++) {
    String stubLine = "";
    for (int j = 1; j <= center; j++) {
      if (j == center - 1) {
        stubLine += "|||";
      } else {
        stubLine += " ";
      }
    }
    print(stubLine);
  }
}

void drawMadeDart(int height) {
  print("");
  print("");
  String endText = "";
  for (int i = 0; i < (height * 2) - 1; i++) {
    endText += " ";
  }
  print(endText + "It has been written as Dart.");
}

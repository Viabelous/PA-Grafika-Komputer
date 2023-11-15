import processing.sound.*;

int selected = -1; // Untuk mengakses item dengan mouse
int viewItem = 0; // Untuk menampilkan item pada preview
boolean firstGet = true; // Untuk mengatasi bug item terbawa
SoundFile audioTheme, audioClick, audioObserve, audioSwallow, audioRemove; // Untuk menggunakan berbagai macam sound
// ketika mouse ditekan dan di-hover
// ke item
int idxSelected = 0; // index slot yang dipilih
int slotMSelected = 0; // index slot yang diakses dengan Mouse
String Cmd=""; // var teks command
String logs=""; // var log command

pages hal = new inventory();

boolean dragObserve = false; // untuk mouse pada mode 3D
float rotY = 0;
float rotYNow = 0;
float xNow = 0;
float rotX = 0;
float rotXNow = 0;
float yNow = 0;

float scaleMax = 2;
float scaleMin = 0.5;
float scaleFactor = 1.0;
float translateX = 0.0;
float translateY = 0.0;

PImage lightIcon;
boolean light = false;


// List Daftar Slot Item
places[] slots = {
  new places(0, 0, 125, 475, 100),
  new places(1, 1, 275, 475, 100),
  new places(2, 2, 425, 475, 100),
  new places(3, 3, 575, 475, 100),
  new places(4, 4, 725, 475, 100),
  new places(5, 5, 875, 475, 100),
  new places(6, 6, 1025, 475, 100),
  new places(7, 7, 1175, 475, 100),
  new places(8, 8, 1325, 475, 100),
  new places(9, 9, 1475, 475, 100),
  new places(10, 10, 125, 625, 100),
  new places(11, 11, 275, 625, 100),
  new places(12, 12, 425, 625, 100),
  new places(13, 13, 575, 625, 100),
  new places(14, 14, 725, 625, 100),
  new places(15, 15, 875, 625, 100),
  new places(16, 16, 1025, 625, 100),
  new places(17, 17, 1175, 625, 100),
  new places(18, 18, 1325, 625, 100),
  new places(19, 19, 1475, 625, 100),
  new places(20, 20, 125, 775, 100),
  new places(21, 21, 275, 775, 100),
  new places(22, 22, 425, 775, 100),
  new places(23, 23, 575, 775, 100),
  new places(24, 24, 725, 775, 100),
  new places(25, 25, 875, 775, 100),
  new places(26, 26, 1025, 775, 100),
  new places(27, 27, 1175, 775, 100),
  new places(28, 28, 1325, 775, 100),
  new places(29, 29, 1475, 775, 100)
};

item[] items = {
  addItem(1, 0), addItem(2, 1), addItem(3, 2),
  addItem(4, 3, 10), addItem(5, 4, 5), addItem(6, 5),
  addItem(7, 6), addItem(8, 7), addItem(9, 8),
  addItem(10, 9, 4), addItem(11, 10, 20), addItem(12, 11),
  addItem(13, 12), addItem(14, 13), addItem(15, 14, 5),
  addItem(16, 15), addItem(17, 16, 6), addItem(18, 17, 25),
  addItem(19, 18, 5), addItem(20, 19, 3), addItem(21, 20),
  addItem(22, 21, 191), addItem(23, 22, 8), addItem(24, 23, 10),
  addItem(25, 24), addItem(26, 25, 20), addItem(27, 26, 5),
  addItem(0, 27), addItem(0, 28), addItem(0, 29),
};

void mouseClicked() {
  hal.mouseClicked();
}
void mouseDragged() {
  hal.mouseDragged();
}
void mouseReleased() {
  hal.mouseReleased();
}
void mouseWheel(MouseEvent e) {
  hal.mouseWheel(e);
}
void keyPressed() {
  hal.keyPressed();
}





void setup() {
  hint(DISABLE_OPTIMIZED_STROKE);
  size(1600, 900, P3D);
  surface.setTitle("Item Inventory");
  surface.setLocation(0, 0);
  audioTheme = new SoundFile(this, "./audio/audio-soundtheme.mp3");
  audioClick = new SoundFile(this, "./audio/click-item.wav");
  audioObserve = new SoundFile(this, "./audio/click-button.mp3");
  audioSwallow = new SoundFile(this, "./audio/audio-swallow.wav");
  audioRemove = new SoundFile(this, "./audio/audio-remove.wav");
  lightIcon = loadImage("./images/lightbulb-05.png");

  audioTheme.amp(0.3);
  audioTheme.play();
}

void draw() {
  if (!audioTheme.isPlaying()) {
    audioTheme.cue(0); // Memulai ulang suara jika sudah selesai
    audioTheme.play();
  }
  hal.build();
}

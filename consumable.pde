class carrot extends consumable {
  carrot(int xI, int yI, places boxI, int quanI) {
    super(xI, yI, boxI,
      "Carrot",
      false, quanI, true);
  }

  void preview() {
    pushMatrix();
    scale(0.4);
    build();
    popMatrix();
  };

  void thumbnail() {
    pushMatrix();
    translate(x-50, y-50);
    scale(0.2);
    build();
    popMatrix();
  }

  void build() {
    pushMatrix();
    strokeWeight(2);

    // Menggambar badan wortel
    fill(255, 102, 0);
    float xWortel = 500 / 2;
    float yWortel = 500 / 6;
    float size = 200;
    beginShape();
    vertex(xWortel, yWortel);
    bezierVertex(xWortel - size, yWortel, xWortel - size / 2, yWortel + size / 2, xWortel, yWortel + size * 2);
    bezierVertex(xWortel + size / 6, yWortel + size / 1.5, xWortel + size / 2, yWortel, xWortel, yWortel);
    endShape(CLOSE);

    // Menggambar daun wortel
    noStroke();
    fill(34, 139, 34);
    ellipse(xWortel - 100, yWortel, size / 4, size / 2);
    ellipse(xWortel - 50, yWortel, size / 4, size / 2);
    ellipse(xWortel, yWortel, size / 4, size / 2);
    ellipse(xWortel + 50, yWortel, size / 4, size / 2);
    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }


  void stats() {
    text("Tipe: Sayuran", 0, 0);
  }

  void desc() {
    text("Bahkan sebuah wortel akan dapat\n"+
         "menyelamatkanmu di masa-masa kritis", 0, 0);
  }
}

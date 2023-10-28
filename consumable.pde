class carrot extends item {
  carrot(int xI, int yI, places boxI) {
    super(xI, yI, boxI,
      "Carrot",
      false);
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
  }
  void stats() {
    text("Tipe: Consumable Item", 0, 0);
  }

  void desc() {
    text("Sebuah wortel yang akan menyelamatkanmu disaat masa2 kritis", 0, 0);
  }
}

abstract class pages {
  abstract void build();
  abstract void mouseClicked();
  abstract void mouseDragged();
  abstract void mouseReleased();
  abstract void mouseWheel(MouseEvent e);
  abstract void keyPressed();
}

// ========================================= INVENTORY ========================================= //
class inventory extends pages {

  void build() {
    background(114, 120, 152);
    slots[idxSelected].selected = true;

    rectMode(CENTER);
    // Menampilkan preview
    pushMatrix();
    translate(150, 70);
    if (items[viewItem].rarity == "common") {
      fill(188, 184, 184); // Abu-abu
    } else if (items[viewItem].rarity == "uncommon") {
      fill(117, 192, 206); // biru
    } else if (items[viewItem].rarity == "rare") {
      fill(222, 184, 87); // emas
    } else if (items[viewItem].rarity == "unique") {
      fill(185, 107, 216); // ungu
    } else if (items[viewItem].rarity == "myth") {
      fill(167, 62, 52); // merah
    } else {
      fill(71, 78, 118); // Kosong
    }
    square(100, 100, 200);
    stroke(43, 46, 72);
    strokeWeight(5);
    line(0, 0, 200, 0);
    line(200, 0, 200, 200);
    stroke(159, 162, 185);
    strokeWeight(5);
    line(0, 0, 0, 200);
    line(0, 200, 200, 200);
    items[viewItem].preview();
    popMatrix();
    rectMode(CENTER);

    // tombol Observe
    if (items[viewItem].observable) {
      fill(52, 58, 106);
      stroke(159, 162, 185);
      strokeWeight(2);
      rect(250, 340, 220, 60);
      fill(255);
      textSize(40);
      text("OBSERVE", 170, 353);
      textSize(12);
    }


    // Menampilkan Box Desc
    pushMatrix();
    fill(65, 71, 124);
    translate(650, 150);
    stroke(159, 162, 185);
    strokeWeight(5);
    rect(250, 70, 1000, 350, 200);
    line(-160, -90, 650, -90);
    line(-160, 230, 650, 230);
    line(245, -70, 245, 200);
    line(-190, -70, -190, 200);
    line(670, -70, 670, 200);
    arc(-172, -80, 35, 38, radians(-38), radians(155));
    arc(-172, 209, 38, 41, radians(-163), radians(70));
    arc(657, -80, 30, 30, radians(12), radians(211));
    arc(652, 207, 38, 38, radians(-267), radians(-22));
    line(-210, -20, -210, 150);
    line(690, -20, 690, 150);
    line(-230, -0, -230, 130);
    line(710, -0, 710, 130);
    rect(250, 70, 43, 60, 100);
    textSize(30);
    fill(255);
    text(items[viewItem].name, -160, -20);
    pushMatrix();
    translate(-160, 15);
    textSize(20);
    items[viewItem].stats();
    translate(440, -25);
    items[viewItem].desc();
    popMatrix();



    // membuat border di pinggir
    stroke(49, 53, 85);
    strokeWeight(30);
    line(-650, -135, 950, -135);
    line(-650, 735, 950, 735);
    line(-636, -144, -636, 734);
    line(938, -144, 938, 738);
    popMatrix();



    for (places slot : slots) slot.build(); // menampilkan slot

    if (selected != -1) items[selected].thumbnail(); // menapilkan item di-drag
  }



  void mouseClicked() {
    for (int i = slots.length - 1; i > -1; i--) {
      if (slots[i].getPos()) {
        viewItem = slots[i].itemIndex; // ubah Preview
        slots[idxSelected].selected = false; // ubah status selected slot sebelumnya
        idxSelected = slots[i].id; // ubah item yang dipilih
        slots[idxSelected].selected = true; // ubah status selected slot sekarang
        audioClick.play();
        break;
      }
    }

    if (items[viewItem].observable &&
      mousePos(130, 345, 310, 365)) {
      audioObserve.play();
      hal = new observe();
    }
  }



  void mouseDragged() {
    // Jika tidak ada item dipilih
    if (selected == -1) {

      // Jika drag dimulai tidak pada item,
      // maka tidak akan berjalan
      if (!firstGet) return;

      // Pindah Item
      for (int i = slots.length - 1; i > -1; i--) {

        // Pastikan slot tidak kosong
        if (slots[i].getPos() &&
          items[slots[i].itemIndex].name != "") {
          slotMSelected = i; // ambil indeks slot
          selected = slots[i].itemIndex; // ambil indeks item
          break;
        }
        firstGet = false;
      }

      // Pindah item jika ada item yang dipilih
    } else {
      items[selected].x = mouseX;
      items[selected].y = mouseY;
    }
  }



  void mouseReleased() {
    firstGet = true;
    if (selected != -1) {
      for (places slot : slots) {
        if (slot.getPos()) {
          int idxItem = slots[slotMSelected].itemIndex; // ambil index item sekarang
          boolean calculate = false;
          if (items[idxItem].countable) // jika item dapat dihitung
            if (slot != slots[slotMSelected]) // dan jika item tidak didrag ke slotnya sendiri
              if (items[slot.itemIndex].getClass() == items[idxItem].getClass() && // dan item sama dengan item di slot tujuan
                ((countable)items[slot.itemIndex]).quantity != 9999) // serta jumlah item tujuan bukan 9999
                calculate = true; // jumlahkan barang

          if (!calculate) {
            slots[slotMSelected].itemIndex = slot.itemIndex;
            items[slot.itemIndex].x = slots[slotMSelected].x;
            items[slot.itemIndex].y = slots[slotMSelected].y;
            items[selected].x = slot.x;
            items[selected].y = slot.y;
            slot.itemIndex = idxItem;
          } else {
            if (((countable)items[slot.itemIndex]).quantity +
              ((countable)items[selected]).quantity <= 9999) {
              ((countable)items[slot.itemIndex]).quantity +=
                ((countable)items[selected]).quantity;
              items[idxItem] = addItem(0, slotMSelected);
            } else {
              ((countable)items[selected]).quantity -=
                (9999 - ((countable)items[slot.itemIndex]).quantity);
              ((countable)items[slot.itemIndex]).quantity = 9999;
            }
          }
          break;
        } else {
          items[selected].x = slots[slotMSelected].x;
          items[selected].y = slots[slotMSelected].y;
        }
      }
    }

    focus();
    selected = -1;
  }



  void mouseWheel(MouseEvent e) {
  };



  void keyPressed() {
    if (key == CODED || key == 'w' || key == 'a'
      || key == 'd' || key == 's') {
      if (keyCode == UP || key == 'w') {
        keyNav(idxSelected - 9 <= 0,
          20 + idxSelected,
          idxSelected - 10);
      } else if (keyCode == RIGHT || key == 'd') {
        keyNav(idxSelected == 29,
          0,
          idxSelected + 1);
      } else if (keyCode == LEFT || key == 'a') {
        keyNav(idxSelected == 0,
          29,
          idxSelected - 1);
      } else if (keyCode == DOWN || key == 's') {
        keyNav(idxSelected + 10 >= 30,
          idxSelected - 20,
          idxSelected + 10);
      }
    }

    if (key == 'q' || key == 't') {
      if (items[slots[idxSelected].itemIndex].countable == true &&
        key == 'q') {
        if (((countable)items[slots[idxSelected].itemIndex]).foodItem) {

          // Kurangi quantity
          ((countable)items[slots[idxSelected].itemIndex]).quantity -= 1;

          // Jika quantity adalah 0
          if (((countable)items[slots[idxSelected].itemIndex]).quantity == 0)
            items[slots[idxSelected].itemIndex] = addItem(0, idxSelected);
            
          audioSwallow.amp(0.4);
          audioSwallow.play();
        }
      } else if (items[slots[idxSelected].itemIndex].discardable && key == 't') {
          audioRemove.amp(0.1);
          audioRemove.play();
          items[slots[idxSelected].itemIndex] = addItem(0, idxSelected);
      }
    } else if (key == TAB) {
      hal = new command();
    }

    focus();
  };
}





// ========================================= OBSERVE ========================================= //
class observe extends pages {
  float lightDirection = frameCount * 0.01/2;

  void build() {
    background(0);

    // tombol kembali ke tampilan 2d
    pushMatrix();
    translate(30, 50, 10);

    noStroke();
    fill(150, 0, 0);
    quad(40, -18, 45, -14, 45, 24, 40, 20);
    quad(4, 25, 0, 20, 45, 20, 44, 25);
    fill(215, 0, 0);
    rect(20, 0, 40, 40);

    fill(255);
    textSize(26);
    text("x", 13, 7);
    popMatrix();


    // tombol light
    pushMatrix();
    translate(90, 50, 10);

    noStroke();
    fill(201, 171, 0);
    quad(40, -18, 45, -14, 45, 24, 40, 20);
    quad(4, 25, 0, 20, 45, 20, 44, 25);
    fill(245, 209, 0);
    rect(20, 0, 40, 40);

    pushMatrix();
    translate(10, -13, 0);
    image(lightIcon, 0, 0, 24, 24);
    popMatrix();
    popMatrix();


    if (light) {
      lights();
      spotLight(255, 255, 255, mouseX, mouseY, 500, 0, 0, -1, PI/5, 495);
      fill(255, 215, 13);
      textSize(16);
      text("Light ON", 140, 40);
    } else {
      noLights();
      fill(227, 0, 0);
      textSize(16);
      text("Light OFF", 140, 40);
    }

    // tampilan 3D
    pushMatrix();
    strokeWeight(2);
    stroke(150);
    translate(width/2, height/2, 0);
    rotateY(rotY);
    rotateX(rotX);

    scale(scaleFactor);

    noFill();
    stroke(50);
    box(1000);

    pushMatrix();
    fill(255);
    stroke(255);
    translate(0, 250, 0);
    beginShape();
    vertex(100, 100);
    endShape();
    popMatrix();

    items[viewItem].observe();
    popMatrix();
  }



  void mouseClicked() {
    if (mousePos(20, 60, 25, 70)) {
      hal = new inventory();
      rotX = 0;
      rotY = 0;
      light = false;
      scaleFactor = 1.0;
      audioObserve.play();
    }
    if (light) {
      if (mousePos(80, 125, 20, 60)) {
        light = false;
        audioObserve.play();
      }
    } else {
      if (mousePos(80, 125, 20, 60)) {
        light = true;
        audioObserve.play();
      }
    }
  }



  void mouseDragged() {
    if (!dragObserve) {
      xNow = mouseX;
      yNow = mouseY;
      rotYNow = rotY;
      rotXNow = rotX;
    }
    dragObserve = true;
    rotY = rotYNow + (xNow - mouseX)/100;
    rotX = rotXNow + (yNow - mouseY)/100;
  }


  void mouseReleased() {
    dragObserve = false;
    xNow = 0;
    yNow = 0;
  }


  void mouseWheel(MouseEvent e) {
    float delta = e.getCount() > 0 ? 1.05 : e.getCount() < 0 ? 1.0/1.05 : 1.0;

    if (scaleFactor >= scaleMin && scaleFactor <= scaleMax) {
      scaleFactor *= delta;

      if (scaleFactor <= scaleMin) {
        scaleFactor = scaleMin;
      } else if (scaleFactor >= scaleMax) {
        scaleFactor = scaleMax;
      }
    }

    translateX = (delta*translateX) + mouseX * (1 - delta);
    translateY = (delta*translateY) + mouseY * (1 - delta);
  }

  void keyPressed() {
    if (key == 'r') {
      scaleFactor = 1;
      translateX = 0.0;
      translateY = 0.0;
      audioClick.play();
    }
  }
}




// ========================================= COMMAND ========================================= //
class command extends pages {

  void build() {
    background(255);
    rectMode(CORNER);
    stroke(2);
    fill(200);
    rect(50, 50, 1500, 749);
    fill(100);
    rect(50, 800, 1500, 50);
    fill(255);
    textSize(30);
    text(cmd, 80, 833);

    fill(0);
    String splittedLogs[] = logs.split("\n", 0);
    int placement = 815;
    pushMatrix();
    translate(0, -placement - splittedLogs.length*35 + 815);

    if (logs != "") {
      if (splittedLogs.length > 21) {
        logs = "";
        for (int i = 0; i <= splittedLogs.length - 1; i++) {
          if (i >= splittedLogs.length - 20) {
            logs += splittedLogs[i] + "\n";
          }
        }
      }


      for (String log : splittedLogs) {
        if (log.charAt(0) == '>') {
          if (log.charAt(2) == 'E') {
            fill(#B24143);
          } else if (log.charAt(2) == 'H') {
            fill(#A4A500);
          } else {
            fill(#12A0B7);
          }
        } else {
          fill(0);
        }
        text(log, 80, placement);
        placement += 35;
      }
    }
    popMatrix();

    noStroke();
    fill(#3E3E48);
    rect(0, 850, 1600, 50);
    rect(0, 0, 1600, 50);
    rect(0, 50, 50, 800);
    rect(1550, 50, 498, 800);
  }



  void mouseClicked() {
  };
  void mouseDragged() {
  };
  void mouseReleased() {
  };
  void mouseWheel(MouseEvent e) {
  };

  void keyPressed() {
    if (key == ESC) { // Mengganti fungsi tombol ESC menjadi TAB
      key = TAB;
    }

    if (key == BACKSPACE) { // Menghapus 1 huruf
      if (cmd.length() > 0) {
        cmd = cmd.substring(0, cmd.length()-1);
      }
    } else if (key == TAB) { // Keluar dari Command Mode
      cmd = "";
      hal = new inventory();
    } else if (key == ENTER) { // Untuk Mengirim Command
      if (cmd == "") return; // Jika kosong maka anggap tidak ada command dikirim
      logs += cmd + "\n"; // Tambahkan command ke log
      String splittedInp[] = cmd.split(" ", 0); // Pisah command berdasarkan spasi

      if (cmd.charAt(0) == '/') { // Deteksi Command

        // --------------------------------------- COMMAND /add ---------------------------------------
        if (splittedInp[0].equals("/add")) {
          if (splittedInp.length > 1 && splittedInp.length <= 3) {

            try {
              int itemId = Integer.parseInt(splittedInp[1]);
              int quan = splittedInp.length == 3 ?
                Integer.parseInt(splittedInp[2]) : 1;
              int putInto = findEmptySlot();

              if (putInto == -1) {
                alert(4);
                cmd = "";
                return;
              } else if (addItem(itemId, putInto) == null) {
                alert(3);
                cmd = "";
                return;
              }

              if (quan <= 0 || addItem(itemId, putInto).countable == false) {
                quan = 1;
              } else if (quan > 9999) {
                quan = 9999;
              }

              items[slots[putInto].itemIndex] = addItem(itemId, putInto, quan);
              logs += "> Item " + itemId + " sebanyak " + quan +
                " berhasil ditambahkan\n";
            }
            catch (Exception e) {
              alert(0);
              alert(2);
            }
          } else {
            alert(0);
            alert(2);
          }
        }

        // --------------------------------------- COMMAND /del ---------------------------------------
        else if (splittedInp[0].equals("/del")) {
          if (splittedInp.length == 1) {
            alert(0);
            alert(5);
            cmd = "";
            return;
          }

          if (splittedInp.length == 2) {
            try {
              int delIndex = Integer.parseInt(splittedInp[1]);

              if (items[slots[delIndex-1].itemIndex].name == "") {
                logs += "> HINT: tidak ada item di slot " + delIndex + "\n";
              } else {
                items[slots[delIndex-1].itemIndex] = addItem(0, delIndex-1);
                logs += "> Item di slot " + delIndex + " berhasil dihapus\n";
              }
            }
            catch(Exception e) {
              alert(0);
              alert(5);
            }
          }
        }

        // --------------------------------------- COMMAND /set ---------------------------------------
        else if (splittedInp[0].equals("/set")) {
          if (splittedInp.length > 2 && splittedInp.length <= 4) {

            try {
              int slotNum = Integer.parseInt(splittedInp[1]);

              if (slotNum < 1 || slotNum > 30) {
                alert(0);
                alert(6);
                cmd = "";
                return;
              }

              int itemId = Integer.parseInt(splittedInp[2]);
              int quan = splittedInp.length == 4 ?
                Integer.parseInt(splittedInp[3]) : 1;

              if (addItem(itemId, 0) == null) {
                alert(3);
                cmd = "";
                return;
              }

              if (quan <= 0 || addItem(itemId, 0).countable == false) {
                quan = 1;
              } else if (quan > 9999) {
                quan = 9999;
              }

              items[slots[slotNum-1].itemIndex] = addItem(itemId, slotNum-1, quan);
              logs += "> Item " + itemId + " sebanyak " + quan +
                " berhasil mengganti item pada slot " + slotNum + "\n";
            }
            catch (Exception e) {
              alert(0);
              alert(6);
            }
          } else {
            alert(0);
            alert(6);
          }
        }

        // --------------------------------------- COMMAND /check ---------------------------------------
        else if (splittedInp[0].equals("/check")) {
          if (splittedInp.length == 1) {
            alert(0);
            alert(7);
            cmd = "";
            return;
          }

          if (splittedInp.length == 2) {
            try {
              int itemId = Integer.parseInt(splittedInp[1]);

              if (addItem(itemId, 0) == null || itemId == 0) {
                logs += "> ERROR: item dengan id " + itemId + " tidak ditemukan\n";
              } else {
                logs += "> Item dengan id " + itemId + " adalah " + addItem(itemId, 0).name + "\n";
              }
            }
            catch(Exception e) {
              alert(0);
              alert(7);
            }
          }
        }

        // --------------------------------------- COMMAND /help ---------------------------------------
        else if (splittedInp[0].equals("/help") && splittedInp.length == 1) {
          logs += "> | Berikut command yang bisa diketikkan:\n"+
            "> |\n" + "> | /add\n"+
            "> | /add {id item} {jumlah opsional}\n"+
            "> | *Menambah item dan jumlah item pada slot intenvory yang kosong\n"+
            "> |\n" + "> | /del\n"+
            "> | /del {slot number}\n"+
            "> | *Menghapus item dari intenvory\n"+
            "> |\n" + "> | /check\n"+
            "> | /check {id item}\n"+
            "> | *Mengecek nama item berdasarkan id item\n"+
            "> |\n" + "> | /set\n"+
            "> | /set {nomor slot} {id_item} {jumlah opsional}\n"+
            "> | *Mengganti item pada slot diinput dengan item diinginkan\n";
        }

        // --------------------------------------- KESALAHAN COMMAND ---------------------------------------
        else {
          alert(1);
        }
      }
      cmd = ""; // Kosongkan command box
    } else if (key == '>' || cmd.length() > 50) { // Jika command box lebih dari 50 huruf atau mencoba mengetik '>'
    } else if (key == CODED) {
    } else {
      cmd += key;
    }
  }
}

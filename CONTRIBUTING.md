# Contribution Guidelines
## Pendahuluan
Contribution Guidelines ditulis sebagai pedoman untuk kontributor dalam memberikan kontribusi pada program.

Pada Guidelines ini terdapat poin yang WAJIB dibaca yakni:
* [Gaya Penulisan](#gaya-penulisan)
* [Penjelasan Tugas](#penjelasan-tugas)
* [Batasan](#batasan)
* [Catatan Tambahan](#catatan-tambahan)

## Gaya Penulisan
Program ini ditulis menggunakan *Camel Case* untuk penamaan variabel, class, dan method yang ada kecuali untuk variabel dengan panjang penamaan 1 huruf.
Contoh: i, j, dan k untuk penamaan indeks perulangan.

*Camel Case* merupakan salah satu gaya penulisan koding di mana dalam penulisannya tidak terdapat spasi dan antar kata dipisahkan oleh huruf kapital dengan huruf pertama ditulis lowerCase.

Contoh penulisan:
* methodTerkemuka
* variabelPenting
* barangAjaib

## Penjelasan Tugas
Program dipisahkan dalam penugasan untuk memudahkan pembagian pengerjaan dan menghindari konflik. Kontributor selain penanggung jawab boleh membantu pengerjaan tugas
kontributor lain **dengan syarat** mendapat izin dari penanggung jawab tugas tersebut. Beberapa method/line mungkin dapat dipakai beberapa kali sehingga disarankan untuk kontributor saling berkomunikasi agar tidak perlu menulis kode yang duplikat.

* **Front End 2D**  `Tina37`  
Mengurus segala hal berkaitan dengan tampilan pada mode 2D (inventory), baik dalam desain, tata letak, hingga koordinasi kepada anggota tim dalam penggunaan warna.

* **Back End 2D** `Yafi39`  
Mengurus alur, struktur program, dan GUI serta mencegah terjadinya error atau bug pada mode 2D (inventory), dan hal-hal lainnya yang dapat memengaruhi pengalaman pengguna selama dijalankannya program.

* **Front End 3D** `Natalie40`  
Mengurus segala hal berkaitan dengan tampilan pada mode 3D (observe), baik dalam desain, tata letak, hingga koordinasi kepada anggota tim dalam penggunaan warna. Penugasan termasuk penggunaan Ray Tracing dasar pada item.

* **Back End 3D** `Natalie40`  
Mengurus alur, struktur program, dan GUI serta mencegah terjadinya error atau bug pada mode 3D (observe), dan hal-hal lainnya yang dapat memengaruhi pengalaman pengguna selama dijalankannya program.

* **Design UX** `Yafi39`  
Mengurus alur dan struktur program.

* **Pembuatan Icon** `Hadie43`  
Membuat Icon-icon yang akan digunakan di sepanjang kodingan.

* **Pengaturan Sound Effect** `Hadie43`  
Mengurus penggunaan efek suara atau lagu pada program dari awal peng-import-an library hingga penggunaan. Penugasan termasuk mengatur musik hingga tercapai kenyamanan audial untuk pengguna.

* **Pembuatan Item** `Semua Kontributor`  
Setiap kontributor (4 orang) pada pembuatan program ini diberi tugas untuk membuat 5 sampai 7 item masing-masing (untuk tampilan thumbnail dan preview) dengan minimal salah satunya memiliki tampilan 3D.

Ringkasan pembagian tugas dapat dibaca di file [README](README.md/#contributors). 

## Batasan
Penerapan time date (second, minute, hour) untuk Pemrograman Mode Continuous diganti dengan metode Increment agar pergerakan terlihat menjadi lebih smooth (telah diberikan izin oleh aslab).

Beberapa item tidak dibuat 3D mengingat tidak perlunya beberapa item untuk dijadikan 3D dalam inventory suatu gim. Hal ini juga dilakukan untuk mengurangi waktu pengerjaan projek mengingat adanya gemparan projek-projek lain di waktu yang sama.


## Catatan Tambahan
Penerapan mode 3D dari item hanya berlaku jika dan hanya jika item tersebut berkategori **Quest Item**, jangan menambahkan mode 3D untuk item pada kategori lain.  
Apabila terdapat kesulitan atau terjadi error, dimohon segara menghubungi kontributor lainnya untuk meminta bantuan agar waktu tidak terbuang sia-sia.  
Untuk memudahkan pembuatan item 2D, buat file baru di suatu tempat dengan kodingan dasar dan WAJIB seperti di bawah ini:
```
void setup(){
    size(500, 500, P3D);
    hint(DISABLE_OPTIMIZED_STROKE);
}

void draw(){
    strokeWeight(2);
	
    // ... kodinganmu di sini
	
}
```
dan untuk 3D adalah sebagai berikut:
```
void setup(){
  hint(DISABLE_OPTIMIZED_STROKE);
  size(500, 500, P3D);
}

void draw(){
  translate(width/2, height/2);
  rotateY(-rotY);
  rotateX(rotX);
  stroke(0);
  background(#6d6d6d);
  
  build();
}

boolean drag = false;
float rotY = 0;
float rotYNow = 0;
float xNow = 0;
float rotX = 0;
float rotXNow = 0;
float yNow = 0;


void mouseDragged(){
  if(!drag){
    xNow = mouseX;
    rotYNow = rotY;
    yNow = mouseY;
    rotXNow = rotX;
  }
    drag = true;
    rotY = rotYNow + (xNow - mouseX)/100;
    rotX = rotXNow + (yNow - mouseY)/100;
}

void mouseReleased(){
  drag = false;
}

void build(){

   // ... kodinganmu di sini

}
```


lalu buat class baru pada file sesuai dengan kategori item dibuat seperti berikut:
```
class namaItem extends item { // untuk item dengan jumlah, pakai consumable ketimbang item
  namaItem(int xI, int yI, places boxI){
    super(xI, yI, boxI, 
    "namaItem",  // Sesuaikan
    false);
    // isikan parameter terakhir dengan "true" apabila
    // benda memiliki versi 3D / observable.
    // tambahkan param quan di konstruktor dan setelah param terakhir
    // apabila item memiliki jumlah, lalu tambah lagi param "true" jika bisa dimakan
    // atau sebaliknya.
  }
  
  
  void preview(){
    pushMatrix();
    
    // ... kodingan untuk preview    

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }
  
  
  void thumbnail(){
    pushMatrix();
    translate(x-50, y-50);
    
    // ... kodingan untuk thumbnail

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }


  // buat fungsi di bawah ini jika dan hanya jika
  // benda memiliki mode observe (3D)
  void observe(){
    pushMatrix();

    // ... kodingan untuk tampilan 3D

    popMatrix();
  }



  void stats(){

    // ... kodingan untuk teks stat

  }



  void desc(){

    // ... kodingan untuk teks deskripsi

  }



  
}
```
Atau apabila item pada versi preview dan thumbnail memiliki bentuk yang sama, maka dapat pula ditulis seperti berikut:
```
class namaItem extends item { // untuk item dengan jumlah, pakai consumable ketimbang item
  namaItem(int xI, int yI, places boxI){
    super(xI, yI, boxI, 
    "namaItem",  // Sesuaikan
    false);
    // isikan parameter terakhir dengan "true" apabila
    // benda memiliki versi 3D / observable.
    // tambahkan param quan di konstruktor dan setelah param terakhir
    // apabila item memiliki jumlah, lalu tambah lagi param "true" jika bisa dimakan
    // atau sebaliknya.
  }
  
  void preview(){
    pushMatrix();
    scale(0.4);
    build();
    popMatrix();
  };
  
  void thumbnail(){
    pushMatrix();
    translate(x-50, y-50);
    scale(0.2);
    build();
    popMatrix();
  }
  
  void build(){
    pushMatrix();

    // ... kodingan di sini
	
    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }


  // buat fungsi di bawah ini jika dan hanya jika
  // benda memiliki mode observe (3D)
  void observe(){
    pushMatrix();

    // ... kodingan untuk tampilan 3D

    popMatrix();
  }



  void stats(){

    // ... kodingan untuk teks stat

  }



  void desc(){

    // ... kodingan untuk teks deskripsi

  }
}
```
Lalu buka file [component](component.pde) dan scroll ke paling bawah dan tambahkan kodingan di dalam fungsi addItem di bawah if dan di atas seperti berikut:
```
  if(id == idTerkini) return new namaItem(slots[ids].x, slots[ids].y, slots[ids]);
```
Ubah **idTerkini** dengan id yang berbeda dengan item di atasnya dan ubah **namaItem** sesuai nama class dari item baru yang dibuat.  
tambahkan "quan" setelah parameter terakhir apabila memiliki jumlah.  
Jangan lupa untuk mendaftarkan item di list **items** di [main](main.pde).  
  
Biasakan lakukan pull sebelum mulai melakukan koding.  
***PASTIKAN KODINGAN YANG "SUDAH DI-PUSH" MASUK KE HISTORY GITHUB***

### Khansa Jovita - 2106651686 - PBP D

# Tugas 7: Elemen Dasar Flutter

 ## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget yang tidak dapat diubah, isinya berupa halaman yang bersifat statis. Sedangkan stateful widget adalah widget yang dapat diubah dan isinya dapat berupa halaman widget yang dinamis. 

 ## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
 - Material App : merupakan sebuah widget parent yang untuk membuat aplikasi material dan menerapkan style material design
- Scaffold : sebagai pengatur struktur visual layout 
- Column : Display children dalam format vertikal
- Center : Display children yang diletakkan di tengah-tengah
- Text : Widget yang berupa teks
- AppBar : Digunakan untuk membuat sebuah bar aplikasi. 
- Floating Action Button : Membuat display button dengan tindakan mengambang
- Visibility : Membuat display button terlihat atau tidak terlihat

 ## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah fitur untuk melakukan pembaruan ke suatu objek komponen. Variabel yang terdampak adalah variabel yang bergantung pada suatu class, sehingga saat terjadi perubahan, variabel tersebut akan melakukan build ulang.

 ## Jelaskan perbedaan antara const dengan final.
Const dan final sama-sama merupakan variabel immutable. Namun, const merupakan variabel yang nilainya konstan dan harus sudah diketahui saat waktu kompilasi, sedangkan final tidak wajib untuk memiliki nilai pada saat waktu kompilasi dan tidak bersifat konstan.

 ## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Melakukan perintah `flutter create counter_7` pada command prompt.
2. Pada file `main.dart`, buat function `_decrementCounter()` yang berfungsi untuk mengurangi angka saat button 'kurang' ditekan. 
3. Buat text yang menyatakan genap atau ganjil sesuai dengan angkanya, dan ubah warna sesuai dengan ganjil atau genap. Gunakan if condition untuk kondisi ini.  
4. Membuat button kurang dan tambah dan melakukan bonus di mana button kurang tidak timbul saat angka di 0 dengan menggunakan Visibility.
5. Run program jika sudah selesai untuk mengecek apakah tampilan sudah sesuai atau belum. 

# Tugas 8: Flutter Form

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
`Navigator.push()` digunakan untuk menambahkan route baru, namun route sebelumnya tetap tersimpan pada _stack_. Sedangkan `Navigator.pushReplacement()` juga menambahkan route baru, namun route sebelumnya tidak akan tersimpan pada _stack_. 

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- SizedBox = digunakan untuk menambahkan jarak secara horizontal maupun vertikal
- TextFormField = Sebagai widget yang digunakan untuk membuat form untuk user mengisi
- ListView = Widget untuk menampilkan daftar item
- Navigator.pop = widget untuk mengembalikan halaman terakhir atau menghilangkan halaman paling atas
- DropdownButtonField = widget untuk menu dropdown dalam bentuk form
- TextButton = widget untuk menampilkan button yang berisi teks

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed
- onChanged
- onTap
- onSaved

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Pada dasarnya navigator sama dengan data stack. Halaman pada aplikasi disebut sebagai _route_, yang mana jika kita berada pada suatu halaman, maka halaman tersebut sudah berada dalam navigator. Jika melakukan push, maka halaman akan terganti menjadi halaman baru. Namun, jika melakukan pop, maka kita akan kembali ke halaman sebelumnya.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat sebuah drawer sebagai menu navigasi yang berisi `counter_7`, `Tambah Budget`, dan `Data Budget`. 
2. Membuat page baru yang berupa form degan nama `form.dart`, di mana dibuat sebuah form untuk memasukkan budget pengeluaran dan pemasukan
3. Pada form page, dibuat variabel-variabel yang menampung string, integer, dan list untuk data yang akan diberikan dari user.
4. Membuat page baru juga bernama `budget.dart` yang berupa tampilan dari input form tersebut yang tampilannya berbentuk list. 

# Tugas 9: Integrasi Web Service pada Flutter

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Iya, data dari JSON langsung didecode dengan `jsonDecode` berupa `Map[str, dynamic]`. Yang mana hal tersebut menjadi lebih rentan adanya runtime error dan tidak dapat mendeteksi value dari attribute-nya. Sehingga tanpa model, pengambilan data JSON tidak begitu bagus.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Column = Widget untuk membuat child menjadi kolom
- Center = Widget untuk membuat child jadi di tengah
- Container = Membungkus per child 
- TextButton = widget untuk text menjadi button

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Kirim http request dengan url yang nantinya server akan mengembalikan http response dengan menggunakan library `http`, Response yang dikembalikan akan didecode dengan menggunakan `jsonDecode()` dan disimpan. Kemudian, hasilnya akan digunakan untuk ditampilkan dengan menggunakan `ListView.builder()`.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambahkan `ListTile` untuk `mywatchlist_page.dart` pada drawer di setiap file dart.
2. Buat file `watchlist.dart` yang berisikan model dari JSON. 3. Melakukan fetch data dari heroku di file baru untuk menampilkan list mywatchlist.
4. Gunakan `GestureDetector` untuk dapat melakukan tap pada setiap list mywatchlist di file `mywatclist_page.dart`.
5. Buat file detail, untuk memberikan detail dari watchlist-nya, dan tambahkan tombol back untuk kembali ke page sebelumnya.


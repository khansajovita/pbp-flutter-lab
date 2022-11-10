### Khansa Jovita - 2106651686 - PBP D

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
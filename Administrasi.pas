//bagian header (judul)
program administrasi_mahasiswa;
uses crt;

//bagian variabel
type
  Mahasiswa = record
    nim: string[10];
    nama: string[50];
    jurusan: string[50];
    angkatan: integer;
  end;

const
  MaxMahasiswa = 100;

type
  MahasiswaArray = array[1..MaxMahasiswa] of Mahasiswa;

var
  dataMahasiswa: MahasiswaArray;
  jumlahMahasiswa: integer;


//halaman ketika memilih opsi nomor 1 atau tambah mahasiswa
procedure TambahMahasiswa(var data: MahasiswaArray; var jumlah: integer);
var
  nim, nama, jurusan: string[50];
  angkatan: integer;
begin
  WriteLn('Tambah Mahasiswa');
  if jumlah >= MaxMahasiswa then
  begin
    WriteLn('Kapasitas data mahasiswa sudah penuh.');
    Exit;
  end;

  Write('NIM: ');
  ReadLn(nim);
  Write('Nama: ');
  ReadLn(nama);
  Write('Jurusan: ');
  ReadLn(jurusan);
  Write('Angkatan: ');
  ReadLn(angkatan);

  jumlah := jumlah + 1;
  data[jumlah].nim := nim;
  data[jumlah].nama := nama;
  data[jumlah].jurusan := jurusan;
  data[jumlah].angkatan := angkatan;

  WriteLn('Mahasiswa berhasil ditambahkan.');
end;


//halaman ketika memilih opsi nomor 2 atau tampil mahasiswa
procedure TampilMahasiswa(data: MahasiswaArray; jumlah: integer);
var
  i: integer;
begin
  WriteLn('Data Mahasiswa');
  WriteLn('--------------------------------------');
  for i := 1 to jumlah do
  begin
    WriteLn('NIM     : ', data[i].nim);
    WriteLn('Nama    : ', data[i].nama);
    WriteLn('Jurusan : ', data[i].jurusan);
    WriteLn('Angkatan: ', data[i].angkatan);
    WriteLn('--------------------------------------');
  end;
end;


//halaman awal ketika di-run
procedure MainMenu(var data: MahasiswaArray; var jumlah: integer);
var
  pilihan: integer;
begin
  repeat
    WriteLn('=== ADMINISTRASI MAHASISWA ===');
    WriteLn('1. Tambah Mahasiswa');
    WriteLn('2. Tampil Data Mahasiswa');
    WriteLn('3. Keluar');
    Write('Pilihan: ');
    ReadLn(pilihan);

    case pilihan of
      1: TambahMahasiswa(data, jumlah);
      2: TampilMahasiswa(data, jumlah);
      3: WriteLn('Terima kasih. Sampai jumpa!');
      else
        WriteLn('Pilihan tidak valid.');
    end;

    WriteLn;
  until pilihan = 3;
end;


//bagian algoritma, yang akan memanggil procedure mainmenu
begin
  jumlahMahasiswa := 0;
  Mainmenu(dataMahasiswa, jumlahMahasiswa);
end.
uses crt;

//bagian variabel
type
  Mahasiswa = record
    nim: string[10];
    nama: string[50];
    jurusan: string[50];
    angkatan: integer;
  end;

const
  MaxMahasiswa = 100;

type
  MahasiswaArray = array[1..MaxMahasiswa] of Mahasiswa;

var
  dataMahasiswa: MahasiswaArray;
  jumlahMahasiswa: integer;


//halaman ketika memilih opsi nomor 1 atau tambah mahasiswa
procedure TambahMahasiswa(var data: MahasiswaArray; var jumlah: integer);
var
  nim, nama, jurusan: string[50];
  angkatan: integer;
begin
  WriteLn('Tambah Mahasiswa');
  if jumlah >= MaxMahasiswa then
  begin
    WriteLn('Kapasitas data mahasiswa sudah penuh.');
    Exit;
  end;

  Write('NIM: ');
  ReadLn(nim);
  Write('Nama: ');
  ReadLn(nama);
  Write('Jurusan: ');
  ReadLn(jurusan);
  Write('Angkatan: ');
  ReadLn(angkatan);

  jumlah := jumlah + 1;
  data[jumlah].nim := nim;
  data[jumlah].nama := nama;
  data[jumlah].jurusan := jurusan;
  data[jumlah].angkatan := angkatan;

  WriteLn('Mahasiswa berhasil ditambahkan.');
end;


//halaman ketika memilih opsi nomor 2 atau tampil mahasiswa
procedure TampilMahasiswa(data: MahasiswaArray; jumlah: integer);
var
  i: integer;
begin
  WriteLn('Data Mahasiswa');
  WriteLn('--------------------------------------');
  for i := 1 to jumlah do
  begin
    WriteLn('NIM     : ', data[i].nim);
    WriteLn('Nama    : ', data[i].nama);
    WriteLn('Jurusan : ', data[i].jurusan);
    WriteLn('Angkatan: ', data[i].angkatan);
    WriteLn('--------------------------------------');
  end;
end;


//halaman awal ketika di-run
procedure MainMenu(var data: MahasiswaArray; var jumlah: integer);
var
  pilihan: integer;
begin
  repeat
    WriteLn('=== ADMINISTRASI MAHASISWA ===');
    WriteLn('1. Tambah Mahasiswa');
    WriteLn('2. Tampil Data Mahasiswa');
    WriteLn('3. Keluar');
    Write('Pilihan: ');
    ReadLn(pilihan);

    case pilihan of
      1: TambahMahasiswa(data, jumlah);
      2: TampilMahasiswa(data, jumlah);
      3: WriteLn('Terima kasih. Sampai jumpa!');
      else
        WriteLn('Pilihan tidak valid.');
    end;

    WriteLn;
  until pilihan = 3;
end;


//bagian algoritma, yang akan memanggil procedure mainmenu
begin
  jumlahMahasiswa := 0;
  Mainmenu(dataMahasiswa, jumlahMahasiswa);
end.
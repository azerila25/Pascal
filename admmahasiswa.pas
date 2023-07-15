program Administrasi;

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

procedure UpdateMahasiswa(var data: MahasiswaArray; jumlah: integer);
var
  nim: string[10];
  i: integer;
begin
  WriteLn('Update Mahasiswa');
  Write('Masukkan NIM Mahasiswa yang akan diupdate: ');
  ReadLn(nim);

  for i := 1 to jumlah do
  begin
    if data[i].nim = nim then
    begin
      Write('Nama: ');
      ReadLn(data[i].nama);
      Write('Jurusan: ');
      ReadLn(data[i].jurusan);
      Write('Angkatan: ');
      ReadLn(data[i].angkatan);

      WriteLn('Data mahasiswa dengan NIM ', nim, ' berhasil diupdate.');
      Exit;
    end;
  end;

  WriteLn('Data mahasiswa dengan NIM ', nim, ' tidak ditemukan.');
end;

procedure HapusMahasiswa(var data: MahasiswaArray; var jumlah: integer);
var
  nim: string[10];
  i, j: integer;
begin
  WriteLn('Hapus Mahasiswa');
  Write('Masukkan NIM Mahasiswa yang akan dihapus: ');
  ReadLn(nim);

  for i := 1 to jumlah do
  begin
    if data[i].nim = nim then
    begin
      for j := i to jumlah - 1 do
        data[j] := data[j + 1];

      jumlah := jumlah - 1;

      WriteLn('Data mahasiswa dengan NIM ', nim, ' berhasil dihapus.');
      Exit;
    end;
  end;

  WriteLn('Data mahasiswa dengan NIM ', nim, ' tidak ditemukan.');
end;

procedure MainMenu(var data: MahasiswaArray; var jumlah: integer);
var
  pilihan: integer;
begin
  repeat
    WriteLn('=== ADMINISTRASI MAHASISWA ===');
    WriteLn('1. Tambah Mahasiswa');
    WriteLn('2. Tampil Data Mahasiswa');
    WriteLn('3. Update Mahasiswa');
    WriteLn('4. Hapus Mahasiswa');
    WriteLn('5. Keluar');
    Write('Pilihan: ');
    ReadLn(pilihan);

    case pilihan of
      1: TambahMahasiswa(data, jumlah);
      2: TampilMahasiswa(data, jumlah);
      3: UpdateMahasiswa(data, jumlah);
      4: HapusMahasiswa(data, jumlah);
      5: WriteLn('Terima kasih. Sampai jumpa!');
      else
        WriteLn('Pilihan tidak valid.');
    end;

    WriteLn;
  until pilihan = 5;
end;

begin
  jumlahMahasiswa := 0;
  Mainmenu(dataMahasiswa, jumlahMahasiswa);
end.
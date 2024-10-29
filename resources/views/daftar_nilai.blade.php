@php
$no = 1;
//array scalar
$s1 = ['nama' => 'Rahmat', 'nilai' => 80];
$s2 = ['nama' => 'Rihmut', 'nilai' => 88];
$s3 = ['nama' => 'Rahmet', 'nilai' => 87];
$s4 = ['nama' => 'Ruhmit', 'nilai' => 89];
$s5 = ['nama' => 'Rohhmat', 'nilai' => 100];

//array associative
$judul = ['No', 'Nama', 'Nilai', 'Keterangan'];
$siswa = [$s1, $s2, $s3, $s4, $s5];
@endphp
<table border="1" align="center" cellpadding="10" width="75%">
    <thead>
        <tr>
            @foreach ($judul as $jdl)
            <th>{{ $jdl }}</th>
            @endforeach
        </tr>
    </thead>
    <tbody>
        @foreach ($siswa as $s)
        @php $ket = ($s['nilai'] >= 60) ? "Lulus" : "Gagal"; @endphp
        <tr>
            <td>{{ $no++ }}</td>
            <td>{{ $s['nama'] }}</td>
            <td>{{ $s['nilai'] }}</td>
            <td>{{ $ket }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
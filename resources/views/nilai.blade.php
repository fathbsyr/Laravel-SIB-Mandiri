@php
$nama = "Rahmat";
$nilai = 60;
@endphp

@if ($nilai >= 60)
    @php $ket = "Lulus"; @endphp
@else
    @php $ket = "Gagal"; @endphp
@endif

<p>Siswa: {{ $nama }}</p>
<p> {{$mhs1}} </p>
<p>Dengan Nilai: {{ $nilai }}</p> 
<p>Ket: {{ $ket }}</p> 

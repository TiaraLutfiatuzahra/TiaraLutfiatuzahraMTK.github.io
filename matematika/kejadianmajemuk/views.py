from django.shortcuts import render

# Create your views here.
def kejadianmajemuk(request):
    judul = "Materi"
    materi = ("Kaidah Penjumlahan", "Kaidah Perkalian", "Kombinasi", "Permutasi")

    konteks = {
        'title' : judul,
        'materi' : materi,
    }
    return render(request, 'indexkejadianmajemuk.html', konteks)
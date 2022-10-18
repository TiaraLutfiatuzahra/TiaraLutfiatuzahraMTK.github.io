from django.shortcuts import render

# Create your views here.
def peluang(request):
    judul = "Materi"
    materi = ("Kaidah Penjumlahan", "Kaidah Perkalian", "Kombinasi", "Permutasi")

    konteks = {
        'title' : judul,
        'materi' : materi,
    }
    return render(request, 'indexpeluang.html', konteks)
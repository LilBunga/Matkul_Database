#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_NAME_LENGTH 100
#define MAX_DOCTOR_NAME_LENGTH 50
#define MAX_PASSWORD_LENGTH 20

typedef struct {
    char nama_pengunjung[MAX_NAME_LENGTH];
    int umur;
    char nama_dokter[MAX_DOCTOR_NAME_LENGTH];
} Pengunjung;

typedef struct {
    Pengunjung *data;
    int size;
    int capacity;
} Heap;

Heap createHeap(int capacity) {
    Heap heap;
    heap.data = (Pengunjung *)malloc(capacity * sizeof(Pengunjung));
    heap.size = 0;
    heap.capacity = capacity;
    return heap;
}

void swap(Pengunjung *a, Pengunjung *b) {
    Pengunjung temp = *a;
    *a = *b;
    *b = temp;
}

void heapify(Heap *heap, int parentIndex) {
    int largest = parentIndex;
    int leftChild = 2 * parentIndex + 1;
    int rightChild = 2 * parentIndex + 2;

    if (leftChild < heap->size && strcmp(heap->data[leftChild].nama_pengunjung, heap->data[largest].nama_pengunjung) > 0) {
        largest = leftChild;
    }

    if (rightChild < heap->size && strcmp(heap->data[rightChild].nama_pengunjung, heap->data[largest].nama_pengunjung) > 0) {
        largest = rightChild;
    }

    if (largest != parentIndex) {
        swap(&heap->data[parentIndex], &heap->data[largest]);
        heapify(heap, largest);
    }
}

void buildHeap(Heap *heap) {
    int lastNonLeaf = (heap->size / 2) - 1;
    for (int i = lastNonLeaf; i >= 0; i--) {
        heapify(heap, i);
    }
}

void insert(Heap *heap, const char *nama_pengunjung, int umur, const char *nama_dokter) {
    if (heap->size == heap->capacity) {
        printf("Heap penuh. Tidak dapat menambahkan pengunjung baru.\n");
        return;
    }

    Pengunjung newPengunjung;
    strcpy(newPengunjung.nama_pengunjung, nama_pengunjung);
    newPengunjung.umur = umur;
    strcpy(newPengunjung.nama_dokter, nama_dokter);

    heap->data[heap->size] = newPengunjung;
    heap->size++;

    buildHeap(heap);
}

void deletePengunjung(Heap *heap, const char *nama_pengunjung) {
    int index = -1;
    for (int i = 0; i < heap->size; i++) {
        if (strcmp(heap->data[i].nama_pengunjung, nama_pengunjung) == 0) {
            index = i;
            break;
        }
    }

    if (index == -1) {
        printf("Pengunjung dengan nama %s tidak ditemukan.\n", nama_pengunjung);
        return;
    }

    heap->data[index] = heap->data[heap->size - 1];
    heap->size--;

    buildHeap(heap);

    printf("Pengunjung dengan nama %s berhasil dihapus.\n", nama_pengunjung);
}

void printHeap(const Heap *heap) {
    printf("Daftar Pengunjung:\n");
    for (int i = 0; i < heap->size; i++) {
        printf("Nama Pengunjung: %s\n", heap->data[i].nama_pengunjung);
        printf("Umur Pengunjung: %d\n", heap->data[i].umur);
        printf("Dokter yang Dipilih: %s\n", heap->data[i].nama_dokter);
        printf("-----------------------\n");
    }
}

void editPengunjung(Heap *heap, const char *nama_pengunjung) {
    int index = -1;
    for (int i = 0; i < heap->size; i++) {
        if (strcmp(heap->data[i].nama_pengunjung, nama_pengunjung) == 0) {
            index = i;
            break;
        }
    }

    if (index == -1) {
        printf("Pengunjung dengan nama %s tidak ditemukan.\n", nama_pengunjung);
        return;
    }

    char newNamaPengunjung[MAX_NAME_LENGTH];
    int newUmur;
    char newNamaDokter[MAX_DOCTOR_NAME_LENGTH];

    printf("Masukkan Nama Pengunjung Baru: ");
    scanf(" %[^\n]", newNamaPengunjung);
    printf("Masukkan Umur Pengunjung Baru: ");
    scanf("%d", &newUmur);
    printf("Masukkan Nama Dokter Baru: ");
    scanf(" %[^\n]", newNamaDokter);

    strcpy(heap->data[index].nama_pengunjung, newNamaPengunjung);
    heap->data[index].umur = newUmur;
    strcpy(heap->data[index].nama_dokter, newNamaDokter);

    printf("Data pengunjung berhasil diperbarui.\n");
}

void chooseDokter() {
    printf("Pilih Dokter:\n");
    printf("1. Dokter Spesialis\n");
    printf("2. Dokter Anak\n");
    printf("3. Dokter Kandungan\n");
}

void chooseSpesialisDokter() {
    printf("Pilih Spesialis Dokter:\n");
    printf("1. dr. Zoraida Dwi Wahyuni Sp.PD\n");
    printf("2. dr. Wendy Budiawan Sp.PD-FINASIM\n");
    printf("3. dr. Bunga Petriana Sp.PD\n");
}

void chooseDokterAnak() {
    printf("Pilih Dokter Anak:\n");
    printf("1. dr. Ayling Sanjaya, M.Kes.,Sp.A\n");
    printf("2. dr. Prasodjo, Sp.A\n");
    printf("3. dr. Sri Kusumawardani, Sp.A\n");
}

void chooseDokterKandungan() {
    printf("Pilih Dokter Kandungan:\n");
    printf("1. dr. Nuke Nugrahanti SpOG\n");
    printf("2. dr. Ika Fransisca, SpOG\n");
    printf("3. dr. Novina Purwitakartikarini Sp.OG\n");
}

int main() {
    Heap heap = createHeap(100);
    char password[MAX_PASSWORD_LENGTH];
    strcpy(password, "admin123");
    int isPasswordRequired = 1; // Flag to check if password is required

    while (1) {
        printf("=== Sistem Pendaftaran Pengunjung ===\n");
        printf("1. Tambah Pengunjung\n");
        printf("2. Tampilkan Daftar Pengunjung\n");
        printf("3. Hapus Pengunjung\n");
        printf("4. Edit Pengunjung\n");
        printf("5. Keluar\n");
        printf("Pilih: ");
        int choice;
        scanf("%d", &choice);

        switch (choice) {
            case 1: {
                char nama_pengunjung[MAX_NAME_LENGTH];
                int umur;

                printf("Masukkan Nama Pengunjung: ");
                scanf(" %[^\n]", nama_pengunjung);
                printf("Masukkan Umur Pengunjung: ");
                scanf("%d", &umur);

                chooseDokter();
                int dokter_choice;
                scanf("%d", &dokter_choice);

                switch (dokter_choice) {
                    case 1: {
                        chooseSpesialisDokter();
                        int spesialis_choice;
                        scanf("%d", &spesialis_choice);

                        switch (spesialis_choice) {
                            case 1:
                                insert(&heap, nama_pengunjung, umur, "Spesialis 1");
                                break;
                            case 2:
                                insert(&heap, nama_pengunjung, umur, "Spesialis 2");
                                break;
                            case 3:
                                insert(&heap, nama_pengunjung, umur, "Spesialis 3");
                                break;
                            default:
                                printf("Pilihan tidak valid.\n");
                                break;
                        }

                        break;
                    }
                    case 2:
                        chooseDokterAnak();
                        int dokter_anak_choice;
                        scanf("%d", &dokter_anak_choice);

                        switch (dokter_anak_choice) {
                            case 1:
                                insert(&heap, nama_pengunjung, umur, "Dokter Anak 1");
                                break;
                            case 2:
                                insert(&heap, nama_pengunjung, umur, "Dokter Anak 2");
                                break;
                            case 3:
                                insert(&heap, nama_pengunjung, umur, "Dokter Anak 3");
                                break;
                            default:
                                printf("Pilihan tidak valid.\n");
                                break;
                        }

                        break;
                    case 3:
                        chooseDokterKandungan();
                        int dokter_kandungan_choice;
                        scanf("%d", &dokter_kandungan_choice);

                        switch (dokter_kandungan_choice) {
                            case 1:
                                insert(&heap, nama_pengunjung, umur, "Dokter Kandungan 1");
                                break;
                            case 2:
                                insert(&heap, nama_pengunjung, umur, "Dokter Kandungan 2");
                                break;
                            case 3:
                                insert(&heap, nama_pengunjung, umur, "Dokter Kandungan 3");
                                break;
                            default:
                                printf("Pilihan tidak valid.\n");
                                break;
                        }

                        break;
                    default:
                        printf("Pilihan tidak valid.\n");
                        break;
                }

                printf("Pengunjung dengan nama %s berhasil ditambahkan.\n", nama_pengunjung);
                break;
            }
            case 2:
                printHeap(&heap);
                break;
            case 3: {
                char nama_pengunjung[MAX_NAME_LENGTH];
                printf("Masukkan Nama Pengunjung yang Akan Dihapus: ");
                scanf(" %[^\n]", nama_pengunjung);
                deletePengunjung(&heap, nama_pengunjung);
                break;
            }
            case 4: {
                if (isPasswordRequired) {
                    char inputPassword[MAX_PASSWORD_LENGTH];
                    printf("Masukkan Password: ");
                    scanf(" %[^\n]", inputPassword);

                    if (strcmp(inputPassword, password) != 0) {
                        printf("Password salah. Tidak dapat mengakses fitur ini.\n");
                        break;
                    }
                }

                char nama_pengunjung[MAX_NAME_LENGTH];
                int umur;
                printf("Masukkan Nama Pengunjung yang Akan Diubah: ");
                scanf(" %[^\n]", nama_pengunjung);
                editPengunjung(&heap, nama_pengunjung);
                
                 chooseDokter();
                int dokter_choice;
                scanf("%d", &dokter_choice);
                switch (dokter_choice) {
                    case 1: {
                        chooseSpesialisDokter();
                        int spesialis_choice;
                        scanf("%d", &spesialis_choice);

                        switch (spesialis_choice) {
                            case 1:
                                insert(&heap, nama_pengunjung, umur, "Spesialis 1");
                                break;
                            case 2:
                                insert(&heap, nama_pengunjung, umur, "Spesialis 2");
                                break;
                            case 3:
                                insert(&heap, nama_pengunjung, umur, "Spesialis 3");
                                break;
                            default:
                                printf("Pilihan tidak valid.\n");
                                break;
                        }

                        break;
                    }
                    case 2:
                        chooseDokterAnak();
                        int dokter_anak_choice;
                        scanf("%d", &dokter_anak_choice);

                        switch (dokter_anak_choice) {
                            case 1:
                                insert(&heap, nama_pengunjung, umur, "Dokter Anak 1");
                                break;
                            case 2:
                                insert(&heap, nama_pengunjung, umur, "Dokter Anak 2");
                                break;
                            case 3:
                                insert(&heap, nama_pengunjung, umur, "Dokter Anak 3");
                                break;
                            default:
                                printf("Pilihan tidak valid.\n");
                                break;
                        }

                        break;
                    case 3:
                        chooseDokterKandungan();
                        int dokter_kandungan_choice;
                        scanf("%d", &dokter_kandungan_choice);

                        switch (dokter_kandungan_choice) {
                            case 1:
                                insert(&heap, nama_pengunjung, umur, "Dokter Kandungan 1");
                                break;
                            case 2:
                                insert(&heap, nama_pengunjung, umur, "Dokter Kandungan 2");
                                break;
                            case 3:
                                insert(&heap, nama_pengunjung, umur, "Dokter Kandungan 3");
                                break;
                            default:
                                printf("Pilihan tidak valid.\n");
                                break;
                        }

                        break;
                    default:
                        printf("Pilihan tidak valid.\n");
                        break;
                }

                printf("Pengunjung dengan nama %s berhasil ditambahkan.\n", nama_pengunjung);
                break;
            }
            case 5:
                printf("Terima kasih. Program selesai.\n");
                return 0;
            default:
                printf("Pilihan tidak valid.\n");
                break;
        }
    }

    return 0;
}

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <memory.h>

typedef struct {
    char ten[50];
    char masv[10];
    char sdt[20];
} sinhvien;
sinhvien mangsinhvien[10];
int sosinhvien = 0;

void removestdchar(char aray[]) {
    if (strchr(aray, '\n') == NULL) {
        while (fgetc(stdin) != '\n');
    }
}

void nhapmoi() {
    char choice = 'y';
    for (int i = sosinhvien; choice == 'y'; ++i) {
        while (true) {
            printf("nhap ma sinh vien %d\n", i + 1);
            fgets((mangsinhvien[i].masv), 10, stdin);
            if (strlen(mangsinhvien[i].masv) != 6) {
                printf("Ma sinh vien phai du 5 ky tu\n");
                removestdchar(mangsinhvien[i].masv);
            } else {
                break;
            }
        }
        mangsinhvien[i].masv[strlen(mangsinhvien[i].masv) - 1] = ' ';
        printf("nhap ten sinh vien %d\n", i + 1);
        fgets((mangsinhvien[i].ten), 50, stdin);
        removestdchar(mangsinhvien[i].ten);
        mangsinhvien[i].ten[strlen(mangsinhvien[i].ten) - 1] = ' ';
        printf("nhap sdt sinh vien %d\n", i + 1);
        fgets((mangsinhvien[i].sdt), 20, stdin);
        removestdchar(mangsinhvien[i].sdt);
        mangsinhvien[i].sdt[strlen(mangsinhvien[i].sdt) - 1] = ' ';
        sosinhvien = i + 1;
        if (sosinhvien >= 10) {
            printf("--------------------------\n");
            printf("Danh sach sinh vien da day\n");
            break;
        }
        printf("Ban co muon tiep tuc nhap them sinh vien(y|n)? :\n");
        scanf("%c", &choice);
        getchar();
    }
}

void menu() {
    printf("---------------MENU----------------\n");
    printf("1. Them moi sinh vien \n");
    printf("2. Hien thi danh sach sinh vien \n");
    printf("3. Luu danh sach sinh vien ra file \n");
    printf("4. Doc danh sach sinh vien tu file \n");
    printf("5.Thoat chuong trinh\n");
    printf("-----------------------------------\n");
}

void hienthi() {
    if (sosinhvien == 0) {
        printf("chua co du lieu\n");
    } else {
        printf("\n+-----+-----------+------------------------------------+-------------------+");
        printf("\n| STT |    MASV   |         H O   V A   T E N          |        S D T      |");
        printf("\n+-----+-----------+------------------------------------+-------------------+\n");
        for (int i = 0; i < sosinhvien; ++i) {
            printf("\n|%3d  | ", i + 1);
            printf("%-10s| %-35s| %-18s| \n", mangsinhvien[i].masv, mangsinhvien[i].ten, mangsinhvien[i].sdt);
        }
        printf("+-----+-----------+------------------------------------+-------------------+\n");
    }
}

void ghifile() {
    if (sosinhvien == 0) {
        printf("chua co du lieu\n");
    } else {
        FILE *fp;
        fp = fopen("../danhsachsinhvien.txt", "w+");
        fprintf(fp, "\n+-----+-----------+------------------------------------+-------------------+");
        fprintf(fp, "\n| STT |    MASV   |         H O   V A   T E N          |        S D T      |");
        fprintf(fp, "\n+-----+-----------+------------------------------------+-------------------+\n");
        for (int i = 0; i < sosinhvien; ++i) {
            fprintf(fp, "\n|%3d  | ", i + 1);
            fprintf(fp, "%-10s| %-35s| %-18s| \n", mangsinhvien[i].masv, mangsinhvien[i].ten, mangsinhvien[i].sdt);
        }
        fprintf(fp, "+-----+-----------+------------------------------------+-------------------+\n");
        fclose(fp);
        printf("Danh sach sinh vien da duoc luu ra file\n");
    }
}

void docfile() {
    if (sosinhvien == 0) {
        printf("chua co du lieu\n");
    } else {
        FILE *fp;
        char myvar[255];
        fp = fopen("../danhsachsinhvien.txt", "r+");
        while (fgets(myvar, 255, fp) != NULL) {
            printf("%s", myvar);
        }
        fclose(fp);
    }
}

void main() {
    //Menu lua chon
    int luachon;
    while (true) {
        menu();
        printf("nhap lua chon cua ban (1|2|3|4|5): \n");
        scanf("%d", &luachon);
        getchar();
        printf("-----------------\n");
        switch (luachon) {
            case 1:
                nhapmoi();
                break;
            case 2:
                hienthi();
                break;
            case 3:
                ghifile();
                break;
            case 4:
                docfile();
                break;
            case 5:
                printf("Tam biet");
                exit(1);
            default:
                printf("Lua chon sai\n");
                break;
        }
    }
}
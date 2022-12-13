#include <iostream>
using namespace std;

int main()
{
    setlocale(LC_ALL, "Russian");

    short a, b, c, d, x, y, leftborder, rightborder;

    a = 4;
    b = -3;
    c = 6;
    d = 10;
    x = -4;
    y = 0;
    leftborder = -4;
    rightborder = 4;

    cout << "Используя ассемблер: ";

    for (int i = 0; i < rightborder - leftborder + 1; i++) {

        __asm {

        start:

            cmp x, 0;

            jl if_x_negative;
            je if_x_zero;
            jg if_x_positive;

        if_x_negative:

            mov ax, c;
            mov bx, x;
            imul bx;
            mov bx, b;
            add ax, bx;
            mov bx, a;
            idiv bx;

            mov y, ax;

            jmp exit1




        if_x_zero:

            mov ax, b;
            mov bx, c;
            imul bx;
            add ax, 5;
            mov bx, -1;
            imul bx;

            mov y, ax;

            jmp exit1





        if_x_positive:

            mov ax, d;
            mov bx, d;
            imul bx;
            mov bx, x;
            imul bx;
            mov bx, c;
            add bx, 3;
            idiv bx;

            mov y, ax;

            jmp exit1


                exit1:
            add x,1
            mov ax, x

        }


        cout << y << " ";

    }

    cout << endl;
    x = -4;

    cout << "Используя c++: ";

    for (int i = 0; i < rightborder - leftborder + 1; i++) {

        if (x < 0) {
            y = (b + c * x) / a;
        }
        else if (x == 0) {
            y = -(5+b*c);
        }
        else if(x > 0) {
            y = (d * d * x) / (c + 3);
        }

        cout << y << " ";

        x++;

    }

}


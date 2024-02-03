# Лабораторные работы на Ассемблере - "Линейные и циклические процессы" (2022)
Лабораторные работы на ассемблере для института. 

Код работает в эмуляторе emu8086 4.08
____
*Laboratory works in assembly for the institute*

*Code works in emu8086 4.08 emulator*


## 1️⃣ Циклический процесс / Cyclic process (lr_сyclic_process):

Разработать программу реализации циклического процесса.

Вычисляется выражение типа Y = Y1, X<0; Y2, X=0; Y3, X>0 для целых X из [-4;4]

- Y1 = (b + x) / a
- Y2 = (5 + b · c)
- Y3 = (d^2 · x) / (c + 3)
- A=4, B=-3, C=6, D=10, X=[-4;4]

Использовать inline assembly, сравнить рельзутаты с полученными при помощи кода на C++.

**💻 [Открыть код (inline asm)](https://github.com/countsheeptosleep/laboratory_works_asm/blob/main/lr_cyclic_process.cpp)**
**💻 [Открыть код (asm)](https://github.com/countsheeptosleep/laboratory_works_asm/blob/main/lr_cyclic_process.asm)**
____

Develop a program for the implementation of the cyclic process.

An expression like Y = Y1, X<0; Y2,X=0; Y3,X>0 for integer X from [-4;4]

- Y1 = (b + x) / a
- Y2 = (5 + b c)
- Y3 = (d^2 x) / (c + 3)
- A=4, B=-3, C=6, D=10, X=[-4;4]

Use an inline assembly, compare the results with those obtained using the C++ code.

**💻 [Open code (inline asm)](https://github.com/countsheeptosleep/laboratory_works_asm/blob/main/lr_cyclic_process.cpp)**
**💻 [Open code (asm)](https://github.com/countsheeptosleep/laboratory_works_asm/blob/main/lr_cyclic_process.asm)**

## 

## 2️⃣ Линейный процесс / Linear process (lr_linear_process):

Цель работы: освоить программирование линейных участков программ с использованием логических операторов языка Ассемблера.

Задание: Разработать ассемблер-программу реализации линейного процесса.

Расчетная формула: (not a) ∧ b ∨ c ∧ (not d)

Аргументы: a=66, b=51, c=-28, d=12

**💻 [Открыть код (asm)](https://github.com/countsheeptosleep/laboratory_works_asm/blob/main/lr_linear_process.asm)**
____

The purpose of the work: to master the programming of linear sections of programs using the logical operators of the Assembly language.

Task: Develop an assembler program for the implementation of a linear process.

Calculation formula: (not a) ∧ b ∨ c ∧ (not d)

Arguments: a=66, b=51, c=-28, d=12

**💻 [Open code (asm)](https://github.com/countsheeptosleep/laboratory_works_asm/blob/main/lr_linear_process.asm)**


## 3️⃣ Циклический процесс с переводом в десятичную систему / Сyclic process with conversion to decimal system (lr_cyclic_process_with_conversion_to_decimal)

1. Разработать программу в Турбо-ассемблере для реализации циклического процесса. 

2. Результаты должны быть преобразованы в десятичную систему счисления и представлены на экране.

**💻 [Открыть код (asm)](https://github.com/countsheeptosleep/laboratory_works_asm/blob/main/lr_cyclic_process_with_conversion_to_decimal.asm)**
____

1. Develop a program in Turbo assembler to implement a cyclic process.

2. The results must be converted to decimal and presented on the screen.

**💻 [Open code (asm)](https://github.com/countsheeptosleep/laboratory_works_asm/blob/main/lr_cyclic_process_with_conversion_to_decimal.asm)**

import numpy as np
import matplotlib.pyplot as mat

datos12 = np.genfromtxt('traficolanf1_2.csv', delimiter=",", usecols=12)
datos13 = np.genfromtxt('traficolanf1_3.csv', delimiter=",", usecols=12)
datos21 = np.genfromtxt('traficolanf2_1.csv', delimiter=",", usecols=12)
datos23 = np.genfromtxt('traficolanf2_3.csv', delimiter=",", usecols=12)
datos31 = np.genfromtxt('traficolanf3_1.csv', delimiter=",", usecols=12)
datos32 = np.genfromtxt('traficolanf3_2.csv', delimiter=",", usecols=12)

datos12 = datos12[8:17]
datos21 = datos21[8:15]
datos23 = datos23[9:18]
datos32 = datos32[9:21]

mat.figure(1)
mat.plot(datos12)
mat.xlabel('Flujos')
mat.ylabel('Bytes')
mat.grid(True)
mat.savefig('Grafico datos12.png')

mat.figure(2)
mat.plot(datos13)
mat.xlabel('Flujos')
mat.ylabel('Bytes')
mat.grid(True)
mat.savefig('Grafico datos13.png')

mat.figure(3)
mat.plot(datos21)
mat.xlabel('Flujos')
mat.ylabel('Bytes')
mat.grid(True)
mat.savefig('Grafico datos21.png')

mat.figure(4)
mat.plot(datos23)
mat.xlabel('Flujos')
mat.ylabel('Bytes')
mat.grid(True)
mat.savefig('Grafico datos23.png')

mat.figure(5)
mat.plot(datos31)
mat.xlabel('Flujos')
mat.ylabel('Bytes')
mat.grid(True)
mat.savefig('Grafico datos31.png')

mat.figure(6)
mat.plot(datos32)
mat.xlabel('Flujos')
mat.ylabel('Bytes')
mat.grid(True)
mat.savefig('Grafico datos32.png')


Matriz_media = [[0,0,0],
                [0,0,0],
                [0,0,0]]

Matriz_99 =    [[0,0,0],
                [0,0,0],
                [0,0,0]]


Media12 = (sum(datos12)/len(datos12))*2
Media13 = (sum(datos13)/len(datos13))*2
Media21 = (sum(datos21)/len(datos21))*2
Media23 = (sum(datos23)/len(datos23))*2
Media31 = (sum(datos31)/len(datos31))*2
Media32 = (sum(datos32)/len(datos32))*2

P99_12 = np.percentile(datos12,99)
P99_13 = np.percentile(datos13,99)
P99_21 = np.percentile(datos21,99)
P99_23 = np.percentile(datos23,99)
P99_31 = np.percentile(datos31,99)
P99_32 = np.percentile(datos32,99)

Matriz_media[0][1]=Media12
Matriz_media[0][2]=Media13
Matriz_media[1][0]=Media21
Matriz_media[1][2]=Media23
Matriz_media[2][0]=Media31
Matriz_media[2][1]=Media32

Matriz_99[0][1]=P99_12
Matriz_99[0][2]=P99_13
Matriz_99[1][0]=P99_21
Matriz_99[1][2]=P99_23
Matriz_99[2][0]=P99_31
Matriz_99[2][1]=P99_32

print(Matriz_media*3*8)

print(Matriz_99)
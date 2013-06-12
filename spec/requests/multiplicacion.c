do{
    for (j = 0; j < i; j++){
        for (k = 0; k < i; k++){
            suma = 0;
            for (l = 0; l < i; l++){
                suma += MatrixA[j][l]*MatrixB[l][k];
                MatrixR[j][k] = suma;
                        }
            }
c++;
}while (c<iteraciones);
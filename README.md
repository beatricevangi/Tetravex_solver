# Tetravex_solver

Elaborato per il corso di Intelligenza Artificiale, ad opera di Beatrice Vangi (mat. 7010930)

Lo scopo per progetto è modellare Tetravex, un puzzle di edge-matching, come un problema di soddisfacimento dei vincoli.
Si devono disporre su una griglia n x n delle tessere quadrate, aventi un numero su ciascuna faccia. La disposizione delle tessere deve esssere fatta in modo tale che facce adicenti abbiano sempre lo stesso numero.

In questo elaborato il modello è stato sviluppato con MiniZinc.

La repository comprende:
- un file .mzn, che contiene il modello
- 8 file .dzn, che contengono ciascuno un'instanza di dati, con valori di n ∈ [ 3, 6 ]

## Come replicare i risultati:

Per riprodurre i risultati da MiniZincIDE, nella prima riga del file Tetravex.mzn si deve aggiungere *include "_.dzn"*, sostituendo l'underscore con il nome del data file desiderato.

Il solver che è stato utilizzato è Gecode 6.3.0.

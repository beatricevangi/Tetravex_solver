# Tetravex_solver

Elaborato per il corso di Intelligenza Artificiale, ad opera di Beatrice Vangi (mat. 7010930)

Lo scopo per progetto è modellare Tetravex, un puzzle di edge-matching, come un problema di soddisfacimento dei vincoli.
Si devono disporre su una griglia n x n delle tessere quadrate, aventi un numero su ciascuna faccia. La disposizione delle tessere deve esssere fatta in modo tale che facce adicenti abbiano sempre lo stesso numero.

In questo elaborato il modello è stato sviluppato con MiniZinc.

La repository comprende:
- un file .mzn, che contiene il modello
- 4 file .dzn, che contengono ciascuno due instanze di dati. Ogni file è riferito a un diverso valore di n (∈ [ 3, 6 ])

## Come replicare i risultati:

Per riprodurre i risultati da MiniZincIDE, nella prima riga del file Tetravez.mzn si deve aggiungere *include "_.dzn"*, sostituendo l'underscore con il nome del data file desiderato.

Il solver che è stato utilizzato è Gecode 6.3.0.


## Come interpretare l'output:


Sito usato per generare un insieme di tessere tali che il puzzle sia risolvibile: https://smart-games.org/en/tetravex/game/

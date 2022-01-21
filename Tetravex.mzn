include "alldifferent.mzn";

int: N; %size

array[1..N*N,1..4] of 0..9: puzzle; %input sequence

array[1..N*N] of var int: res; %variables

constraint
  forall(i in 1..N) (forall (j in 1..N-1)
      (puzzle[res[(i-1)*N+j],3]=puzzle[res[(i-1)*N+j+1],4])); %numbers on adjacent faces match horizontally
      
constraint
  forall(i in 1..N-1)(forall(j in 1..N)
    (puzzle[res[(i-1)*N+j],2] = puzzle[res[(i)*N+j],1])); %numbers on adjacent faces match vertically

constraint alldifferent(res);

solve satisfy;

output ["The tiles must be placed in this order: \n", show(res), "\n"];
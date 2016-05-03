# Minimal test for matlab compiler on plasmonq cluster

To compile a coad, you must first load the MATLAB module:
```sh
module load MATLAB/R2013b
```

To compile program `tmp` from MATLAB script `tmp.m`, just type
```sh
mcc -m tmp.m
```

This automatically includes the called functions (`calledfunction.m`
in our case) into the compiled code. To then run the script on a
compute node, we submit it to the queue, with the command line
arguments we want, e.g.:
```sh
sbatch tmp.job 3 5
```

Note that command line arguments are passed as strings by default,
i.e., the MATLAB script might have to convert the input to a number
using either `str2num` or `str2double`.
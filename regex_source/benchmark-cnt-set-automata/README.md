This is the dataset used for the experimental evaluation in the OOPSLA'20 paper "**Regex Matching with Counting-Set Automata**".

Structure
=========
The structure of the dataset is as follows:

```
bench/
|-- bench-NAME1.txt
|-- bench-NAME2.txt
|-- ...
|-- bench-NAMEn.txt
|-- NAME1/
|   |-- input1.txt
|   |-- ...
|   +-- inputm.txt
|-- NAME2/
|   |-- ...
|   +-- ...      
|-- ...
+-- NAMEn/
    |-- ...
    +-- ...
```

where

* ```bench-NAMEx.txt``` is a CSV file with lines in the format
  
  ```
  regex1;file-path1
  regex2;file-path2
  ...
  regexk;file-pathk
  ```
* ```NAMEx/``` is a directory containing input files for the benchmark ```bench-NAMEx.txt```

The semantics of each benchmark is that for the ```i```-th line in ```bench-NAMEx.txt```, we count the number of lines of the file ```file-pathi``` that match the regex ```regexi```.


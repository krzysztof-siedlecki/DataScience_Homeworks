Na podstawie dołączonego zbioru healthcare-dataset-stroke-data.csv stwórz modele przewidujące, czy u danego pacjenta wystąpi zawał (zmienna "stroke"). W tym celu:

- Dokonaj wstepnej analizy zbioru - zaadresuj problemy brakujących danych i zmiennych kategorycznych (tj. przekształć je w sposób, który pozwoli na wykorzystanie w modelu), 
- Dokonaj podziału na zbiór treningowy i testowy w adekwatnej proporcji,
- Stwórz na tych danych modele z użyciem drzew decyzyjnych i lasów losowych, 
- Dokonaj ewaluacji skuteczności modeli z użyciem znanych Ci metryk i optymalizacji parametrów z użyciem metod omówionych na zajęciach. Wykorzystaj cross-validację i prosty (o wąskim zakresie parametrów) Grid/Random search,
- Przedstaw otrzymane ostateczne rezultaty z użyciem najlepszego zestawu parametrów dla obydwu modeli.

Dla chętnych: Zastanów się dlaczego w powyższym problemie metryka accuracy może być myląca. Przeanalizuj metryki TPR i FPR i w oparciu o nie wyrysuj krzywą ROC (https://developers.google.com/machine-learning/crash-course/classification/roc-and-auc) i oblicz AUC dla finalengo modelu (tj. pole pod krzywą ROC).
Zinterpretuj wynik i zestaw go z otrzymanym wynikiem accuracy.

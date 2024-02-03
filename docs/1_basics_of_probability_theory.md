# 1 Mathematische Beschreibung von Zufallssituationen

## 1.1 Wahrscheinlichkeitsräume

Wie definiert man die Ereignisse, denen man sinnvollerweise eine Wahrscheinlichkeit zuordnen kann? Wenn $ \Omega $ die Grundmenge ist, möchte man im Regelfall gewissen Teilmengen eine Wahrscheinlichkeit zuordenen. Als Beispiel sei ein Würfelwurf genannt. Nun kann einen beispielsweise die Wahrscheinlichkeit interessierenn, dass man eine Zahl $ \leq 3 $ würfelt. Dann ist $ \Omega = { 1,2,3,4,5,6 } $ und die gesuchte Teilmenge ist $ { 1,2,3 } $. Leider kann man i.A. nicht alle Teilmengen einer Menge, also die Potenzmenge als mögliche Ereignisse verwenden (FOOTNOTE). Dafür aber fast alle:  


````{prf:definition} Definition ($ \sigma $-Algebra)
:label: sigma_algebra

Für eine Menge $ \Omega $ heißt $ \mathcal F \subset \mathcal P (\Omega) $ eine **$ \sigma $-Algebra**, wenn die Eigenschaften

1. $ \Omega \in \mathcal F $
2. $ A \in \mathcal F \Rightarrow A^C := \Omega \setminus A \in \mathcal F$
3. $ A_1, A_2, \dots \in \mathcal F \Rightarrow \bigcup_{i\geq 1} A_i \in \mathcal F $

erfüllt sind.
````

Damit kommen wir auf kanonische Art und Weise zu dem Raum der für uns von Interesse sein wird.

````{prf:definition} Definition (Ereignisraum, messbarer Raum)
:label: ereignisraum

Sei $ \Omega \neq \emptyset $ und $ \mathcal F \subset \mathcal P (\Omega) $ eine $ \sigma $-Algebra. Dann heißt das Paar $ (\Omega, \mathcal F)$ **Ereignisraum** oder ein **messbarer Raum**.
````

Wie bereits angedeutet nennen wir nun einfach jedes $ A \in \mathcal F $ ein **Ereignis** oder eine **messbare Menge**. Als letzten Schritt wollen wir noch herausfinden können wie wahrscheinlich denn nun der Eintritt eines bestimmten Ereignisses ist. Dafür definieren wir das Wahrscheinlichkeitsmaß.

````{prf:definition} Definition (Wahrscheinlichkeitsverteilung, Wahrscheinlichkeitsmaß)
:label: wahrscheinlichkeitsvertielung

Sei $ (\Omega, \mathcal F)$ ein Ereignisraum. Eine Funktion $ P: \mathcal F \to [0,1] $ mit den Eigenschaften

1. Normierung: $ P(\Omega) = 1 $

2. $ \sigma $-Additivität: Für paarweise disjunkte Ereignisse $ A_1, A_2, \dots \in \mathcal F $ gilt 
$ P (\bigcup_{i \geq 1} a_i) = \sum_{i \geq 1} P(A_i) $

heißt **Wahrscheinlichkeitsmaß** oder **Wahrscheinlichkeitsverteilung** auf $ (\Omega, \mathcal F) $. Das Tripel $ (\Omega, \mathcal F, P) $ heißt dann ein **Wahrscheinlichkeitsraum**.
````

Nun haben wir alle Zutaten eines Wahrscheinlichkeitsraums kennengelernt. Eine der wichtigsten Implementierungen eines Wahrscheinlichkeitsraum ist $ (\mathbb R^n, \mathcal B^n, \lambda^n) $. Hierbei bezeichnet $ \mathcal B^n $ die Borel'sche $ \sigma $-Algebra. Das ist die von der Menge der kompakten Quader mit rationalen Eckpunkten erzeugte $ \sigma $-Algebra auf $ \mathbb R^n $. Wie genau $ \mathcal B^n $ ausschaut ist uninteressant. Es genügt sich zu merken, dass $ \mathcal B^n $ so gut wie alle praktisch vorkommende Teilmengen von $ \mathbb R^n $ enthält. Das Maß $ \lambda^n $ ist das Lebesgue-Maß.

````{prf:definition} Definition (Lebesgue-Maß)

Die Abbildung $ \lambda^n : \mathcal B^n \to [0, \infty] $, die jedem $ A \in \mathcal B^n $ sein $ n $-dimensionales Volumen $ \lambda^n (A) := \int 1_A (x) \ dx $ zuordnet heißt Lebesgue-Maß auf $ \mathbb R^n $. Hierbei bezeichnet $ 1_A $ die Indikatorfunktion von $ A $.

````
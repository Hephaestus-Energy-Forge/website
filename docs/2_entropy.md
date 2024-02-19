# Entropie

## Mikrokanonisches Ensemble

Wir betrachten ein geschlossenes System das durch **makroskopische** Größen wie z.B. Temperatur, Energie, Volumen oder Druck beschrieben wird. Im Gegensatz dazu beschreiben **mikroskopische Größen**, d.h. die Ortskoordinaten und Impulse aller Teilchen das System noch direkter. Für $3 N$ Ortskoordinaten und $3 N$ Impulskoordinaten für ein System der Größe von 1 mol wären das insgesamt $6 N = 6 \cdot 10^{23}$ Größen. Im mikrokanonischen Ensemble wird das System bei konstanter Energie betrachtet. Im wechselwirkungsfreien Fall hängt die Gesamtenergie nur von der Summe der kinetischen Energie aller Teilchen zusammen. Der Hamiltonian für ein Teilchen hat dementsprechend die Form

```{math}
:label: hamiltonian
H_i = \frac{\vec{p_i}^2}{2 m}
```

Wie man schon vermuten kann gibt es viele verschiedene Möglichkeiten, d.h. Mikrozustände, eine bestimmte Gesamtenergie U zu erreichen. Die kinetische Energie kann unterschiedlich über die Teilchen verteilt werden. Nun wird angenommen alle Mikrozustände seien gleich wahrscheinlich.

````{prf:definition} Multiplicity
:label: multiplicity

Die Menge aller möglichen Mikrozustände für einen Makrozustand, in unserem Fall die Energie, ist gegeben durch
```{math}
:label: multiplicity_eq
\Omega(E) = \{\text{Zustände in }(E - \delta E, E]\}
```

Die Anzahl aller möglichen Mikrozustände für einen Makrozustand ist
```{math}
:label: multiplicity_eq2
| \Omega(E) | = \text{Anzahl der Zustände in }(E - \delta E, E]
```


die **Multiplicity**.\
Die Wahrscheinlichkeit, dass sich das System in einem Mikrozustand befindet ist dann gegeben durch
```{math}
:label: multiplicity_eq3
p(E) = \frac{1}{| \Omega(E) |}
```
````

Um die Anzahl der Mikrozustände zu berechnen müssten wir über alle möglichen Impulse und Orte summieren. Da Impulse und Ortskoordinaten kontinuierliche Werte annehmen, wird stattdessen mit 
```{math}
:label: multiplicity_eq4
dx_1^3 dp_1^3 ... dx_N^3 dp_N^3 
```
über das Phasenraumvolumen integriert. Da die Multiplicity $\Omega$ eine dimensionslose Größe ist normiert man mithilfe des plankschen Wirkungsquantum $h$. Für die Multiplicity erhalten wir dann
```{math}
:label: multiplicity_eq5
| \Omega | = \frac{1}{N!} \frac{1}{h^{3N}} \int_{Vol}{ \prod_{i=1}^{N}{dx_i^3 dp_i^3} }
```

Der Vorfaktor $\frac{1}{N!}$ ist eine Folge der Ununterscheidbarkeit der Teilchen. Die Zustände $(q_1, p_1, q_2, p_2, ..., q_N , p_N )$ und $(q_2, p_2, q_1, p_1, ..., q_N , p_N )$ sind nicht unterscheidbar.
 
## Kanonisches Ensemble

Im kanonischen Ensemble wird statt der Energie die Temperatur vorgegeben. Das betrachtete System befindet sich im thermischen Gleichgewicht mit einem Reservoir. Die Gesamtenergie ist konstant, allerdings kann diese unterschiedlich zwischen Reservoir und betrachtetem System aufgeteilt werden.
# Appendix

## Gaußsche Integral

````{prf:theorem} Gaußsche Integral
```{math}
:label: gaussintegraleq
\int_{-\infty}^{\infty}{e^{-a x^2}} dx = \sqrt{\frac{\pi}{a}}
```
````

````{prf:proof}
:label: gaussintegralproof

Zu lösen ist das Integral der Gaußschen Verteilungsfunktion.

```{math}
\int_{-\infty}^{\infty}{e^{-a x^2}} dx
```

Erst quadrieren wir die Gleichung

```{math}
\Bigl(\int_{-\infty}^{\infty}{e^{-a x^2}} dx\Bigr)^2 = \int_{-\infty}^{\infty}{e^{-a x^2}} dx \int_{-\infty}^{\infty}{e^{-a y^2}} dy
```

Das Integral können wir zusammenfassen und wir erhalten
```{math}
\int_{-\infty}^{\infty} \int_{-\infty}^{\infty}{e^{-a (x^2 + y^2)}} dx dy
```

Dann können wir in Zylinderkoordinaten übergehen mit $r = \sqrt{x^2 + y^2}$ und $dx dy = r dr d\theta$.
```{math}
\int_{0}^{2 \pi}{ d\phi}\int_{0}^{\infty}{e^{-a r^2}} r dr
```

Nach Integration erhält man
```{math}
\int_{0}^{2 \pi}{ d\theta}\int_{-\infty}^{\infty}{e^{-a r^2}} r dr = 2 \pi \biggl[-\frac{1}{2 a}e^{-a r^2}\biggr]_{0}^{\infty} = \frac{\pi}{a}
```

Das Gauß-Integral kann man folglich exakt auswerten als

```{math}
:label: gaussintegraleq
\int_{-\infty}^{\infty}{e^{-a x^2}} dx = \sqrt{\frac{\pi}{a}}
```
````
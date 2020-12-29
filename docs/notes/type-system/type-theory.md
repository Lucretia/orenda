# Type Theory

Luca Cardelli's paper on Type Systems<sup>[1](#1)</sup> provides a good introduction to type theory and it's notation. Whilst we normally define a language's syntax with EBNF or similar methods, vary rarely does a language include formalisms for the type system. I would like to be able to provide documentation as well.

We can typeset the notation with $\LaTeX$ within the markdown files as follows:

```latex
$$\Gamma \vdash \mathfrak J$$
$$\varnothing, x : Nat \vdash x+1 : Nat$$
$$\Gamma \vdash \diamond$$
```

In Markdown Preview (VSCode), renders as:

$$\Gamma \vdash \mathfrak J$$
$$\varnothing, x : Nat \vdash x+1 : Nat$$
$$\Gamma \vdash \diamond$$

On Github:

```math
\Gamma \vdash \mathfrak J
\varnothing, x : Nat \vdash x+1 : Nat
\Gamma \vdash \diamond
```

## References
<a id="1">[1]</a>
Luca Cardelli, 2004.
[Type Systems](http://lucacardelli.name/Papers/TypeSystems.pdf).
CRC Handbook of Computer Science and Engineering, 2nd Edition, Ch. 97.


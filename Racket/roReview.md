# General review of the course

## Rodrigo Núñez Magallanes, A01028310

## Exam topics

- Recursive definitions
- Inductive tests
- Regular languages
  - DFA
  - Regular expressions
- Grammars
  - Production rules / Derivations
  - BNF / EBNF
- Racket
- Elixir

## Recursive definitions

1. Recursive definition of the strings in $\Sigma = \{a, b\}$ that contain twice as many $b$'s as $a$'s

I. Base case: $\lambda \in \Sigma$

II. Recursive definition: $w \in L \land w = xyzu \implies xaybzbu \in L \lor xbybzbu \in L \lor xbyazbu \in L$

III. Closure: $w \in L$ only if it can be obtained by applying a finite number of steps of the recursive step.

2. Recursive definition of palindromes on $\Sigma$

I. Base case: $\lambda \in \Sigma \lor a \in \Sigma \land w \in P$

II. Recursive definition: $w \in P \implies awa \in P$

III. Closure: $w \in P$ only if it can be obtained by applying a finite number of steps of the recursive step.

3. Recursive definition of multiplication, using addition and the succesor operator

I. Base case: $M(m, n) = m$ if $n = 1$

II. Recursive definition: $M(m, n) = m + M(m, n - 1)$

III. Closure: $M(m, n)$ only if it can be obtained by applying a finite number of steps of the recursive step.

## Inductive Hypothesis

1. Demonstrate that $P = W$ where $P$ is the set of palindromes, and $W = \{w \in \Sigma^* | w = w^R\}$

I. Base case: $\lambda \in \Sigma \land \lambda = \lambda^R$

II: Inductive hypothesis: $w \in \Sigma \land w = w^R$

III. Inductive step: $w \in \Sigma \land w = w^R \implies awa \in \Sigma \land awa = (awa)^R$

$(awa)^R = a^Rw^Ra^R = awa$

IV. Closure: $W = P$ only if it can be obtained by applying a finite number of steps of the inductive step. The hypothesis holds for all strings of length n.

2. Prove that $1 + 2 + 2^2 + ... + 2^n = 2^{n+1} - 1$ for all $n > 0$

I. Base case: $n = 1$

$1 + 2 = 4 - 1$

$3 = 3$

II. Inductive hypothesis: $1 + 2 + 2^2 + ... + 2^n = 2^{n+1} - 1$

III. Inductive step: $1 + 2 + 2^2 + ... + 2^n + 2^{n+1} = 2^{n+2} - 1$

By substituting original right hand side into the left hand side, showing that the equality holds for $n + 1$.

$2^{n+1} - 1 + 2^{n+1} = 2^{n+2} - 1$

$2^{n+2} - 1 = 2^{n+2} - 1$

IV. Closure: $1 + 2 + 2^2 + ... + 2^n = 2^{n+1} - 1$ only if it can be obtained by applying a finite number of steps of the inductive step. The hypothesis holds for all $n > 0$.

## Languages

1. Define a language in $\Sigma = \{a, b\}$ that begins and ends with $a$ and always alternates between $a$ and $b$

I. Base case: $a$

II. Recursive definition: $w \in L \implies wba \in L$

III. Closure: $w \in L$ only if it can be obtained by applying a finite number of steps of the recursive step.

2. Define a language in $\Sigma = \{a, b\}$ that begins with $a$ or ends with $b$ and alternates between $a$ and $b$

I. Base case: $\lambda \in L$

II. Recursive definition: $w \in L \implies abw \in L$

III. Closure: $w \in L$ only if it can be obtained by applying a finite number of steps of the recursive step.

3. Give a Regular Set definition in $\Sigma = \{a, b, c\}$ of the language with strings that contain two or more $b$'s

Brackets are used to define a set of characters to be matched one time only, and the Kleene star is used to repeat the expression 0 or more times.

`$[abc]*b[abc]*b[abc]*$`
`$ $`

4. Give a Regular Set definition of the language with strings that contain an even number of $b$'s

Parentheses are used capture everything enclosed, and the Kleene star is used to repeat the expression 0 or more times. The "^" symbol is used to negate the b.
`([^b]*b[^b]*b[^b]*)*`

5. Create a DFA for a language that consists of strings in $\Sigma = \{a, b, c\}$ where every $c$ is followed by an $a$

![DFA](/Repaso/dfa.jpeg)

## Programming

1. Write a function in a funcional language that receives a list of integers, and returns a list, with each of its elements multiplied by its position.
   Positions begin at 1.

```racket
    (define (multiply-index lst)
        (let loop
          ([lst lst]
          [index 1]
          [res '()])
          (if (empty? lst)
            (reverse res)
            (loop
                (cdr lst)
                (+ index 1)
                (cons (* index (car lst)) res)))))
```

```elixir
  def multiply_index(list), do: do_mult_index(list, 1, [])

  defp do_mult_index([], _index, res), do: Enum.reverse(res)
  defp do_mult_index([head | tail], index, res), do: do_mult_index(tail, index + 1, [head * index | res])
```

2. Write a function in a functional language that receives a list of integers, and returns a new list with only the elements in the input that end in 4

```racket
   (define (ends-in-four lst)
       (let loop
         ([lst lst]
         [res '()])
         (if (empty? lst)
           (reverse res)
           (loop
             (cdr lst)
             (if (= 4 (remainder (car lst) 10))
                (cons (car lst) res)
                res)))))
```

```elixir
  def ends_with_4(list) , do: do_end_4(list, [])

  defp do_end_4([], res), do: Enum.reverse(res)
  defp do_end_4([head | tail], res) when rem(head, 10) == 4, do: do_end_4(tail, [head | res])
  defp do_end_4([_ | tail], res), do: do_end_4(tail, res)

```

3. Write a function to sort a list using selection sort

No thanks THO!

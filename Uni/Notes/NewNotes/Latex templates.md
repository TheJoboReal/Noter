---
tags:
  - lecture-slide
  - uni
course: Linux Querks
lecture: null
date: 2025-11-03
---

#### Definition
A lot of copy paste latex templates

##### Figure
```latex
  \begin{figure}[H]
    \centering
    \includegraphics[width=0.65\textwidth]{figs/example.png}
    \caption{Neural Network Layers}
    \label{fig:layers}
    \end{figure}

```

##### Subfigure 2x2
subfigure with 4 images:

```latex

\begin{figure}[H]
    \centering
    % First row
    \begin{subfigure}[b]{0.45\textwidth}
        \centering
        \includegraphics[width=\textwidth]{example-image-a}
        \caption{First image}
        \label{fig:sub1}
    \end{subfigure}
    \hfill
    \begin{subfigure}[b]{0.45\textwidth}
        \centering
        \includegraphics[width=\textwidth]{example-image-b}
        \caption{Second image}
        \label{fig:sub2}
    \end{subfigure}
    
    % Second row
    \vskip\baselineskip
    \begin{subfigure}[b]{0.45\textwidth}
        \centering
        \includegraphics[width=\textwidth]{example-image-c}
        \caption{Third image}
        \label{fig:sub3}
    \end{subfigure}
    \hfill
    \begin{subfigure}[b]{0.45\textwidth}
        \centering
        \includegraphics[width=\textwidth]{example-image}
        \caption{Fourth image}
        \label{fig:sub4}
    \end{subfigure}

    \caption{An overall caption describing all four subfigures.}
    \label{fig:four_subfigs}
\end{figure}

```


            set terminal png size 600,400 truecolor
            set output "graph_45-quals.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Average Quality"
            set xlabel "Cycle"
            set yrange [0:50]
            set title "stats_45.stats" noenhanced
            plot '-' using 1:2 with lines title 'Forward reads' , '-' using 1:2 with lines title 'Reverse reads'
        1	32.83
2	32.41
3	32.03
4	32.04
5	31.94
6	31.85
7	31.76
8	31.52
9	31.39
10	31.26
11	31.02
12	30.83
13	30.86
14	30.66
15	30.57
16	30.44
17	30.27
18	30.00
19	29.76
20	29.56
21	29.28
22	29.26
23	28.22
24	27.81
25	28.09
26	27.73
27	27.66
28	27.11
29	26.68
30	26.41
31	26.25
32	25.87
33	25.64
34	25.13
35	24.16
36	23.86
end
1	31.50
2	31.52
3	31.71
4	31.53
5	31.52
6	31.21
7	31.28
8	31.06
9	30.97
10	30.74
11	30.77
12	30.56
13	30.53
14	30.19
15	29.99
16	30.14
17	29.90
18	29.73
19	29.49
20	29.52
21	29.17
22	29.04
23	28.89
24	28.61
25	28.21
26	28.15
27	27.76
28	27.40
29	26.98
30	26.65
31	26.58
32	25.92
33	25.93
34	25.45
35	24.72
36	23.81
end

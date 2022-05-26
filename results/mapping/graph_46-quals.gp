
            set terminal png size 600,400 truecolor
            set output "graph_46-quals.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Average Quality"
            set xlabel "Cycle"
            set yrange [0:50]
            set title "stats_46.stats" noenhanced
            plot '-' using 1:2 with lines title 'Forward reads' , '-' using 1:2 with lines title 'Reverse reads'
        1	33.24
2	33.13
3	32.91
4	32.86
5	32.60
6	32.65
7	32.51
8	32.40
9	32.29
10	32.16
11	31.92
12	31.83
13	31.64
14	31.57
15	31.56
16	31.42
17	31.48
18	31.11
19	30.93
20	30.89
21	30.71
22	30.38
23	30.28
24	30.04
25	29.80
26	29.48
27	29.22
28	28.81
29	28.50
30	28.30
31	27.77
32	27.63
33	27.42
34	26.77
35	25.76
36	24.97
end
1	32.93
2	32.68
3	32.55
4	32.52
5	32.32
6	32.23
7	32.21
8	32.00
9	32.04
10	31.89
11	31.78
12	31.72
13	31.61
14	31.47
15	31.40
16	31.18
17	31.06
18	30.93
19	30.80
20	30.55
21	30.52
22	30.22
23	30.06
24	29.99
25	29.88
26	29.54
27	29.27
28	29.06
29	28.93
30	28.57
31	28.39
32	28.08
33	27.84
34	27.31
35	26.82
36	26.27
end

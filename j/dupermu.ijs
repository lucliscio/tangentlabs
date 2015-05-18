NB. unique permutations when the lists contain duplicate items
NB. you can not use 'A.' directly when you have duplicate items
NB. because you will get duplicate permutations.

tree =: ({.,<@$:@;@}.)"1@(({.;}.)S:0,.1[\.])^:(0<#)@(</.~)
paths =: ({. ,"0 1 L:0 ($:L:_1)@}.)`;@.(L.=1:)"1
extract =: ,S:0
dupermu =: extract@:paths@tree



cheq   tree 0 0 1 1
┌─┬────────────┐
│0│┌─┬────────┐│
│ ││0│┌─┬────┐││
│ ││ ││1│┌─┬┐│││
│ ││ ││ ││1│││││
│ ││ ││ │└─┴┘│││
│ ││ │└─┴────┘││
│ │├─┼────────┤│
│ ││1│┌─┬────┐││
│ ││ ││1│┌─┬┐│││
│ ││ ││ ││0│││││
│ ││ ││ │└─┴┘│││
│ ││ │├─┼────┤││
│ ││ ││0│┌─┬┐│││
│ ││ ││ ││1│││││
│ ││ ││ │└─┴┘│││
│ ││ │└─┴────┘││
│ │└─┴────────┘│
├─┼────────────┤
│1│┌─┬────────┐│
│ ││1│┌─┬────┐││
│ ││ ││0│┌─┬┐│││
│ ││ ││ ││0│││││
│ ││ ││ │└─┴┘│││
│ ││ │└─┴────┘││
│ │├─┼────────┤│
│ ││0│┌─┬────┐││
│ ││ ││0│┌─┬┐│││
│ ││ ││ ││1│││││
│ ││ ││ │└─┴┘│││
│ ││ │├─┼────┤││
│ ││ ││1│┌─┬┐│││
│ ││ ││ ││0│││││
│ ││ ││ │└─┴┘│││
│ ││ │└─┴────┘││
│ │└─┴────────┘│
└─┴────────────┘
)

cheq    paths tree 0 0 1 1
┌───────────┐
│┌─────────┐│
││┌───────┐││
│││0 0 1 1│││
││└───────┘││
│├─────────┤│
││┌───────┐││
│││0 1 1 0│││
││├───────┤││
│││0 1 0 1│││
││└───────┘││
│└─────────┘│
├───────────┤
│┌─────────┐│
││┌───────┐││
│││1 1 0 0│││
││└───────┘││
│├─────────┤│
││┌───────┐││
│││1 0 0 1│││
││├───────┤││
│││1 0 1 0│││
││└───────┘││
│└─────────┘│
└───────────┘
)

cheq extract paths tree 0 0 1 1
0 0 1 1
0 1 1 0
0 1 0 1
1 1 0 0
1 0 0 1
1 0 1 0
)


domains
  ??? = ?; ?; ?; ?; ?
  ???? = ?????; ??????

  
  ??????? = ????????(???, ????)
  
  ?????????? =  integer  %?????(integer); ??????(integer)
  %               ?????                  ??????
  ????? = ???????(??????????, ??????????)
  
  ???????? = ???????*
  ????? = ???*
PREDICATES
  nondeterm ?????????_????(????)
  nondeterm ?????????_???(???)
  
  nondeterm ??????_?(???????, ????????)
  nondeterm ??????_?(???, ?????)
  nondeterm ?????_??????(?????, integer)
  
  nondeterm ?????????_????????(????????)
  
  nondeterm ??????(???, ?????)
  
  nondeterm ???_?????(???, ???????, ????????)
  nondeterm ???????_?????_???????_?????(???, ????, ????????, integer)
  
  nondeterm ????????_????????????(???, ????????)
  nondeterm ????????_???????????(???, ????????)
  nondeterm ????????_????????????(????????)
  
  nondeterm ?????_???????(????????)
CLAUSES

  ?????_??????([], 0). % ??? ?????????? ????????
  ?????_??????([_|?????????], ?????):-
    ?????_??????(?????????, ??????????????),
    ????? = ?????????????? + 1.
    
  ??????_?(???????, [???????|_]).
  ??????_?(???????, [_|?????????????????]):-
    ??????_?(???????, ?????????????????).

 % ?????????_????(?????).
  %?????????_????(??????).
  ?????????_????(????):-
    ???? = ?????;
    ???? = ??????.
  
 % ?????????_???(?).
 % ?????????_???(?).
 % ?????????_???(?).
 % ?????????_???(?).
 % ?????????_???(?).
    ?????????_???(???):-
        ??? = ?;
        ??? = ?;
        ??? = ?;
        ??? = ?;
        ??? = ?.
  
  ?????????_????????(????????):-
    
    ?????????_????(????_?), 
    ?????????_????(????_?), 
    ?????????_????(????_?),
    ?????????_????(????_?),
    ?????????_????(????_?),
    ???????? = [
        ????????(?, ????_?), 
        ????????(?, ????_?), 
        ????????(?, ????_?), 
        ????????(?, ????_?), 
        ????????(?, ????_?)
      ].
    
  ???_?????(???, ????????(?????????, ????), ????????):-
    ??????_?(????????(?????????, ????), ????????),
    NOT(????????? = ???). % ?? ????? ??? ????
    
  ???????_?????_???????_?????(???, ????, ????????, ???????):-
    findall(?????????, ???_?????(???, ????????(?????????, ????), ????????), ?????),
    ?????_??????(?????, ???????).
  
  ??????(?, ???????(3, 1)).
  ??????(?, ???????(0, 4)).
  ??????(?, ???????(1, 3)).
  ??????(?, ???????(4, 0)).
   
   ????????_????????????(???, ????????):-
     ??????(???, ???????(???????????????, ????????????????)),
     ???????_?????_???????_?????(???, ?????, ????????, ???????????????),
     ???????_?????_???????_?????(???, ??????, ????????, ????????????????).
     
   % ???????????? ????? - ??????, ? ?????? - ????
   ????????_???????????(???, ????????):-
     ??????_?(????????(???, ?????), ????????),
     ????????_????????????(???, ????????);
     ??????_?(????????(???, ??????), ????????),
     NOT(????????_????????????(???, ????????)).
     
   ????????_????????????(????????):-
     ????????_???????????(?, ????????),
     ????????_???????????(?, ????????),
     ????????_???????????(?, ????????),
     ????????_???????????(?, ????????).
     
   ?????_???????(????????):-
    ?????????_????????(????????),
    ????????_????????????(????????).
goal
  ?????_???????(????????).
    




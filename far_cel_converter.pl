avg_tmp(ldn, 100).
avf_tmp(dhm, 70).

avg_tmp_cels(Location, C_Temp) :-
  avg_tmp(Location, F_Temp),
  C_Temp is (F_Temp - 32) * 5//9.

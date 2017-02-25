%%%-------------------------------------------------------------------
%%% @author tthlex
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. Feb 2017 8:40 AM
%%%-------------------------------------------------------------------
-module(second).
-author("tthlex").

%% API
-export([getHype/2, perim/2, area/2]).



%% C2 = A2 + b2

getHype(A,B) ->
  math:sqrt(first:double(A) + first:double(B)).

perim(A,B) ->
  A + B + getHype(A,B).

area(A,B)->
  (A*B)/2.


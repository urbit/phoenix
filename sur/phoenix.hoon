|%
+$  records
  $:  eggs=(map dude:gall egg-any)
      tmp=(map term dat=@)
  ==
+$  command
  $%  [%get-dude =dude:gall]
      [%del-dude =dude:gall]
    ::
      [%put-all ~]
      [%put-desk =desk]
      [%put-dude =dude:gall]
    ::
      [%import-dat dat=@]
  ==
::
+$  egg-any
  $%  [%13 egg=egg-13]
  ==
::  ripped from %gall $egg plus dependencies
::
+$  egg-13
  $%  [%nuke sky=(map spur @ud)]
      $:  %live
          control-duct=duct
          run-nonce=@t
          sub-nonce=@
          =stats
          =bitt:gall
          =boat:gall
          =boar:gall
          code=~
          old-state=[%| vase]
          =beak
          marks=(map duct mark)
          sky=(map spur path-state)
          ken=(jug spar:ames wire)
  ==  ==
::
+$  stats  [change=@ud eny=@uvJ time=@da]
+$  path-state
  $:  bob=(unit @ud)
      fan=((mop @ud (pair @da (each page @uvI))) lte)
  ==
--

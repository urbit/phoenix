|%
+$  records
  $:  eggz=(map dude:gall eggo)
      log=logs
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
+$  logs  ((mop @da log-entry) gth)
+$  log-entry  [date=@da dap=term recipients=(set ship)]
::
+$  eggo
  $%  [%13 dap=term egg=egg-13]
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
+$  stats  [change=@ud eny=@uvJ time=@da]
+$  path-state
  $:  bob=(unit @ud)
      fan=((mop @ud (pair @da (each page @uvI))) lte)
  ==
--

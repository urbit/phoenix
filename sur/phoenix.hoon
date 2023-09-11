|%
+$  records
  $:  eggs=(map dude:gall egg-any)
      admins=(set ship)
  ==
+$  command
  $%  [%get-dude =dude:gall]
      [%del-dude =dude:gall]
      [%send-egg =ship =dude:gall]
    ::
      [%put-all ~]
      [%put-desk =desk]
      [%put-dude =dude:gall]
    ::
      [%add-admin =ship]
      [%del-admin =ship]
    ::
      [%import-dat dat=@]
      [%import-clay =dude:gall =path]
  ==
::
+$  egg-any
  $%  [%13 egg=egg-13:thirteen:versions]
      [%14 egg=egg-13:thirteen:versions]
  ==
::
++  versions
  |%
  ++  thirteen
    |%
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
  --
--

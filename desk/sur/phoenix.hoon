/+  *mip
|%
+$  records-0
  $:  eggs=(mip ship dude:gall @)
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
      [%import-clay =ship =dude:gall =path]
    ::
      [%restore =dude:gall]
  ==
--

/-  *phoenix
/+  phoenix, rudder, phoenix-style
::
^-  (page:rudder records-0 command)
|_  [=bowl:gall order:rudder records-0]
+*  phx   ~(. phoenix bowl)
++  final  (alert:rudder url.request build)
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder command)
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?~  what=(~(get by args) 'what')  ~
  ?+    u.what  ~
      %snap
    ?~  dude=(slaw %tas (~(gut by args) 'dude' ''))  ~
    [%snap u.dude]
  ::
      %put
    ?~  dude=(slaw %tas (~(gut by args) 'dude' ''))  ~
    [%put u.dude]
  ==
::
++  build
  |=  $:  arg=(list [k=@t v=@t])
          msg=(unit [o=? =@t])
      ==
  ^-  reply:rudder
  |^  [%page page]
  ::
  ++  page
    ^-  manx
    ;html
      ;head
        ;title:"%phoenix"
        ;meta(charset "utf-8");
        ;meta(name "viewport", content "width=device-width, initial-scale=1");
        ;style:"{(trip style:phoenix-style)}"
      ==
      ;body
        ::  links
        ;a/"/apps/phoenix"
          ;h2:"%phoenix"
        ==
        ;a/"/apps/phoenix/backup"
          ;h2:"backup"
        ==
        ;a/"/apps/phoenix/offers"
          ;h2:"offers"
        ==
        ;a/"/apps/phoenix/guests"
          ;h2:"guests"
        ==
        ;a/"/apps/phoenix/deposits"
          ;h2:"deposits"
        ==

        ;h4:"agent backup & restore"

        ;+  ?~  msg  ;p:""
            ?:  o.u.msg
              ;p.green:"{(trip t.u.msg)}"
            ;p.red:"{(trip t.u.msg)}"
        ;table#phoenix
          ::  table header
          ;tr(style "font-weight: bold")
            ;td(align "center"):"snap"
            ;td(align "center"):"put"
            ;td(align "center"):"desk"
            ;td(align "center"):"dude"
          ==
          ;*  work
        ==
      ==  ::  body
    ==    ::  html
  ::
  ++  work
    ^-  (list manx)
    %+  turn  (sort ~(tap in dusks) aor)
    |=  [=desk =dude:gall]
    ;tr
      ::  snap
      ;td
        ;form(method "post")
          ;button(type "submit", name "what", value "snap"):"snap"
          ;input(type "hidden", name "dude", value (scow %tas dude));
        ==
      ==
      ::  put
      ;td
        ;form(method "post")
          ;button(type "submit", name "what", value "put"):"put"
          ;input(type "hidden", name "dude", value (scow %tas dude));
        ==
      ==
      ::  desk
      ;td(align "right"):"{<desk>}"
      ::  dude
      ;td(align "right"):"{<dude>}"
    ==
  ::
  ++  desks  .^((set desk) %cd (en-beam [our.bowl %$ da+now.bowl] /))
  ++  get-dudes
    |=  =desk
    ^-  (list =dude:gall)
    %-  turn  :_  head
    %~  tap  in
    .^((set [=dude:gall live=?]) %ge (en-beam [our.bowl desk da+now.bowl] /$))
  ::
  ++  dusks
    =|  res=(set [desk dude:gall])
    =/  desks=(list desk)  ~(tap in desks)
    |-  ^+  res
    ?~  desks
      res
    =/  dudes=(list dude:gall)  (get-dudes i.desks)
    |-
    ?~  dudes
      ^$(desks t.desks)
    $(dudes t.dudes, res (~(put in res) i.desks i.dudes))
  --
--

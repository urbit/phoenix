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
      %tomb
    ?~  cus=(~(get by args) 'case')  ~
    ?~  cas=(de-case u.cus)          ~
    ?~  pat=(~(get by args) 'spur')  ~
    ?~  pax=(rush u.pat stap)        ~
    ?~  where=(slaw %p (~(gut by args) 'where' ''))  ~
    [%tomb u.cas u.pax u.where]
  ::
      %put
    ?~  cus=(~(get by args) 'case')  ~
    ?~  cas=(de-case u.cus)          ~
    ?~  pat=(~(get by args) 'spur')  ~
    ?~  pax=(rush u.pat stap)        ~
    [%put u.cas u.pax]
  ::
      %restore
    ?~  cus=(~(get by args) 'case')  ~
    ?~  cas=(de-case u.cus)          ~
    ?~  pat=(~(get by args) 'spur')  ~
    ?~  pax=(rush u.pat stap)        ~
    ?~  dude=(rush (~(gut by args) 'dude' '') ;~(pfix cen sym))  ~
    ?.  ((sane %tas) u.dude)  ~
    [%restore u.cas u.pax u.dude]
  ::
      %send
    ?~  cus=(~(get by args) 'case')  ~
    ?~  cas=(de-case u.cus)          ~
    ?~  pat=(~(get by args) 'spur')  ~
    ?~  pax=(rush u.pat stap)        ~
    ?~  who=(slaw %p (~(gut by args) 'who' ''))  ~
    [%send u.cas u.pax u.who]
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
            ;td(align "center"):"🔒"
            ;td(align "center"):"~"
            ;td(align "center"):"put"
            ;td(align "center"):"restore"
            ;td(align "center"):"path"
            ;td(align "center"):"case"
          ==
          ;*  work
        ==
      ==  ::  body
    ==    ::  html
  ::
  ++  work
    ^-  (list manx)
    =/  deps=(map ship offer)
      =|  res=(map ship offer)
      =/  dep=(list ship)  ~(tap in (~(del in depositors) our.bowl))
      |-  ^+  res
      ?~  dep
        res
      $(dep t.dep, res (~(put by res) i.dep (make-offer:phx i.dep)))
    ::
    =/  dat=(set [ship case de-pax=(unit path) raw=path])
      =|  res=(set [ship case de-pax=(unit path) raw=path])
      =/  wut=(list (pair ship offer))  ~(tap by deps)
      |-  ^+  res
      ?~  wut
        res
      =/  bak=(list [=case =spur])  ~(tap in q.i.wut)
      |-
      ?~  bak
        ^$(wut t.wut)
      =.  res
        (~(put in res) [p.i.wut case.i.bak (ppath spur.i.bak) spur.i.bak])
      $(bak t.bak)
    %+  turn  (sort ~(tap in dat) aor)
    |=  [who=ship =case pax=(unit path) raw=path]
    ;tr
      ::  lock
      ;td(align "center")
        ;+  ?^  pax
              ;p:"🔓"
            ;p:"~"
      ==
      ::  tomb
      ;td
        ;form(method "post")
          ;button(type "submit", name "what", value "tomb"):"tomb"
          ;input(type "hidden", name "case", value (scow case));
          ;input(type "hidden", name "spur", value (trip (spat raw)));
          ;input(type "hidden", name "where", value (scow %p our.bowl));
        ==
      ==
      ::  put
      ;td
        ;form(method "post")
          ;button(type "submit", name "what", value "put"):"put"
          ;input(type "hidden", name "case", value (scow case));
          ;input(type "hidden", name "spur", value (trip (spat raw)));
        ==
      ==
      ::  restore
      ;td(align "center")
        ;+  ?~  pax
              ;p:"~"
            ;form(method "post")
              ;input(type "hidden", name "what", value "restore");
              ;input(type "hidden", name "case", value (scow case));
              ;input(type "hidden", name "spur", value (trip (spat raw)));
              ;input(type "text", name "dude", placeholder "%dude");
            ==
      ==
      ::  path
      ;td(align "left"):"{<?^(pax u.pax raw)>}"
      ::  case
      ;td(align "left"):"{<case>}"
    ==
  ::
  ++  ppath
    |=  pax=path
    ^-  (unit path)
    ?~  dep=(decrypt-path:phx (tail pax) keys)
      ~
    `[(head pax) u.dep]
  ::
  ++  depositors
    ^-  (set ship)
    .^((set ship) %gx (en-beam [our.bowl %phoenix da+now.bowl] /depositors/noun))
  --
--

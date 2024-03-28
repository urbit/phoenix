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
    ?~  bat=(slaw %t (~(gut by args) 'beam' ''))  ~
    ?~  bem=(de-beam (stab u.bat))  ~
    ?~  where=(slaw %p (~(gut by args) 'where' ''))  ~
    [%tomb u.bem u.where]
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
        ;a/"/phoenix"
          ;h2:"%phoenix"
        ==

        ;h4:"agent backup & restore"

        ;+  ?~  msg  ;p:""
            ?:  o.u.msg
              ;p.green:"{(trip t.u.msg)}"
            ;p.red:"{(trip t.u.msg)}"
        ;table#phoenix
          ;form(method "post")
            ::  table header
            ;tr(style "font-weight: bold")
              ;td(align "center"):"~"
              ;td(align "center"):"path"
            ==
          ==    ::  form
          ;*  work
        ==
      ==  ::  body
    ==    ::  html
  ::
  ++  work
    ^-  (list manx)
    %+  turn  ~(tap in (make-offer:phx our.bowl))
    |=  [pax=path =case]
    ;tr
       ::  tomb
       ;td
         ;form(method "post")
           ;button(type "submit", name "what", value "tomb"):"-"
           ;input(type "hidden", name "who", value "{(scow %p our.bowl)}");
         ==
       ==
       ::  path
       ;td(align "left"):"{<pax>}"
    ==
  --
--

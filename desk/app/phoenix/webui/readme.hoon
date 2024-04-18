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
  ~
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
        ;a/"/apps/phoenix/readme"
          ;h2:"README"
        ==

        ;h4:"agent backup & restore"

        backup your keys!
        ;br;
        print keys in %dojo:
        ;br;
        +phoenix!phoenix-show-keys
        ;br;
        save keys to <pier>/.urb/put/phoenix/<ship>/keys/:
        ;br;
        -phoenix!phoenix-put-keys
        ;br;

        snapshots can be saved to disk in your put directory using the `put` button:
        ;br;
        <pier>/.urb/put/phoenix/<ship>/
        ;br;

        snapshots can be sent over the network to a ship that has whitelisted you by entering that ship in the send field.
        ;br;
        should you breach, ships holding your backups will notify you that your backups are available when you come back online.
        ;br;

        import your old keys:
        ;br;
        :phoenix|add-key 0xdead.beef
        ;br;

        check the `offers` page to see which backups are available.
        ;br;
        
        retrieve a backup from another ship using `keen`.
        ;br;
        tomb deletes a backup (tombstone).
        ;br;

        to restore from a snapshot that you have the key for, enter an agent name to poke that agent with the cage:
        ;br;
        `[%egg-any !>(egg-any:gall)]`
        ;br;
        agents that choose to support restore functionality should handle a poke with that cage.
        ;br;
        see +on-egg-any in /app/phoenix/hoon for an example.
        ;br;

        to allow a ship to store backups on your ship, they must be a whitelisted guest:
        :phoenix|add-guest ~sampel
        ;br;
        guests can be managed on the `guests` page.
        ;br;

      ==  ::  body
    ==    ::  html
  --
--

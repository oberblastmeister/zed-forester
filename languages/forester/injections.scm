((inline_math
   body: (_)+ @injection.content)
  (#set! injection.language "latex")
  (#set! injection.include-children))

((display_math
   body: (_)+ @injection.content)
  (#set! injection.language "latex")
  (#set! injection.include-children))

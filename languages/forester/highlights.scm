; Comments
(comment) @comment

; Builtin commands and structural forms
[
  (import_keyword)
  (export_keyword)
  (def_keyword)
  (namespace_keyword)
  (let_keyword)
  (fun_keyword)
  (open_keyword)
  (object_keyword)
  (patch_keyword)
  (call_keyword)
  (subtree_keyword)
  (scope_keyword)
  (put_keyword)
  (default_keyword)
  (get_keyword)
  (alloc_keyword)
  (datalog_keyword)
] @keyword

; Group delimiters and command path separators
[
  "{"
  "}"
  "["
  "]"
  "("
  ")"
  "#{"
  "##{"
] @punctuation.bracket

"/" @punctuation.delimiter

; Datalog operators and sigils
(dx_entailed) @operator

[
  (tick)
  (at_sign)
  (hash)
] @operator

; Command names and hierarchical identifiers
(command_path
  head: (path_head) @function)

(command_path
  segment: (path_segment) @function)

; Forester-specific named forms
(hash_identifier) @constant
(dx_variable) @variable

(subtree_label
  (text) @constant)

(bare_binding
  name: (text) @variable.parameter)

(method_decl
  name: (text) @property)

(xml_identifier) @tag
(xmlns_name) @attribute

; Literal-ish bodies used for imports, exports, and namespace URIs
(import_statement
  argument: (text_argument
    (text) @string.special))

(export_statement
  argument: (text_argument
    (text) @string.special))

(xmlns_declaration
  argument: (text_argument
    (text) @string.special))

; Raw text blocks and math escapes
(verbatim) @string

(inline_math) @embedded
(display_math) @embedded

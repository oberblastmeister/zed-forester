; Definitions and bindings
(definition
  (def_keyword) @context
  name: (command_path) @name) @item

(let_binding
  (let_keyword) @context
  name: (command_path) @name) @item

(alloc
  (alloc_keyword) @context
  name: (command_path) @name) @item

(put
  (put_keyword) @context
  name: (command_path) @name) @item

(default_put
  (default_keyword) @context
  name: (command_path) @name) @item

(get
  (get_keyword) @context
  name: (command_path) @name) @item

(open
  (open_keyword) @context
  name: (command_path) @name) @item

; Higher-level structure
(namespace
  (namespace_keyword) @context
  name: (command_path) @name) @item

(subtree
  (subtree_keyword) @context
  label: (subtree_label
    (text) @name)) @item

(subtree
  !label
  (subtree_keyword) @name) @item

(object
  (object_keyword) @context
  self: (bare_binding
    name: (text) @name)) @item

(object
  !self
  (object_keyword) @name) @item

(patch
  (patch_keyword) @context
  self: (bare_binding
    name: (text) @name)) @item

(patch
  (patch_keyword) @context
  !self
  super: (bare_binding
    name: (text) @name)) @item

(patch
  !self
  !super
  (patch_keyword) @name) @item

(method_decl
  name: (text) @name) @item

; File-level directives
(import_statement
  (import_keyword) @context
  argument: (text_argument
    (text) @name)) @item

(export_statement
  (export_keyword) @context
  argument: (text_argument
    (text) @name)) @item

(xmlns_declaration
  (xmlns_name) @context
  argument: (text_argument
    (text) @name)) @item

| Command        | Description                                                   |
|----------------|---------------------------------------------------------------|
| `%`            | Jump between opening and closing tags. Example: `hello(1,2,3,4)`. When the cursor is within an opening or closing tag, pressing `d` or `v` followed by `%` will perform the same action as `d` or `v` within the tag, including its content. |
| `o`            | In visual mode, move the cursor to the opposite direction.    |
| `g (Ctrl+Shift+A)` | Increment numbers inside the visually selected text.       |
| `:norm I<text>` | Prefix every line visually selected with the specified `<text>`. |
| `:norm A<text>` | Append every line visually selected with the specified `<text>`. |

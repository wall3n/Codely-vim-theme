# H1 Heading

## H2 Heading

### H3 Heading

Regular paragraph with **bold text**, _italic text_, and ~~strikethrough~~.
A [link to Codely](https://codely.com) and an ![image alt](logo.png).

> Blockquote with `inline code` inside.
> Second line of the blockquote.

---

Unordered list:

- Item one
- Item two
  - Nested item
- Item three

Ordered list:

1. First
2. Second
3. Third

Task list:

- [x] TreeSitter groups
- [x] LSP Diagnostics
- [ ] Screenshots

---

Fenced code block (Lua):

```lua
local function greet(name)
  return string.format("Hello, %s!", name)
end
```

Fenced code block (shell):

```bash
nvim --cmd "set rtp+=." --cmd "colorscheme Codely" test/sample.lua
```

Inline code: `colorscheme Codely`.

---

Table:

| Token    | Hex       | Role          |
|----------|-----------|---------------|
| keyword  | `#fb5245` | Control flow  |
| string   | `#B8BB26` | Literals      |
| type     | `#8EC07C` | Classes/types |

---

HTML in Markdown:

<details>
<summary>Expand</summary>

Some hidden content.

</details>

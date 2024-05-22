local luasnip = require 'luasnip'
local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node

luasnip.add_snippets('go', {
    luasnip.parser.parse_snippet('iferr', 'if err != nil {\n  return nil\n}'),
})
luasnip.add_snippets('javascript', {
    luasnip.parser.parse_snippet('rc', "function ${1:name}() {\n    return(\n        '${1:name}'\n    )\n}\nexport default ${1:name}"),
})
luasnip.add_snippets('typescript', {
    luasnip.parser.parse_snippet('rc', "function ${1:name}() {\n    return(\n        '${1:name}'\n    )\n}\nexport default ${1:name}"),
})
luasnip.add_snippets('java', {
    luasnip.parser.parse_snippet('pc', 'public class ${1:name}{\n    public static void main(String[] args){\n    }\n}'),
})

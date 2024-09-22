local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local ri = function (insert_node_id, transform)
    return f(function (args)
        print(args)
        local text = args[1][1] -- Get text from node
        if transform then
            return transform(text) -- Call transform passing text node
        else
            return text -- Return untransformed text
        end
    end, insert_node_id)
end

local capitalize_first_letter = function (str)
    return string.upper(string.sub(str, 1, 1)) .. string.sub(str, 2)
end

-- Typescript React snippets

-- react functional component
ls.add_snippets("javascriptreact", {
    s("rfc", { -- Snippet trigger is 'rfc'
        t("interface "), ri(1), t("Props {"),
        i(3),
        t({"", "}", "", ""}),


        t("const "), i(1), t(" = (props: "), ri(1), t("Props) => {"),
        t({"", "  return ("}),
        t({"", "    "}), i(2), -- $2 placeholder
        t({"", "  );", "};", "", "export default "}), ri(1), -- Reuse $1 placeholder
        t(";")
    }),
})

-- react use state 
ls.add_snippets("javascriptreact", {
    s("st", {
        t("const ["), i(1), t(", set"), ri(1, capitalize_first_letter), t("] = useState<"), i(2), t(">("), i(3), t(");")
    }),
})

-- react use effect
ls.add_snippets("javascriptreact", {
    s("sf", {
        t("useEffect(() => {"),
        t({"", "  "}), i(1),
        t({"", "}"}), i(2), t(");")
    }),
})

-- react context provider
ls.add_snippets("javascriptreact", {
    s("cxpr", {
        t({"import { createContext, useContext } from 'react';"}),
        t({"", "", "interface "}), i(1), t({"Context {", "  "}), i(2), t({"", "}"}),
        t({"", "", "const Context = createContext<"}), ri(1), t({"Context>({} as "}), ri(1), t({"Context);"}),
        t({"", "", "interface "}), ri(1), t({"ContextProviderProps {", "  children: React.ReactNode;"}), i(3), t({"", "}"}),
        t({"", "", "const "}), ri(1), t({"ContextProvider = ({ children }: "}), ri(1), t({"ContextProviderProps) => {"}),
        t({"", "  const value: "}), ri(1), t({"Context = {};"}),
        t({"", "", "  return (", "    <Context.Provider value={value}>", "      {children}", "    </Context.Provider>", "  );"}),
        t({"", "", "const use"}), ri(1), t({" = () => useContext(Context);"}),
        t({"", "", "export { use"}), ri(1), t({" };"}),
        t({"", "", "export default "}), ri(1), t({"ContextProvider;"})
    }),
})

return ls

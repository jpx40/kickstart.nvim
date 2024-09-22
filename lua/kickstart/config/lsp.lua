return {  rust_analyzer = {
  keys = {
    { "K", "<cmd>RustHoverActions<cr>", desc = "Hover Actions (Rust)" },
    { "<leader>cR", "<cmd>RustCodeAction<cr>", desc = "Code Action (Rust)" },
    { "<leader>dr", "<cmd>RustDebuggables<cr>", desc = "Run Debuggables (Rust)" },
  },
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
        loadOutDirsFromCheck = true,
        runBuildScripts = true,
      },
      -- Add clippy lints for Rust.
      checkOnSave = {
        allFeatures = true,
        command = "clippy",
        extraArgs = { "--no-deps" },
      },
      procMacro = {
        enable = true,
        ignored = {
          ["async-trait"] = { "async_trait" },
          ["napi-derive"] = { "napi" },
          ["async-recursion"] = { "async_recursion" },
        },
      },
    },
    -- rustfmt = { overrideCommand = "leposfmt --stdin --rustfmt" },
  },
},
tailwindcss = {
      init_options = {
        userLanguages = {
          elixir = "phoenix-heex",
          eruby = "erb",
          heex = "phoenix-heex",
        },
      },
      settings = {
        tailwindCSS = {
          experimental = {
            classRegex = {
              [[class: "([^"]*)]],
            },
          },
          -- filetypes_include = { "heex" },
          -- init_options = {
          --   userLanguages = {
          --     elixir = "html-eex",
          --     eelixir = "html-eex",
          --     heex = "html-eex",
          --   },
          -- },
        },
      },
    },
    jdtls = {},
    astro = {},

    neocmake = {},

    texlab = {
          keys = {
            { "<Leader>K", "<plug>(vimtex-doc-package)", desc = "Vimtex Docs", silent = true },
          },
    },
     kotlin_language_server = {},

pest_ls = {},
ruff = {
        cmd_env = { RUFF_TRACE = "messages" },
        init_options = {
          settings = {
            logLevel = "error",
          },
        },
 
        },
        tailwindcss = {
              -- exclude a filetype from the default_config
              filetypes_exclude = { "markdown" },
      
              experimental = { classRegex = 'class: "(.*)"' },
      
              -- add additional filetypes to the default_config
              filetypes_include = {
                "html",
                "javascript",
                "typescript",
                "vue",
                "svelte",
                "css",
                "scss",
                "less",
                "heex",
                "gotmpl",
                "templ",
                "tsx",
                "jsx",
              },
        },
        -- fish_lsp = {},
             svelte = {
               cmd = { "svelteserver", "--stdio" },
               filetypes = { "svelte" },
             },
             templ = {
               cmd = { "templ", "lsp" },
               filetypes = { "templ" },
               root_dir = require("lspconfig.util").root_pattern("gp.work", "go.mod", ".git"),
             },
             html = {
               -- cmd = { "html-languageserver", "--stdio" },
               filetypes = { "html", "htmldjango", "vue", "twig", "htmldjango", "templ" },
             },
      ruff_lsp = {   
      },
     -- dartls = {},
      ols = {},
      haxe_language_server = {},
      rescriptls = {},
    taplo = {
  keys = {
    {
      "K",
      function()
        if vim.fn.expand("%:t") == "Cargo.toml" and require("crates").popup_available() then
          require("crates").show_popup()
        else
          vim.lsp.buf.hover()
        end
      end,
      desc = "Show Crate Documentation",
    },
  },     ruby_lsp = {
     enabled = lsp == "ruby_lsp",
   },
   solargraph = {
     enabled = lsp == "solargraph",
   },
   rubocop = {
     enabled = formatter == "rubocop",
   },
   standardrb = {
     enabled = formatter == "standardrb",
   },
   

v_analyzer={filetypes = {"v"},  root_dir = require("lspconfig.util").root_pattern(), },
--ocamllsp = {},
gopls= {},
elixirls = {
          keys = {
            {
              "<leader>cp",
              function()
                local params = vim.lsp.util.make_position_params()
                LazyVim.lsp.execute({
                  command = "manipulatePipes:serverid",
                  arguments = { "toPipe", params.textDocument.uri, params.position.line, params.position.character },
                })
              end,
              desc = "To Pipe",
            },
            {
              "<leader>cP",
              function()
                local params = vim.lsp.util.make_position_params()
                LazyVim.lsp.execute({
                  command = "manipulatePipes:serverid",
                  arguments = { "fromPipe", params.textDocument.uri, params.position.line, params.position.character },
                })
              end,
              desc = "From Pipe",
            },
          },
          
}
}
}




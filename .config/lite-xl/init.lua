-- put user settings here
-- this module will be loaded after everything else when the application starts
-- it will be automatically reloaded when saved

local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

------------------------------ Themes ----------------------------------------

core.reload_module("colors.gruvbox_dark")

--------------------------- Key bindings -------------------------------------

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }


------------------------------- Fonts ----------------------------------------

-- customize fonts:
-- style.font = renderer.font.load(DATADIR .. "/fonts/FiraSans-Regular.ttf", 13 * SCALE)
-- style.code_font = renderer.font.load(DATADIR .. "/fonts/JetBrainsMono-Regular.ttf", 13 * SCALE)
--
-- font names used by lite:
-- style.font          : Cascadia Code
-- style.big_font      : big text in welcome screen
-- style.icon_font     : icons
-- style.icon_big_font : toolbar icons
-- style.code_font     : Cascadia Code
--
-- the function to load the font accept a 3rd optional argument like:
--
-- {antialiasing="grayscale", hinting="full"}
--
-- possible values are:
-- antialiasing: grayscale, subpixel
-- hinting: none, slight, full

------------------------------ Plugins ----------------------------------------

config.plugins.trimwhitespace = true
config.plugins.autocomplete = true
config.plugins.bracketmatch = true
config.plugins.toolbarview = true
config.plugins.autowrap = true
config.plugins.language_c = true
config.plugins.language_html = true
config.plugins.language_css = true
config.plugins.language_js = true
config.plugins.language_jsx = true
config.plugins.language_ts = true
config.plugins.language_tsx = true
config.plugins.language_md = true
config.plugins.language_python = true
config.plugins.language_go = true
config.plugins.language_csharp = true

------------------------------ Plugins ---------------------------------------
config.ignore_files = { "^node_modules$", "^.vscode$" }

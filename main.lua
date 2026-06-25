--#region Atlas
--71x95

SMODS.Atlas {
    key = 'atlas',
    path = 'atlas.png',
    px = 71,
    py = 95
}
--#endregion

--#region file loading
local jokers_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/jokers")

for _, file in ipairs(jokers_src) do
    assert(SMODS.load_file("src/jokers/" .. file))()
end
--endregion
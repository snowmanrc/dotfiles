
-- Window Rules

hl.window_rule({
    match = { class = "^(nm-connection-editor)$" },
    float = true
})

hl.window_rule({
    match = { class = "^(blueman-manager)$" },
    float = true
})

hl.window_rule({
    match = { class = "^(xdg-desktop-portal)$" },
    float = true
})

hl.window_rule({
    match = {
        class = "^(steam)$",
        title = "^(notificationtoasts)"
    },
    no_initial_focus = true,
    pin = true
})

hl.window_rule({
    match = {
        class = "^(firefox)$",
        title = "^(Picture-in-Picture)$"
    },
    float = true
})

hl.window_rule({
    match = { class = "^(zoom)$" },
    float = true
})

hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})

hl.window_rule({
    match = { 
        class = "^org\\.kde\\.(kcalc|haruna|kclock|calindori|gwenview|kamoso)$" 
    },
    float = true,
    size = { 760, 540 },
})

-- Layer Rules

hl.layer_rule({
    match = { namespace = "^(quickshell)$" },
    no_anim = true
})

hl.layer_rule({
    name = "noctalia",
    match = {
      namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
    },
    no_anim = true,
    ignore_alpha = 0.5,
    blur = true,
    blur_popups = true,
})
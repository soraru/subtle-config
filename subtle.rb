# == Options
# Window move/resize steps in pixel per keypress
set :increase_step, 10

# Window screen border snapping
set :border_snap, 10

# Default starting gravity for windows. Comment out to use gravity of
# currently active client
set :default_gravity, :ct66 

# Make dialog windows urgent and draw focus
set :urgent_dialogs, true

# Honor resize size hints globally
set :honor_size_hints, false

# Enable gravity tiling for all gravities
set :gravity_tiling, false

# Enable click-to-focus focus model
set :click_to_focus, false

# Skip pointer movement on e.g. gravity change
set :skip_pointer_warp, false

# Skip pointer movement to urgent windows
set :skip_urgent_warp, false

# Set the WM_NAME of subtle (Java quirk)
# set :wmname, "LG3D"

# == Screen

screen 1 do
  top    [ :views, :separator ,:spacer , :title, :spacer, :separator, :mpd, :separator, :clock2 ]
  bottom [ ]
end

# Colors
  
bg_a =  "#181512"
bg_b =  "#212121"
color_above =   "#373737"
color_light =   "#A6594A"
color_medium =  "#DCC58F"
color_dark =    "#3F5454"

# == Styles
style :all do
  icon        color_light
  padding     2, 2, 2, 2
  margin      0, 0, 0, 0
  font        "xft:lemon:pixelsize=8:antialias=false"
end

# Style for the all views
style :views do
  foreground  color_medium
  background  bg_a
  separator   "|"
  font        "xft:lemon:pixelsize=8:antialias=false"

  # Style for the active views
  style :focus do
    foreground  color_medium
    background  color_light
    icon        color_medium
    font        "xft:lemon:pixelsize=8:antialias=false"
  end

  # Style for urgent window titles and views
  style :urgent do
    foreground  color_light
    background  bg_a
    icon        color_light
    font        "xft:lemon:pixelsize=8:antialias=false"
  end

  # Style for occupied views (views with clients)
  style :occupied do
    foreground  color_light
    background  bg_a
    icon        color_light
    font        "xft:lemon:pixelsize=8:antialias=false"
  end
end

# Style for sublets
style :sublets do
  foreground  color_medium
  background  bg_a
  padding     1, 4, 2, 4 
  font        "xft:lemon:pixelsize=8:antialias=false"
end

# Style for separator
style :separator do
  foreground  color_above
  background  bg_a
  separator   "|"
end

# Style for focus window title
style :title do
  padding     1, 4, 2, 4
  foreground  color_medium
  background  bg_a
  font        "xft:lemon:pixelsize=8:antialias=false"
end

# Style for active/inactive windows
style :clients do
  active    color_light, 3
  inactive  color_medium, 3
  margin    4, 4, 4, 4
  padding   0, 0, 0, 0
  width     75
  font        "xft:lemon:pixelsize=8:antialias=false"
end

# Style for subtle
style :subtle do
  padding      0, 0, 0, 0
  margin       0, 0, 0, 0
  panel_top    bg_a
  panel_botton bg_a 
  font         "xft:lemon:pixelsize=8:antialias=false"
end

# == Gravities
gravity :tl_a1,     [   0,   0,  33,  33 ]
gravity :tl_a2,     [   0,   0,  50,  33 ]
gravity :tl_a3,     [   0,   0,  67,  33 ]

gravity :tl_b1,     [   0,   0,  33,  50 ]
gravity :tl_b2,     [   0,   0,  50,  50 ]
gravity :tl_b3,     [   0,   0,  67,  50 ]

gravity :tl_c1,     [   0,   0,  33,  67 ]
gravity :tl_c2,     [   0,   0,  50,  67 ]
gravity :tl_c3,     [   0,   0,  67,  67 ]
     
# Top center
gravity :tc_a1,     [   0,   0, 100,  50 ]
gravity :tc_a2,     [   0,   0, 100,  67 ]
gravity :tc_a3,     [   0,   0, 100,  33 ]

gravity :tc_b1,     [  33,   0,  34,  33 ]
gravity :tc_b2,     [  33,   0,  34,  50 ]
gravity :tc_b3,     [  33,   0,  34,  67 ]

# Top right
gravity :tr_a1,     [  67,   0,  33,  33 ]
gravity :tr_a2,     [  50,   0,  50,  33 ]
gravity :tr_a3,     [  33,   0,  67,  33 ]

gravity :tr_b1,     [  67,   0,  33,  50 ]
gravity :tr_b2,     [  50,   0,  50,  50 ]
gravity :tr_b3,     [  33,   0,  67,  50 ]

gravity :tr_c1,     [  67,   0,  33,  67 ]
gravity :tr_c2,     [  50,   0,  50,  67 ]
gravity :tr_c3,     [  33,   0,  67,  67 ]

# Left
gravity :l_a1,      [   0,  33,  33,  34 ]
gravity :l_a2,      [   0,  33,  50,  34 ]
gravity :l_a3,      [   0,  33,  67,  34 ]

gravity :l_b1,      [   0,   0,  33, 100 ]
gravity :l_b2,      [   0,   0,  50, 100 ]
gravity :l_b3,      [   0,   0,  67, 100 ]

# Center
gravity :ct,        [   0,   0, 100, 100 ]
gravity :ct33,      [  33,  33,  34,  34 ] 
gravity :ct66,      [  25,  25,  50,  50 ], :vert
gravity :ct40,      [  0,  33,  100,  34 ]

# Right
gravity :r_a1,      [  67,  33,  33,  34 ]
gravity :r_a2,      [  50,  33,  50,  34 ]
gravity :r_a3,      [  33,  33,  67,  34 ]

gravity :r_b1,      [  67,   0,  33, 100 ]
gravity :r_b2,      [  50,   0,  50, 100 ]
gravity :r_b3,      [  33,   0,  67, 100 ]

# Bottom left
gravity :bl_a1,     [   0,  67,  33,  33 ]
gravity :bl_a2,     [   0,  67,  50,  33 ]
gravity :bl_a3,     [   0,  67,  67,  33 ]

gravity :bl_b1,     [   0,  50,  33,  50 ]
gravity :bl_b2,     [   0,  50,  50,  50 ]
gravity :bl_b3,     [   0,  50,  67,  50 ]

gravity :bl_c1,     [   0,  33,  33,  67 ]
gravity :bl_c2,     [   0,  33,  50,  67 ]
gravity :bl_c3,     [   0,  33,  67,  67 ]

# Bottom center
gravity :bc_a1,     [   0,  50, 100,  50 ]
gravity :bc_a2,     [   0,  33, 100,  67 ]
gravity :bc_a3,     [   0,  67, 100,  33 ]

gravity :bc_b1,     [  33,  67,  34,  33 ]
gravity :bc_b2,     [  33,  50,  34,  50 ]
gravity :bc_b3,     [  33,  33,  34,  67 ]

# Bottom right
gravity :br_a1,     [  67,  67,  33,  33 ]
gravity :br_a2,     [  50,  67,  50,  33 ]
gravity :br_a3,     [  33,  67,  67,  33 ]

gravity :br_b1,     [  67,  50,  33,  50 ]
gravity :br_b2,     [  50,  50,  50,  50 ]
gravity :br_b3,     [  33,  50,  67,  50 ]

gravity :br_c1,     [  67,  33,  33,  67 ]
gravity :br_c2,     [  50,  33,  50,  67 ]
gravity :br_c3,     [  33,  33,  67,  67 ]

# Special
gravity :sp_br,     [  70,  85,  30,  15 ]
gravity :sp_bl,     [   0,  85,  30,  15 ]
gravity :sp_tr,     [  70,   0,  30,  15 ]
gravity :sp_tl,     [   0,   0,  30,  15 ]

# Gimp
gravity :gimp_i,    [  10,   0,  80, 100 ]
gravity :gimp_t,    [   0,   0,  10, 100 ]
gravity :gimp_d,    [  90,   0,  10, 100 ]

# == Grabs
# Jump to view1, view2, ...
grab "W-S-1", :ViewJump1
grab "W-S-2", :ViewJump2
grab "W-S-3", :ViewJump3
grab "W-S-4", :ViewJump4

# Switch current view
grab "W-1", :ViewSwitch1
grab "W-2", :ViewSwitch2
grab "W-3", :ViewSwitch3
grab "W-4", :ViewSwitch4

# Select next and prev view */
grab "KP_Add",      :ViewNext
grab "KP_Subtract", :ViewPrev

# Move mouse to screen1, screen2, ...
grab "W-A-1", :ScreenJump1
grab "W-A-2", :ScreenJump2
grab "W-A-3", :ScreenJump3
grab "W-A-4", :ScreenJump4

# Force reload of config and sublets
grab "W-C-r", :SubtleReload

# Force restart of subtle
grab "W-C-S-r", :SubtleRestart

# Quit subtle
grab "W-C-q", :SubtleQuit

# Move current window
grab "W-B1", :WindowMove

# Resize current window
grab "W-B3", :WindowResize

# Toggle floating mode of window
grab "W-f", :WindowFloat

# Toggle fullscreen mode of window
grab "W-space", :WindowFull

# Toggle sticky mode of window (will be visible on all views)
grab "W-s", :WindowStick

# Toggle zaphod mode of window (will span across all screens)
grab "W-equal", :WindowZaphod

# Raise window
grab "W-r", :WindowRaise

# Lower window
grab "W-l", :WindowLower

# Select next windows
grab "W-Left",  :WindowLeft
grab "W-Down",  :WindowDown
grab "W-Up",    :WindowUp
grab "W-Right", :WindowRight

# Kill current window
grab "W-S-k", :WindowKill

# Cycle between given gravities
grab "W-KP_9",      [ :tr_a1, :tr_a2, :tr_a3, :tr_b1, :tr_b2, :tr_b3, :tr_c1, :tr_c2, :tr_c3 ]
grab "W-KP_8",      [ :tc_b1, :tc_b2, :tc_b3, :tc_a3, :tc_a1, :tc_a2                         ]
grab "W-KP_7",      [ :tl_a1, :tl_a2, :tl_a3, :tl_b1, :tl_b2, :tl_b3, :tl_c1, :tl_c2, :tl_c3 ]

grab "W-KP_6",      [ :r_a1,  :r_a2,  :r_a3,  :r_b1,  :r_b2,  :r_b3                          ]
grab "W-KP_5",      [ :ct33,  :ct66,  :ct,    :ct40                                          ]
grab "W-KP_4",      [ :l_a1,  :l_a2,  :l_a3,  :l_b1,  :l_b2,  :l_b3                          ]

grab "W-KP_3",      [ :br_a1, :br_a2, :br_a3, :br_b1, :br_b2, :br_b3, :br_c1, :br_c2, :br_c3 ]
grab "W-KP_2",      [ :bc_b1, :bc_b2, :bc_b3, :bc_a3, :bc_a1, :bc_a2                         ]
grab "W-KP_1",      [ :bl_a1, :bl_a2, :bl_a3, :bl_b1, :bl_b2, :bl_b3, :bl_c1, :bl_c2, :bl_c3 ]

grab "W-KP_0",      [ :sp_br, :sp_bl, :sp_tr, :sp_tl                                         ]

# In case no numpad is available e.g. on notebooks
#grab "W-q", [ :top_left,     :top_left66,     :top_left33     ]
#grab "W-w", [ :top,          :top66,          :top33          ]
#grab "W-e", [ :top_right,    :top_right66,    :top_right33    ]
#grab "W-a", [ :left,         :left66,         :left33         ]
#grab "W-s", [ :center,       :center66,       :center33       ]
#grab "W-d", [ :right,        :right66,        :right33        ]
#
# QUERTZ
#grab "W-y", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
#
# QWERTY
#grab "W-z", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
#
#grab "W-x", [ :bottom,       :bottom66,       :bottom33       ]
#grab "W-c", [ :bottom_right, :bottom_right66, :bottom_right33 ]

# Exec programs
grab "W-Return",  "urxvt"
grab "W-w",       "firefox"
grab "W-m",       "urxvt -name ncmpcpp  -e ncmpcpp"
grab "W-i",       "urxvt -name irssi    -e irssi"
grab "W-b",       "dwb"
grab "W-g",       "dolphin"  

# Selector
grab "W-s" do
    Subtle::Contrib::Selector.run
end

# Positioner
grab "W-C-p" do
    Subtle::Contrib::Positioner.run
end


# Run Ruby lambdas
grab "S-F2" do |c|
  puts c.name
end

grab "S-F3" do
  puts Subtlext::VERSION
end

# == Tags
# Simple tags
tag "terms",   "xterm|urxvt|termite"
tag "browser", "uzbl|opera|firefox|navigator|dwb|gedit"
tag "media", "mpv|mupdf|Cave Story +"

# Placement

tag "fixed" do
  geometry [ 10, 10, 100, 100 ]
  stick    true
end

tag "resize" do
  match  "sakura|vim"
  resize true
end

tag "gravity" do
  gravity :center
end

# Modes
tag "stick" do
  match "mplayer"
  float true
  stick true
end

tag "float" do
  match "mpv|feh|mupdf|display"
  float true
end

# == Views
view "moe",     "terms|default"
view "qer",     "browser"
view "waai",    "media"

# == Sublets
sublet :clock2 do
  interval      30
  time_color    color_medium
  date_color    color_light
end

sublet :mpd do
    format_string       "%artist% %title%"
    show_icons          false
    show_colors         true
    show_pause          true
    artist_color        color_medium
    title_color         color_light
    pause_color         color_medium
    stop_color          color_medium
    stop_text           "stop"
    pause_text          "pause"
    not_running_text    "closed"
    blank_text          "stahpu!"
end

# == Hooks
on :client_focus do |c|
    puts c.name
end

# == Autostart

on :start do
    Subtlext::Client.spawn "urxvt"
    Subtlext::Client.spawn "termite"
    Subtlext::Client.spawn "firefox"
end

on :client_create do |c|
    c.views.jump
    c.focus
    c.raise
end

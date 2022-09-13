local status_ok, alpha = pcall(require, 'alpha')
local theta = require('alpha.themes.theta')

if not status_ok then return end

local customLogo = {
  [[        _                             _            ]],
  [[   __ _| | ____ _ _ __   ___ ___   __| | ___  ___  ]],
  [[  / _` | |/ / _` | '_ \ / __/ _ \ / _` |/ _ \/ __| ]],
  [[ | (_| |   < (_| | | | | (_| (_) | (_| |  __/\__ \ ]],
  [[  \__,_|_|\_\__,_|_| |_|\___\___/ \__,_|\___||___/ ]],
}

theta.header.val = customLogo

alpha.setup(theta.config)

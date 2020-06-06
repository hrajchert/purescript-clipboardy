{ name = "purescript-clipboardy"
, license = "MIT"
, dependencies = [ "aff", "aff-promise", "console", "effect", "psci-support" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs", "examples/**/*.purs" ]
}

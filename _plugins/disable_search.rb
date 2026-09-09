# Disable al-folio's command-palette search UI for this small academic portfolio.
Jekyll::Hooks.register :site, :after_init do |site|
  site.config["search_enabled"] = false
end

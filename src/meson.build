dtunes_sources = [
  'main.vala'
]

dtunes_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
]

gnome = import('gnome')

dtunes_sources += gnome.compile_resources('dtunes-resources',
  'dtunes.gresource.xml',
  c_name: 'dtunes'
)

executable('dtunes', dtunes_sources,
  vala_args: '--target-glib=2.50',  dependencies: dtunes_deps,
  install: true,
)

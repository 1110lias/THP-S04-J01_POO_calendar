# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

# users
julie = User.new("emailjulie", 22)
julien = User.new("email2", 32)

# events
dentist = Event.new("dentist","2024-12-01 11:00", 20)
dentist2 = Event.new("dentist2","2023-11-11 14:00", 25)
coiffeur = Event.new("coiffeur", "2024-12-02", 30)
pointquo = Event.new("standup quotidien", "2019-01-13 09:00", 10, ["truc@machin.com", "bidule@chose.fr"])

binding.pry

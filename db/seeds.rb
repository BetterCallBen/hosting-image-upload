require "open-uri"

file = URI.parse("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg").open
article = Article.create(title: "La terre est plate", body: "on le voit bien quand on regarde au loin")
Article.create(title: "On est jamais allé sur la lune", body: "Amstrong nous a menti pour niquer l'URSS")

article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

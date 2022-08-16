require "faker"

100.times do
  article = Article.new(
    title: Faker::Hipster.sentence,
    content: Faker::Hipster.paragraph_by_chars(characters: 300, supplemental: false),
  )
  article.save
end

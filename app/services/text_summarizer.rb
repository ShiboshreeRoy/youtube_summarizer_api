class TextSummarizer
  def self.summarize(text)
    sentences = text.split('. ')
    return text if sentences.size <= 3

    summary = sentences.first(3).join('. ') + '.'
    summary
  end
end

require 'httparty'
require 'nokogiri'

class YoutubeTranscriptFetcher
  def self.fetch_transcript(video_url)
    video_id = video_url.split("v=").last
    transcript_url = "https://video.google.com/timedtext?lang=en&v=#{video_id}"
    
    response = HTTParty.get(transcript_url)
    return "No transcript available" if response.body.blank?

    xml = Nokogiri::XML(response.body)
    transcript = xml.xpath('//text').map { |node| node.text }.join(" ")
    transcript
  end
end

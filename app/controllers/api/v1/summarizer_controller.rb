class Api::V1::SummarizerController < ApplicationController
      def create
        url = params[:youtube_url]
        transcript = YoutubeTranscriptFetcher.fetch_transcript(url)
        summary = TextSummarizer.summarize(transcript)

        render json: {
          youtube_url: url,
          summary: summary
        }, status: :ok
      end
    end
  end
end

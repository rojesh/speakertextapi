SpeakerText Gem
===============

  A gem to automate transcription of audio and video media using the [SpeakerText service](http://speakertext.com) 
and [SpeakerText API](http://app.speakertext.com/api).

Overview
--------
  
Audio and video media hosted on the Internet are not well indexed by search engines and thus not easily 
searchable. For a fee, the SpeakerText.com service produces text transcripts of audio and video content that 
is available on the Internet (on a private website or a media hosting service such as YouTube). These text 
transcripts can be used to augment media, thus making them searchable and indexed by search engines. Using
the SpeakerText video player, the trascripts can also be used as subtitles increasing access of audio and 
video media to hearing impared individuals.


Requires
--------

* A SpeakerText account and API key
* Credits purchased through the [SpeakerText website](http://speakertext.com)
* [HTTParty gem](http://github.com/jnunemaker/httparty)
* [UUIDTools gem](http://github.com/sporkmonger/uuidtools)
* Ruby >= 1.9.2

Usage Examples
--------------

Install

    gem install speaker_text_api

Initialize the API with a key

    require 'speaker_text_api'
    st = SpeakerTextApi.new(your_api_key)

Submit a media file URL for transcription

    success, transcript_id = st.transcribe(url: public_url_of_media_file)

Submit a media file hosted on a platform (e.g., YouTube, Vimeo, SoundCloud)

    success, transcript_id = st.transcribe(platform: 'youtube', id: youtube_video_id)

Check the status of the transcription process

    success, status = st.transcript_status(id: transcript_id)

Request the completed transcripts

    success, content = st.transcript(id: transcript_id)
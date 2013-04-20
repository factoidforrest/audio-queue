class Audio_source < ActiveRecord::Base

attr_accessible :name, :ip

after_create Audio_source.update
after_destroy Audio_source.update
after_update Audio_source.update

class << self
  def update#create update message and send
    msg = {resource: 'audio_sources', action: update}
    $redis.publish 'audio-source-change', msg.to_json
  end
end



end

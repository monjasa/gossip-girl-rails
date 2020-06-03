module GossipsHelper
  def truncate(gossip, max)

    @message = gossip.message

    if @message.length > max
      "#{@message[0...max]} #{link_to '...', gossip_path(gossip, anchor: "gossip"), class: 'has-text-weight-bold'}".html_safe
    else
      @message
    end
  end
end

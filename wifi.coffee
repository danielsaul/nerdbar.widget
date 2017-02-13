command: "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | \
egrep ' SSID: *' | \
sed -E 's/.*(: )//'"

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="wifi">
    <span class="icon" ></span>
    <span class="txt" style="padding-left: 1px;"></span>
  </div>
  """

update: (output, el) ->
    $(".wifi span.txt", el).text("#{output} ")
    $icon = $(".wifi span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(output)}")

icon: (status) =>
    return if status.substring(0, 7) != ""
        "fa-wifi"
    else
        "fa-times"

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 11px 'Helvetica Neue'
  right: 275px
  top: 6px
  height: 16px
  overflow: hidden
  text-overflow: ellipsis
  width: auto
"""

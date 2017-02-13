command: "osascript -e 'get volume settings'"

refreshFrequency: 100 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="vol">
    <span class="icon" ></span>
    <span class="txt" style="padding-left: 1px;"></span>
  </div>
  """

update: (output, el) ->
    output = output.split(', ')
    vol = output[0].split(':')[1]
    mute = output[3].split(':')[1].replace(/\s/g,'')
    if mute == "true"
      $(".vol span.txt", el).text(" Mute")
    else
      $(".vol span.txt", el).text("#{vol}%")
    $icon = $(".vol span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa #{@icon(vol, mute)}")

icon: (vol, mute) =>
  return if mute == "true"
    "fa-volume-off"
  else if vol > 60
    "fa-volume-up"
  else if vol > 5
    "fa-volume-down"
  else
    "fa-volume-off"

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 11px 'Helvetica Neue'
  right: 215px
  top: 6px
  height: 16px
  overflow: hidden
  text-overflow: ellipsis
  width: auto
"""

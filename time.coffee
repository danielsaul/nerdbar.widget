command: "date +\"%H:%M\""

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="time">
    <span class="icon"></span>
    <span class="txt" style="padding-left: 3px;"></span>
  </div>
  """

update: (output, el) ->
    $(".time span.txt", el).text("  #{output}")
    $icon = $(".time span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-clock-o")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 11px 'Helvetica Neue'
  right: 20px
  top: 6px
  height: 16px
  overflow: hidden
  text-overflow: ellipsis
  width: auto
"""

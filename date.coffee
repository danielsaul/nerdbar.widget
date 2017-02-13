command: "date +\"%a %d %b\""

refreshFrequency: 10000

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="cal">
    <span class="icon"></span>
    <span class="txt" style="padding-left: 3px;"></span>
  </div>
  """

update: (output, el) ->
    $(".cal span.txt", el).text("  #{output}")
    $icon = $(".cal span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-calendar")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 11px 'Helvetica Neue'
  right: 75px
  top: 6px
  height: 16px
  overflow: hidden
  text-overflow: ellipsis
  width: auto
"""

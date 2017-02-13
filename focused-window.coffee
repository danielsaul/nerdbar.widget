command: "echo $(/usr/local/bin/kwmc query space active id)"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="foc">
    <span class="icon"></span>
    <span class="txt" style="padding-left: 3px;"></span>
  </div>
  """

update: (output, el) ->
    $(".foc span.txt", el).text(" #{output}")
    $icon = $(".foc span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-laptop")

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 11px 'Helvetica Neue'
  height: 16px
  left: 20px
  overflow: hidden
  text-overflow: ellipsis
  top: 6px
  width: auto
"""

new_image_rows = 1

$(document).on('click', '#upload-image', ->
  addNewImage()
)

addNewImage = () ->
  name = $('#image_name').val()
  $('#image-table').append(
    "<tr id='new-image-row-" + new_image_rows + "'>
       <td class='name'><a href='#'>" + name + "</a></td>
       <td>
         <div class='progress progress-striped active'>
           <div class='progress-text'>
             0%
           </div>
           <div style='width: 0%;' class='bar'></div>
         </div>
       </td>
      <td class='status'>Uploading</td>
    </tr>")

  row = $('#new-image-row-' + new_image_rows)
  new_image_rows++

  container = row.find('.progress')
  bar = row.find(".bar")
  percent = row.find(".progress-text")
  status = row.find(".status")
  name = row.find(".name")
  $("form").ajaxForm
    beforeSend: ->
      percentVal = "0%"
      bar.width percentVal
      percent.html percentVal

    uploadProgress: (event, position, total, percentComplete) ->
      percentVal = percentComplete + "%"
      bar.width percentVal
      percent.html percentVal

    complete: (result) ->
      percentVal = "100%"
      bar.width percentVal
      percent.html percentVal
      container.removeClass "active"
      status.html("Processing")
      row.attr("id", "image-" + result.responseJSON.id)
      name.find('a').attr('href', result.responseJSON.link)

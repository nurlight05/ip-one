function tinymce_init_callback(editor)
{
      editor.remove();
      editor = null;

      tinymce.init({
        forced_root_block : false,
        force_br_newlines : true,
        force_p_newlines : false,
        selector: 'textarea.richTextBox',
        skin: 'voyager',
        min_height: 600,
        resize: 'vertical',
        plugins: 'link, image, code, table, textcolor, lists',
        extended_valid_elements: 'input[id|name|value|type|class|style|required|placeholder|autocomplete|onclick]',
        file_browser_callback: function (field_name, url, type, win) {
            if (type == 'image') {
                $('#upload_file').trigger('click');
            }
        },
        toolbar: 'styleselect bold italic underline | forecolor backcolor | alignleft aligncenter alignright | bullist numlist outdent indent | link image table youtube giphy | codesample code',
        convert_urls: false,
        image_caption: true,
        image_title: true
    });
}







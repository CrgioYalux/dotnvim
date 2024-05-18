require('oil').setup({
    -- fast as possible
    skip_confirm_for_simple_edits = true,
    delete_to_trash = false,
    prompt_save_on_select_new_entry = true,

    -- misc
    default_file_explorer = false,

    -- keymaps :help oil-actions

    view_options = {
        show_hidden = true,
    },
})

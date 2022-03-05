require('orgmode').setup({
  org_agenda_files = {'~/.orgmode/*'},
  notifications = {
    enabled = true,
    reminder_time = {1, 5, 10}
  }
})

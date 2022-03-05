require('orgmode').setup({
  org_agenda_files = {'~/Dropbox/org/*'},
  notifications = {
    enabled = true,
    reminder_time = {1, 5, 10}
  }
})

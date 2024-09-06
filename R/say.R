# Generate a whale ASCII message
#
# @param what A character string to be included in the whale message.
# If missing, a random whale pun will be chosen.
# @return None. Prints a whale message in the console.
# @export
# Define the `say` function
say <- function(what) {
  whale <- "\n            ------ \n           %s \n            ------ \n               \\\   \n                \\\  \n                 \\\
     .-'
'--./ /     _.---.
'-,  (__..-`       \\
   \\          .     |
    `,.__.   ,__.--/
     '._/_.'___.-`
"
  # Find position of '%s' for message insertion
  what_pos_start <- regexpr('%s', whale)[1] - 1
  what_pos_end <- what_pos_start + 3

  # If `what` is missing, pick a random phrase
  if (missing(what)) {
    what <- phrases %>% sample(size = 1)
  }

  # Combine the whale ASCII art with the message
  out <- paste0(substr(whale, 1, what_pos_start),
                what,
                substr(whale, what_pos_end, nchar(whale)))

  # Print the whale message
  message(out)
}

# Internal whale phrases used in `say()`
phrases <- c(
  "You're whale-come!",
  "How are you? I'm whaley good!",
  "I'm having a whale of a time!",
  "Whale, whale, whale...look who's here!",
  "Gee...this is over-whalming!",
  "Everything whale be alright!",
  "Get whale soon!",
  "Whale done! This looks great!",
  "What do you call a pod of noisy whales? An ORCASTRA!"
)


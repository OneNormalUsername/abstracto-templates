This command can be used to add reacts representing text to messages. The messages if referenced by replying to the message while executing the command.
The bot will try to fix any duplicated characters in the text, and it will try to replace multiple characters, with one reaction (if possible, for example there exists an emote for SOS),
but in case the bot is unable to fix the duplicates, an error message is shown. The replacement with multiple characters has precedence over single characters.
If the already existing reactions + the reactions which would be created by this command reach the Discord limit of reactions on a message, this command will show an error message and not add any reaction.
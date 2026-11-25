# macOS Password Shortcut

A small Shortcuts app shortcut for the Mac that generates a random password and copies it to the clipboard. Run it, then paste the password where you need it.

## How it works

The shortcut has two actions:

1. **Run Shell Script** runs a one line command that reads random bytes from the system generator (`/dev/urandom`) and keeps only the allowed characters.
2. **Copy to Clipboard** copies the result.

The default password is 20 characters from a 72 character set (A-Z, a-z, 0-9, and `! @ # % ^ & * _ +  -`). That gives about 123 bits of entropy, which is far beyond what can be guessed.

The shortcut does not use an AI model to write the password. Model output is not truly random and can repeat, so a real random source is used instead.

## Set it up

1. Open **Shortcuts** on your Mac and click **+** to make a new shortcut. Name it "Generate Secure Password".
2. Add the **Run Shell Script** action. Set Shell to `/bin/zsh`.
3. Paste the script from [generate-password.sh](generate-password.sh) into the script box. Make sure the dashes are plain hyphens, not long dashes. If macOS swaps them, turn off **Use smart quotes and dashes** in System Settings > Keyboard > Text Input.
4. Add **Copy to Clipboard** after it and set its input to **Shell Script Result**.
5. Optional: add **Show Notification** with the text "Password copied", so you know it ran without showing the password.

## Run it

- Click the play button in Shortcuts.
- Add a keyboard shortcut in the shortcut's details panel (the "i" button), for example Control + Option + Command + P.
- Press Command + Space and type the shortcut's name.

## Change the length or characters

- **Length:** change the number after `head -c` in the script.
- **Characters:** change the set in quotes. Keep the `-` at the end of the set so it is not read as a range.

Each extra character adds about 6 bits of entropy.

## Safety notes

- Paste the password straight into the password field and save it in a password manager.
- Do not paste generated passwords into chats, email, or documents. Anything you paste somewhere else should be treated as exposed.

## License

[MIT](LICENSE)

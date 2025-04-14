# Bash Password Generator

This repository contains a simple Bash script (`generate_password.sh`) that generates strong, random passwords. It's designed to be a lightweight and easy-to-use command-line tool for quickly creating secure passwords directly from your terminal.

## Features

* **Strong Randomness:** Utilizes `/dev/urandom`, a cryptographically secure source of random numbers on Unix-like systems, to generate truly random passwords.
* **Configurable Length:** The script is currently set to generate passwords of 16 characters by default. This can be easily modified within the script.
* **Diverse Character Set:** Includes uppercase letters (A-Z), lowercase letters (a-z), digits (0-9), and a set of common special characters (`@#$%&*?`) to ensure password complexity.
* **Simple Output:** Prints the generated password directly to the standard output.
* **Lightweight:** Written entirely in Bash, making it a dependency-free and efficient tool.

## How to Use

1.  **Clone the Repository (Optional):**
    ```bash
    git clone <repository_url>
    cd <repository_name>
    ```
    (Replace `<repository_url>` with the actual URL of your Git repository and `<repository_name>` with the repository's name.)

2.  **Make the Script Executable:**
    ```bash
    chmod +x generate_password.sh
    ```

3.  **Run the Script:**
    ```bash
    ./generate_password.sh
    ```

    This will output a randomly generated 16-character password to your terminal, like this:

    ```
    🔐 Generated password: aB9#pQ&r2zXy$t7*
    ```

## Customization

### Changing the Password Length

You can easily modify the default password length by editing the `LENGTH` variable at the beginning of the `generate_password.sh` script.

1.  Open the `generate_password.sh` file in a text editor (e.g., `nano`, `vim`, `gedit`).
2.  Locate the line:
    ```bash
    LENGTH=16
    ```
3.  Change the value `16` to your desired password length. For example, to generate a 24-character password:
    ```bash
    LENGTH=24
    ```
4.  Save the changes and run the script again.

### Modifying the Character Set (Advanced)

If you need a different set of characters for your passwords, you can modify the `tr -dc '...'` part of the script.

1.  Open the `generate_password.sh` file in a text editor.
2.  Locate the line:
    ```bash
    PASSWORD=$(< /dev/urandom tr -dc 'A-Za-z0-9@#$%&*?' | head -c $LENGTH)
    ```
3.  The characters within the single quotes (`'A-Za-z0-9@#$%&*?'`) define the character set used for password generation. You can add or remove characters as needed. For example, to exclude special characters:
    ```bash
    PASSWORD=$(< /dev/urandom tr -dc 'A-Za-z0-9' | head -c $LENGTH)
    ```
4.  Save the changes and run the script. **Be cautious when modifying the character set, as it can impact the strength of the generated passwords.**

## Security Considerations

* **`/dev/urandom`:** This script relies on `/dev/urandom`, which is generally considered a cryptographically secure pseudo-random number generator (CSPRNG) on Unix-like systems.
* **Password Strength:** The default settings generate reasonably strong passwords. Increasing the `LENGTH` and including a diverse set of characters will further enhance password strength.
* **Usage:** Use generated passwords responsibly and store them securely using a password manager. Avoid manually typing and remembering complex passwords.

## Contributing

Contributions to this simple script are welcome! If you have suggestions for improvements or find any issues, feel free to open an issue or submit a pull request.

**Author:** [SOMESH SOM PATTNAIK]
**Date:** [14-04-2025]

# Mac Java Development Environment Playbook

## Initial Setup

- Install [Homebrew](https://brew.sh/).
- Install Ansible: `brew install ansible`.
- Clone this repository: `git clone https://github.com/marcelkliemannel/personal-mac-development-environment.git ~/.personal-mac-development-environment`.
- Copy `local.config.default.yml` to `local.config.yml` and set the values.
- Install Ansible requirements: `ansible-galaxy install -r requirements.yml`.
- Run playbook: `ansible-playbook main.yml --ask-become-pass`.

### Terminal

- Font: [Meslo LG M Regular Nerd Font Complete.ttf](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Meslo/M/Regular/complete/Meslo%20LG%20M%20Regular%20Nerd%20Font%20Complete.ttf)
- Theme: [Argonaut](https://github.com/lysyi3m/macos-terminal-themes#argonaut-download)

## Configuration

### .gradle/gradle.properties

```properties
signing.keyId=
signing.password=
signing.secretKeyRingFile=$HOME/.gnupg/secring.gpg
gradle.publish.key=
gradle.publish.secret=
jetbrains.marketplace.token=
jetbrains.sign-plugin.password=
```

### .m2/settings.xml

```xml
<settings>
  <profiles>
  <profile>
    <id>signing</id>
    <properties>
      <gpg.keyname></gpg.keyname>
      <gpg.passphrase></gpg.passphrase>
    </properties>
  </profile>
  </profiles>
  <servers>
    <server>
      <id>ossrh</id>
      <username></username>
      <password></password>
    </server>
  </servers>
</settings>
```

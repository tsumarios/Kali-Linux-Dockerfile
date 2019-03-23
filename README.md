# Kali-Linux-Dockerfile
A simple dockerfile which allows you to create a _docker image_ starting from the latest official one of Kali Linux and including some useful tools.

## Included tools
These are the main tools which are included:

- Kali Linux [Top 10](https://tools.kali.org/kali-metapackages) metapackage
- exploitdb
- man-db
- dirb
- nikto
- wpscan
- uniscan
- tor
- proxychains

Note that you can _add/modify/delete_ configuration files by doing the related changes in the dockerfile.

### Other useful things

Also [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH) is installed as default shell. You can add some changes directly in the [.zshrc](https://github.com/zMrDevJ/Kali-Linux-Dockerfile/blob/master/config/.zshrc) file, such as setting your favourite theme.
_Python-Pip_ and _NodeJS-NPM_ are included, too.

### Usage

In order to create an image from this dockerfile, just go on the folder where it is located and simple open your favourite Terminal, typing as follows:

```sh
docker build [-t your_image_name] .
```

##### DockerHub

You can also pull the image from the DockerHub [repository](https://cloud.docker.com/u/zmrdevj/repository/docker/zmrdevj/kali-linux) by opening your favourite Terminal and typing:

```sh
docker pull zmrdevj/kali-linux
```
####

#### Contacts

- Email: mraciti96@gmail.com
- LinkedIn: linkedin.com/in/marioraciti
- Twitter: twitter.com/zMrDevJ

### Todos

- Add some more useful tools, languages.

**Enjoy!**

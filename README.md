### How to run

In order to run the following commands, your OS should have `docker` and `make`

1. Run setup script for docker to run the container and install all required packages

```bash
make setup
```

2. Put your LJSpeach dataset to `recipes/LJSpeech/TTS/fastspeech2` folder with the name `LJSpeech`

3. After putting your dataset run `train` command

```bash
make train
```
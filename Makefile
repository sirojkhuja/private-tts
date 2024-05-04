DC := docker exec -it speechbrain-tts


setup: start pip-install pip-e-install

start:
	@docker compose up -d

stop:
	@docker compose down

restart: stop start

pip-install:
	@$(DC) pip install -r requirements.txt

pip-e-install:
	@$(DC) pip install -e .

train:
	@$(DC) cd /var/www/html/recipes/LJSpeech/TTS/fastspeech2 && python train.py --device=cpu --max_grad_norm=1.0 --data_folder=LJSpeech-1.1 hparams/train.yaml
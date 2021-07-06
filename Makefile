.PHONY: all

all:

boot:
	minikube start
	kubectl get po -A

dashboard: 
	minikube dashboard

minikube-setup:  # on deb based
	curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
	sudo dpkg -i minikube_latest_amd64.deb
	rm mini*.deb
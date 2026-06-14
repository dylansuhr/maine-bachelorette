dev:
	@LOCAL_IP=$$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo "unavailable"); \
	echo ""; \
	echo "  \033[1;34m╔══════════════════════════════════════════╗\033[0m"; \
	echo "  \033[1;34m║       Maine Bachelorette — Dev Server    ║\033[0m"; \
	echo "  \033[1;34m╚══════════════════════════════════════════╝\033[0m"; \
	echo ""; \
	echo "  \033[1;37m🖥   Desktop\033[0m  \033[0;36mhttp://localhost:8000\033[0m"; \
	echo "  \033[1;37m📱  iPhone\033[0m   \033[0;36mhttp://$$LOCAL_IP:8000\033[0m"; \
	echo ""; \
	echo "  \033[0;90mMake sure your iPhone is on the same WiFi network.\033[0m"; \
	echo "  \033[0;90mCtrl+C to stop.\033[0m"; \
	echo ""; \
	python3 -m http.server 8000

From nginx
# RUN echo '<h1>Hello , Docker! </h1><h2>This is my docker learning!</h2>' > /usr/share/nginx/html/index.html
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
HEALTHCHECK --interval=5s --timeout=3s \
	CMD curl -fs http://localhost/ || exit 1

FROM oven/bun
COPY . .
RUN bun install
CMD ["bun", "run preview --base '/'"]

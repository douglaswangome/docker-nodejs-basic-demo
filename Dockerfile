# Layer 1
FROM node:18

# Layer 2
WORKDIR /app

# Layer 3
COPY package*.json ./

# Layer 4
RUN npm install

# Layer 5
COPY . .

# Layer 6
ENV PORT=8001

# Layer 7
EXPOSE 8001

# Layer 8
CMD ["npm", "start"]
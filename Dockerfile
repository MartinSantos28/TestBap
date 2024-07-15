# Stage 1:
    FROM node:14 as builder
    WORKDIR /app
    COPY package*.json ./ 
    RUN npm install
    COPY . .   
    RUN npm run build
     
    # Stage 2:
    FROM nginx:1.17.1-alpine
    COPY --from=builder /app/build /usr/share/nginx/html
    EXPOSE 80
    CMD ["nginx", "-g", "daemon off;"]
    
    
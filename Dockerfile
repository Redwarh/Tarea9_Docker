# Start your image with a node base image
FROM mcr.microsoft.com/dotnet/nightly/sdk:7.0 as build

# The /app directory should act as the main application directory
WORKDIR /appEmpresa

#copy projecft files
copy ./*.csproj ./
run dotnet restore

# Copy local directories to the current local directory of our docker image (/app)
COPY ./* ./

# Install node packages, install serve, build the app, and remove dependencies at the end
RUN npm install \
    && npm install -g serve \
    && npm run build \
    && rm -fr node_modules

EXPOSE 5000

# Start the app using serve command
CMD [ "serve", "-s", "build" ]
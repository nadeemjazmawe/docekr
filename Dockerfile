FROM  mcr.microsoft.com/dotnet/aspnet:6.0-alpine

COPY ./publish ./GingerRuntime

USER root

RUN apk update
RUN apk add git

WORKDIR /GingerRuntime
ENTRYPOINT ["dotnet", "GingerRuntime.dll"]

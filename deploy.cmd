call docpad generate -e static
xcopy out C:\Sandbox\projects\azuredeployment\ /E
cd C:\Sandbox\projects\azuredeployment
git add *
git commit -m "Deployment"
git push azure master
cd C:\Sandbox\projects\github.com\vohumana\vohumana-blog
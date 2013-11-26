SET MSBUILD=C:\Windows\Microsoft.NET\Framework\v4.0.30319\msbuild.exe

%MSBUILD% Build.proj /target:NuGetPack /property:Configuration=Release;RELEASE=true;PatchVersion=60
%MSBUILD% build-sn.proj /target:TeamCityBuild;NuGetPack /property:Configuration=Release;RELEASE=true;PatchVersion=1

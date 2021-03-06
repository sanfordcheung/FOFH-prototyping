Connect-ServiceFabricCluster
Remove-ServiceFabricApplicationPackage -ApplicationPackagePathInImageStore FabricHealer
Remove-ServiceFabricApplication fabric:/FabricHealer -Force
Unregister-ServiceFabricApplicationType FabricHealerType 1.0.0 -Force
Register-ServiceFabricApplicationType -ApplicationPackageDownloadUri "https://github.com/sanfordcheung/FOFH-prototyping/raw/main/FH/FabricHealerPkg.sfpkg" -ApplicationTypeName FabricHealerType -ApplicationTypeVersion 1.0.0
New-ServiceFabricApplication fabric:/FabricHealer FabricHealerType 1.0.0
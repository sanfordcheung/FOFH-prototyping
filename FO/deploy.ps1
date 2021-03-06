Connect-ServiceFabricCluster
Remove-ServiceFabricApplicationPackage -ApplicationPackagePathInImageStore FabricObserver
Remove-ServiceFabricApplication fabric:/FabricObserver -Force
Unregister-ServiceFabricApplicationType FabricObserverType 3.0.11 -Force
Register-ServiceFabricApplicationType -ApplicationPackageDownloadUri "https://github.com/sanfordcheung/FOFH-prototyping/raw/main/FO/FabricObserverPkg.sfpkg" -ApplicationTypeName FabricObserverType -ApplicationTypeVersion 3.0.11
New-ServiceFabricApplication fabric:/FabricObserver FabricObserverType 3.0.11
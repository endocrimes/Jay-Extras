import PackageDescription

let package = Package(
    name: "Jay-Extras",
    dependencies: [
    	.Package(url: "https://github.com/czechboy0/Jay.git", versions: Version(0,16,0)..<Version(1,0,0))
    ]
)

import PackageDescription

let package = Package(
    name: "Jay-Extras",
    dependencies: [
    	.Package(url: "https://github.com/czechboy0/Jay.git", majorVersion: 0, minor: 17)
    ]
)

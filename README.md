# orion360-sdk-basic-examples-ios
Repository for Orion360 SDK Basic for iOS with Swift, Examples

## License

Orion360 SDK is a commercial product and requires a license file to work. An evaluation license is provided with the sample app. You can get a watermarked evaluation license file also for your own bundle identifier by creating an account on [https://store.make360app.com](https://store.make360app.com/), starting a new SDK project, providing your own package name, and selecting FREE Trial.

Modifying example applications is allowed for practicing and testing the SDK, but publishing or redistributing example applications either in binary or source code format is forbidden.

Customers can freely use code from example applications in their own licensed applications.

> Before using the SDK, read  [Licence Agreement](https://github.com/FinweLtd/Orion_SDK_iOS_SampleApps/blob/master/Finwe_Orion360_SDK_Basic_Evaluation_Kit_License_en_US-20161212_1500.pdf)

## Documentation

User manual is the best starting point for new users.

Various example applications demonstrate the most common use cases in practice.

Full API documentation is also included in the release package.

## How to try example applications

1.  The Orion360 SDK for iOS requires the standard development environment for iOS apps (Xcode Developer Tool).
2.  The easiest way to take the SDK to use is to utilize the CocoaPods framework. CocoaPods installation guide and step by step procedure to add OrionSDK Basic to your project is described on:  [https://github.com/FinweLtd/orion360-sdk-basic-hello-ios](https://github.com/FinweLtd/orion360-sdk-basic-hello-ios).
3.  Open terminal, type “cd” then drag and drop one of the example project folder and press ** Return key ↵**.   
    ```
	cd <drag and drop your project folder>
	 ```
 
4.  Create Podfile using **"pod init"** command. 
    ```
	pod init
	 ```
    
5. Open created Podfile in edit mode.
    
    ```
    open -e Podfile 
     ```
    
6.  Edit the Podfile content as follows to Install Orion360 SDK Basic for iOS:

	```
	source 'https://github.com/FinweLtd/PodSpecs_Prd.git'  
	source 'https://github.com/CocoaPods/Specs.git'  
	  
	target 'YourProjectName' do  
	\# Comment the next line if you're not using Swift and don't want to use dynamic frameworks  
	use_frameworks!  
	  
	\# Pods for YourProjectName  
	pod 'OrionSDK'  
	end
	```
7. After saving the updates you made on Podfile, go to terminal and type **"pod install"** and press Return key (↵) .

	 ```
	pod install
	 ```
	 
8. Open xcworkspace file that was created while the pods were installed (open Finder application and double click the file).
Note: For the above examples, bridging header and license file per example project is created and included. 
9.  Build the example application.
10.  Run on a test device.

## Feedback & Support

Feedback & support should be directed via email to  [support@finwe.fi](mailto:support@finwe.fi). 




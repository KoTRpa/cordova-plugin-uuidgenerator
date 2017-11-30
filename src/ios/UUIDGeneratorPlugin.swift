
@objc(UUIDGeneratorPlugin) class UUIDGeneratorPlugin:CDVPlugin {
	func generate(_ command: CDVInvokedUrlCommand) {
        let uuid = UUID().uuidString
        let result = CDVPluginResult(status:CDVCommandStatus_OK, messageAs:uuid)
        commandDelegate.send(result,callbackId:command.callbackId)
	}
}

// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
// import { privateEncrypt } from 'crypto';
import * as vscode from 'vscode';

// Set file associations
vscode.workspace.getConfiguration('files').update('associations', { "*.fuse": "lua" }, vscode.ConfigurationTarget.Workspace); 

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {

	setExternalLibrary(true);


	// The command has been defined in the package.json file
	// Now provide the implementation of the command with registerCommand
	// The commandId parameter must match the command field in package.json
	let disposable = vscode.commands.registerCommand('fuse-snippets.helloWorld', () => {
		// The code you place here will be executed every time your command is executed
		console.log("Hello world");
		// Display a message box to the user
		vscode.window.showInformationMessage('Hello World from fuse-snippets!');
	});

	context.subscriptions.push(disposable);

}

// this method is called when your extension is deactivated
export function deactivate() {
	setExternalLibrary(false);
}

function setExternalLibrary(enable: boolean) {
	// console.log("sumneko.lua");
	let name = "sumneko.lua" // your extension id
	// get emmylua path
	let extension = vscode.extensions.getExtension(name)
	let path = extension?.extensionPath+"\\FuseEmmyLua"

	// get configuration
	let luaConfig = vscode.workspace.getConfiguration("Lua")
	
	let config: string[] | undefined = luaConfig.get("workspace.library")
	if (config) {
		
		// remove any older release versions of our extension path e.g. "publisher.name-0.0.1"
		for (let i = config.length-1; i >= 0; i--) {
			const el = config[i]
			if (el.indexOf(name) > -1 && el.indexOf(path) == -1) {
				config.splice(i, 1)
			}
		}

		// add or remove path
		const index = config.indexOf(path)
		if (enable) {
			if (index == -1) {
				config.push(path)
			}
		}
		else {
			if (index > -1) {
				config.splice(index, 1)
			}
		}
		luaConfig.update("workspace.library", config, true)
	}
}
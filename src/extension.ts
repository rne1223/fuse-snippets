import * as vscode from 'vscode';

// Set file associations
vscode.workspace.getConfiguration('files').update('associations', { "*.fuse": "lua" }, vscode.ConfigurationTarget.Workspace); 

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {

    setExternalLibrary(true);
    console.log("Fuse-snippets activate");

    const disposable = vscode.commands.registerCommand('fuse-snippets.CreateVars', () => {
        // The code you place here will be executed every time your command is executed
        const editor = vscode.window.activeTextEditor;

        if(!editor) { 
            vscode.window.showErrorMessage('Please select a Fuse file.');
            console.log("No active editor!");
            return; 
        }	
        
        const lines = editor.document.getText().split('\n');

        // Get non-commented variables from text
        let arrVars = [];
        for (const line in lines) {

            let currLine = lines[line]

            if (!currLine.includes('--') && currLine.includes("self:")) {
                arrVars.push(currLine.match("In(.*)="));
            }
        }


        // Find line for function Process()
        const pos = lines.findIndex(el => el.match("function.*Process.*()")); 

        const processFunc = editor.document.lineAt(pos);
        // Add some space 
        editor.edit(editBuilder => {
            editBuilder.insert(new vscode.Position(pos,processFunc.text.length), "\n\n");
        })

        arrVars.forEach(el => {

            if(el) {
                const lside = el[1].toLocaleLowerCase();
                const rside = el[0].split(" ");
                const insert = new vscode.SnippetString(`\tlocal \$\{1:${lside}\} = ${rside[0]}:GetValue(req)\${2}\n`);
                editor.insertSnippet(insert,new vscode.Position(pos+1,0));
            }
        });
        
    });

    // const provider2 = vscode.languages.registerCompletionItemProvider(
	// 	'lua',
	// 	{
	// 		provideCompletionItems(document: vscode.TextDocument, position: vscode.Position) {

    //             console.log("{ Completion");
                
	// 			// get all text until the `position` and check if it reads `console.`
	// 			// and if so then complete if `log`, `warn`, and `error`
	// 			const linePrefix = document.lineAt(position).text.substr(0, position.character);

	// 			if (!linePrefix.endsWith('INPID_InputControl =')) {
	// 				return undefined;
	// 			}

	// 			return [
	// 				new vscode.CompletionItem(' "ButtonControl"', vscode.CompletionItemKind.EnumMember),
	// 				new vscode.CompletionItem(' "CheckboxControl"', vscode.CompletionItemKind.EnumMember),
	// 				new vscode.CompletionItem(' "ColorControl"', vscode.CompletionItemKind.EnumMember),
	// 				new vscode.CompletionItem(' "ComboControl"', vscode.CompletionItemKind.EnumMember),
	// 				new vscode.CompletionItem(' "ComboIDControl"', vscode.CompletionItemKind.EnumMember)
	// 				// new vscode.CompletionItem('warn', vscode.CompletionItemKind.Method),
	// 				// new vscode.CompletionItem('error', vscode.CompletionItemKind.Method),
	// 			];
	// 		}
	// 	},
	// 	'=' // triggered whenever a '{' is being typed
	// );


	// context.subscriptions.push(disposable, provider2);
	context.subscriptions.push(disposable);
}

// this method is called when your extension is deactivated
export function deactivate() {
    setExternalLibrary(false);
}

function setExternalLibrary(enable: boolean) {

    let name = "rne1223.fuse-snippets" // your extension id
    // get emmylua path
    let extension = vscode.extensions.getExtension(name)
    let path = extension?.extensionPath+"\\MyFuseEmmyLua"

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
--///////////
-- Fusion Api taken from WSL by bryanfordney
-- https://www.steakunderwater.com/wesuckless/viewtopic.php?f=17&t=3099
---

---@class Fusion:Object @define Fusion.
---@field FileLogging any
---@field HotkeyManager any
---@field CacheManager any
---@field QueueManager any
---@field RenderManager any
---@field Build any
---@field Version any
---@field CurrentComp any
local fusion = {}
---@return any @define This function does not return a value.
function fusion:ClearFileLog()end
---@param show any @define True if you want to show the window, false if you want to hide.
---@return any @define This function does not return a value.
function fusion:ShowWindow(show)end
---@param path string @define A standard fully-qualified path to a file or directory
---@return any @define A path with the Fusion path map handles re-inserted wherever possible.
function fusion:ReverseMapPath(path)end
---@param path string @define A file or directory path that can contain Fusion's path maps.
---@return any @define A file or directory path with all path maps expanded into their literal path equivalents.
function fusion:MapPath(path)end
--- None
---@return any @define This function returns a table containing the Global Path mappings, as seen in the Global Path Preferences within Fusion.
function fusion:GetGlobalPathMap()end
---@return any @define A MailMessage object handle that can be manipulated with other mail related functions.
function fusion:CreateMail()end
--- Specifies the full path and name of the file to open
---@param filename string @define Specifies the full path and name of the file to open
---@param mode constant @define Specifies the mode(s) of file access required, from a combination of the following constants:
---@return any @define An eyeonScript File object (see the IOClass documentation), or nil if the open fails.
function fusion:OpenFile(filename,mode)end
---@param name string
---@return any @define When called without an argument, GetData returns a table listing the index names for all current custom data. If no custom data has been assigned to the object, then the function returns an empty table.
function fusion:GetData(name)end
--- A string value used as the index, or name, of the custom data.
---@param name string @define A string value used as the index, or name, of the custom data.
---@param value any @define The custom data to be assigned to the index specified in the first argument.
---@return any @define No return value.
function fusion:SetData(name,value)end
--- The tools argument should be a table containing a tool object for each tool which will be saved to the clipboard.
---@param tools table @define The tools argument should be a table containing a tool object for each tool which will be saved to the clipboard.
---@param information string @define The string argument can be any string value.
---@return any @define A boolean value indicating success or failure.
function fusion:SetClipboard(tools,information)end
--- none
---@return any @define A string or table of the current contents of the clipboard, or nil if empty.
function fusion:GetClipboard()end
---@return any @define A table containing a summary of the Name, ID, ClassType, and OpIconString of every item in the registry. Useful for returning a lightweight version of the information presented by Fusion:GetRegList.
function fusion:GetRegSummary()end
---@return any @define A table of registry IDs.
function fusion:GetRegList()end
---@param envname string @define the name of the process environment variable to retrieve.
---@return any @define The value of the environment variable specified as an argument, or nil if that variable does not exist.
function fusion:GetEnv(envname)end
--- none
---@return any @define none
function fusion:SavePrefs()end
---@param prefs_table table @define A table where the index for each record is the name of the preference to be set, and the value of the record is the value that the preference will be set to.
---@param prefname string @define A string naming the preference setting to be changed. Use dots to indicate subtables.
---@return any @define This function does not return a value.
function fusion:SetPrefs(prefs_table,prefname)end
---@return any @define A table of preferences, or a specific preference value.
function fusion:GetPrefs()end
---@return any @define A registry object, or nil if no match is found.
function fusion:FindReg()end
---@param ID number @define An integer specifying the unique id of the registry entry that this function will return attributes for.
---@return any @define A table of registry ids.
function fusion:GetRegAttrs(ID)end
--- none
---@return any @define A table containing a list of available preview objects.
function fusion:GetPreviewList()end
---@return any @define This function returns a table of composition object handles.
function fusion:GetCompList()end
--- The name of the specific page (or panel) of the preferences to show. The name should be chosen from one of the following :
---@return any @define none
function fusion:ShowPrefs()end
---@param comp_path string @define A string describing the full path to the composition which is to be queued.
---@param render_start number @define A number which describes the first frame in the render range.
---@param render_end number @define A number which describes the last frame in the render range.
---@param slave_group string @define Specifies the slave group to use for this job.
---@param args_table table @define Specifies the slave group to use for this job.  The following keys are valid:
---@return any @define This function returns true if it succeeds in adding the composition to the Queue, and false if it fails.
function fusion:QueueComp(comp_path,render_start,render_end,slave_group,args_table)end
---@return any @define Composition Object.
function fusion:LoadComp()end
---@param locked boolean @define A true or false value to determine if the composition opens as locked, or unlocked. Defaults to false.
---@param close boolean @define A true or false value to determine if the composition will close automatically when the script exits. Defaults to false.
---@param hidden boolean @define If this value is true, the comp will be created invisibly, and no UI will be available  to the user. Defaults to false.
---@return any @define Composition Object.
function fusion:NewComp(locked,close,hidden)end
---@return any @define This function does not return a value.
function fusion:Quit()end
---@return any @define This function does not return a value
function fusion:GetCurrentComp()end
---@return any @define This function does not return a value
function fusion:ToggleBins()end
---@return any @define This function does not return a value.
function fusion:ToggleRenderManager()end
---@return any @define Two numeric values representing the handle to the main windows for the Fusion application.
function fusion:GetMainWindow()end
---@return any @define The current CPU load as a percentage between 0 and 100
function fusion:GetCPULoad()end
--- none
---@return any @define Returns a table containing information about the current application's name, executable, version, and build number.
function fusion:GetAppInfo()end
---@return any @define none
function fusion:Execute()end
---@return any @define none
function fusion:RunScript()end
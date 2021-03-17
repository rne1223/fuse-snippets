
--- FuRegisterClass Attributes
---
---A string value which sets the category a tool will appear in.
---```lua
---REGS_Category = "Fuses\\eyeon\\Examples",
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
REGS_Category = "" 
---
---An optional 'friendly' name for the tool, which allows spaces.
---```lua
---REGS_Name = "Depth Transform GPU",
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REGS_Name = ""
---
---A string value that defines the abbrieviation of the tools name. This is used in the toolbar menu and by the bins.
---```lua
---REGS_OpIconString = "Nul",
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REGS_OpIconString = ""
---
---A short description of the tool, used in the various parts of the Fusion interface
---```lua
---REGS_OpDescription = "Null Fuse",
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REGS_OpDescription = ""
---
--A boolean value (true/false) that determines if the tool provides an input for masks on the flow. Defaults to false.
---```lua
---REG_OpNoMask = false,
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_OpNoMask = false
---
---A boolean value that determines if the tool works with proxies. Set this to true if the tool doesn't work with proxies. Default is false
---```lua
---REG_NoAutoProxy = false, works with proxies
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_NoAutoProxy = false
---
---A boolean value (true/false) that determines if the tool provides the common Blend slider. Defaults to false.
---```lua
---REG_NoBlendCtrls = false,
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_NoBlendCtrls = false
---
---A boolean value (true/false) that determines if the tool provides the common Matte Control options. Set this to true to prevent the mask controls from appearing. Defaults to false.
---```lua
---REG_NoObjMatCtrls = true, 
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_NoObjMatCtrls = false
---
---A boolean value (true/false) that determines if the tool provides the common Motion Blur controls. Set this to true to prevent the Motion Blur controls from appearing. Defaults to false.
---```lua
---REG_NoMotionBlurCtrls = true,
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_NoMotionBlurCtrls = false 
---
---A boolean value (true/false) that determines if the tool provides the controls for Global In and Out. Set to false to prevent these controls from appearing.
---**Applies to Creator tools (ClassID = CT_SourceTool) only**.
---```lua
---REG_Source_GlobalCtrls = true,
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_Source_GlobalCtrls = false
---
--A boolean value (true/false) that determines if the tool provides the standard controls for image width and height. Set to false to prevent these controls from appearing. **Applies to Creator tools (ClassID = CT_SourceTool) only.**
---```lua
--- REG_Source_SizeCtrls = true,
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_Source_SizeCtrls = false
---
---A boolean value (true/false) that determines if the tool provides the standard controls for image aspect. Set to false to prevent these controls from appearing. **Applies to Creator tools (ClassID = CT_SourceTool) only.**
---```lua
--- REG_Source_AspectCtrls = true,
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_Source_AspectCtrls = false
---
---A boolean value (true/false) that determines if the tool provides the standard controls for setting the images color depth. Set to false to prevent these controls from appearing. **Applies to Creator tools (ClassID = CT_SourceTool) only.**
---```lua
---REG_Source_DepthCtrls = true,
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_Source_DepthCtrls = false
---
---A boolean value (true/false) that allows you to use if Time within the tool. The default is false.
---```lua
--REG_TimeVariant = false,
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_TimeVariant = false
---
---A boolean value (true/false) that determines if the tool displays the Edit button shown at the top of most Fuses. Defaults to false.
---```lua
--REG_Fuse_NoEdit = true,
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_Fuse_NoEdit = false
---
---A boolean value (true/false) that determines if the tool displays the Reload button shown at the top of most Fuses. Defaults to false.
---```lua
--REG_Fuse_NoReload = true,
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_Fuse_NoReload = false
---
---A Fusepic table can be created by saving a 160x120 image as a "Fuse Pic" file (*.fusepic in Saver). This will create a text file containing the Fusepic table. Paste the contents of the text file into the top of the Fuse, before the FuRegisterClass() function.
---```lua
---REG_Fuse_TilePic= true,
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
---
REG_Fuse_TilePic = false
---
---A boolean value (true/false) that determines if the tool uses the cache. It can be of use when testing or debugging the tool. Defaults to false.
---```lua
---REG_Fuse_TilePic= false,
---```
---[No Details at the moment]()
---
REG_Unpredictable = false
---
---A string that can be use to provide your company name
---```lua
---REGS_Company = "VFXPedia" 
---```
---[No Details at the moment]()
---
REGS_Company = false


---
--- The ID of the type of tool window control used by the input. 
--- Valid values for INPID_InputControl are: 
--- -**ButtonControl**
--- -**CheckboxControl** 
--- -**ColorControl** 
--- -**ComboControl** 
--- -**ComboIDControl** 
--- -**FileControl** 
--- -**FontFileControl** 
--- -**GradientControl** 
--- -**LabelControl** 
--- -**MultiButtonControl** 
--- -**MultiButtonIDControl** 
--- -**OffsetControl** 
--- -**RangeControl** 
--- -**ScrewControl** 
--- -**SliderControl** 
--- -**TextEditControl**
---```lua
--INPID_InputControl = "ButtonControl",
---```
---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
---
INPID_InputControl = ""


---@class Object @define Object
local Object = {}
function Object:Use() end
function Object:Recycle() end
function Object:GetComp() end
function Object:SetAttrs() end
function Object:GetAttr() end

---@class Input
local Input = {}
function Input:GetValue() end
function Input:GetSource() end
function Input:SetSource() end
function Input:GetAttr() end
function Input:SetAttr() end

---@class Output 
local Output = {}
function Output:Set() end

---@class ScriptOperator:Object @ScriptOperator extends Object
---
---The Status member is used to store a string value indicating the current status of the Fuse tool. 
---@field public Status string
---
---The ProgressScale counter is used to assist in updating the progress bar for a tool in situations 
---where the processing for the tool involves several passes, or stages.
---@field public ProgressScale integer
---
---The ProgressCount counter is used to assist in updating the progress bar for a tool in situations where 
---the processing for the tool involves several passes, or stages.
---@field public ProgressCount integer
---
---Contains the tool's name. Useful for printing error messages to the console.
---@field public Name string 
local scriptOperator = {}

---
---The AddInput function is typically found within the Create event function of a Fuse. It is used to add inputs (controls) to the tool. An input can be one of several control types, or an image type input which appears on the tool tile in the flow.
---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexb419.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/AddInput)
---
---@param labelname string @**required** This string value specifies the label displayed next to the input control in the inspector panel.
---@param scriptname string @**required** This string value specifies the name of the input control for purposes of saving the value and for scripting it.
---@param attributes table @**required** This argument accepts a table of attributes used to define the properties of the input. [Info](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
---@return Input 
function scriptOperator:AddInput(labelname,scriptname,attributes) end

---
---The AddOutput function is typically found within the Create section of a Fuse. It is used to add outputs to the tool. A tool generally only has one output, which is connected to the next tool in the flow's processing tree. It is possible for a tool to have multiple outputs, but rarely useful.
---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexfbdf.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/AddOutput)
---
---@param labelname string @**required** This string value specifies the label displayed next to the input control in the inspector panel.
---@param scriptname string @**required** This string value specifies the name of the input control for purposes of saving the value and for scripting it.
---@param attributes table @**required** This argument accepts a table of attributes used to define the properties of the input. [Info](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
---@return Output 
function scriptOperator:AddOutput(labelname,scriptname,attributes) end

---
---The BeginControlNest function is found in the Create portion of a Fuse tool. It is used to create a control nest enclosing one or more controls within the tool into a collapsible section. All controls specified after the BeginControlNest function is called will be included in the nested section, until the EndControlNest function is called to close the nest.
---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexfab1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/BeginControlNest)
---
---@param controlName string 
---@param scriptName string
---@param is_expanded boolean 
---@param taglist table 
---@return Object 
function scriptOperator:BeginControlNest(controlName, scriptName, is_expanded, taglist) end
---
---The EndControlNest function is found in the Create portion of a Fuse tool. It is used to close a control nest created using the BeginControlNest function.
---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index0129.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/EndControlNest)
---
function scriptOperator:EndControlNest() end

---
---The AddControlPage function is found in the Create portion of the Fuse tool. It is used to organize tool controls into separate tabs. If this function is not used then all of the controls described in the Create() function will appear in the Control Window under a single default tab titled "Controls". All controls defined under the AddControlPage function will appear in that control page until the AddControlPage function is called again.
---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexbabc-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/AddControlPage)
---
---@param tabname string @required
function scriptOperator:AddControlPage(tabname) end


---@alias classType 
---|>'CT_Tool' # 
---| 'CT_ParticleTool' # 
---| 'CT_SourceTool' # 
---| 'CT_Modifier'  # 
---| 'CT_ViewLUTPlugin' # 

---
---The AddInput function is typically found within the Create event function of a Fuse. It is used to add inputs (controls) to the tool. An input can be one of several control types, or an image type input which appears on the tool tile in the flow.
---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexcab7.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass)
---
---@param name string
---@param class classType 
---@param attributes table 
function FuRegisterClass(name, class, attributes)end

self = {} ---@type ScriptOperator

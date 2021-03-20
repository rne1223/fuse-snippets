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



-- Input attributes 
-- https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes
-- INPID_InputControl string The ID of the type of tool window control used by the input.

-- INPID_PreviewControl string The ID of the type of display view control used by the input.

-- INPID_AddModifier string A tool of this type ID should be automatically created and connected to this input, at creation time.

-- INPID_DefaultID string Inputs of datatype "FuID" should use this ID as their default value.

-- INPS_DefaultText string Inputs of datatype "Text" should use this string as their default.

-- INPS_StatusText string The text shown on the status bar on mouse hover.

-- INP_External boolean Whether this input can be animated or connected to a tool or modifier.

-- INP_Active boolean This input's value is used in rendering.

-- INP_Required boolean The tool's result requires a valid Parameter from this input.

-- INP_Connected boolean The input is connected to another tool's Output.

-- INP_Priority integer Used to determine the order in which the tool's inputs are fetched.

-- INP_Disabled boolean The input will not accept new values.

-- INP_DoNotifyChanged boolean The tool is notified of changes to the value of the input.

-- INP_Integer boolean The input rounds all numbers to the nearest integer.

-- INP_NumSlots integer The number of values from different times that this input can fetch at once.

-- INP_ForceNotify boolean The tool is notified whenever a new parameter arrives, even if it is the same value.

-- INP_InitialNotify boolean The tool is notified at creation time of the initial value of the input.

-- INP_Passive boolean The value of this input will not affect the rendered result, and does not create an Undo event if changed.

-- INP_InteractivePassive boolean The value of this input will not affect the rendered result, but it can be Undone if changed.

-- INP_AcceptTransform boolean This input will also accept TransformMatrix parameters.

-- INP_AcceptsMasks boolean This input will also accept Mask images.

-- INP_AcceptsGLImages boolean This input will also accept Images with attached OpenGL textures.

-- INP_MinAllowed number Minimum allowed value - any numbers lower than this value are clipped.

-- INP_MaxAllowed number Maximum allowed value - any numbers higher than this value are clipped.

-- INP_MinScale number The lowest value that the input's control will normally display.

-- INP_MaxScale number The highest value that the input's control will normally display.

-- INP_Default string Inputs of datatype "Number" should default to this value.

-- INP_DefaultX string Inputs of datatype "Point" should use this as their default X value.

-- INP_DefaultY string Inputs of datatype "Point" should use this as their default Y value.

-- Link attributes 
--https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd1de.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Link/Attributes
-- LINKS_Name string The full name of this link.

-- LINKID_ID string The script ID of this link.

-- LINKID_DataType string The type of Parameter (e.g. Number, Point, Text, Image) this link accepts.

-- LINKID_AddAfterID string Controls for this input should appear after the input with the specified ID.

-- LINK_Main integer Values of 1 or higher make this input/output visible on the flow view. 1=Background, 2=Foreground, etc.

-- Image Attributes https://www.steakunderwater.com/VFXPedia/96.0.243.189/index9205.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Attributes
--[[ 
    IMG_Like	Set the IMG_Like attribute to an already existing image to copy that images attributes to the new image.
    IMG_CopyChannels	Set this to false to create an Image with different channels than the IMG_Like Image. Use IMG_Channel to then specify the channels the new Image should contain. If no channels are specified, a 4 channel (RGBA) Image will be created.
    IMG_Width	Set the IMG_Width attribute to an integer value representing the actual width of the image in pixels.
    IMG_Height	Set the IMG_Height attribute to an integer value representing the actual height of the image in pixels.
    IMG_XScale	Set the IMG_XScale to an numeric value representing the X aspect of the image. For an NTSC D1 format image the value would be 0.9, for example.
    IMG_YScale	Set the IMG_YScale to an numeric value representing the Y aspect of the image. For an NTSC D1 format image the value would be 1.0, for example.
    IMAT_OriginalWidth	Set the IMAT_OriginalWidth to the original width of the image in pixels. When a composition is in Proxy mode, it is possible that IMG_Width and IMG_Height will differ from the IMAT_OriginalWidth and IMAT_OriginalHeight values.
    IMAT_OriginalHeight	Set the IMAT_OriginalHeight to the original height of the image in pixels. When a composition is in Proxy mode, it is possible that IMG_Width and IMG_Height will differ from the IMAT_OriginalWidth and IMAT_OriginalHeight values.
    IMG_Depth	Set the IMG_Depth attribute to match the image depth desired for the image. This will be an integer value, using the following table :
    1 - Single channel image, 8 integer bits per channel.
    2 - Single channel image, 16 integer bits per channel.
    3 - Single channel image, 16 float bits per channel.
    4 - Single channel image, 32 float bits per channel.
    5 - Four channel image, 8 integer bits per channel.
    6 - Four channel image, 16 integer bits per channel.
    7 - Four channel image, 16 float bits per channel.
    8 - Four channel image, 32 float bits per channel.
    IMG_Quality	The IMG_Quality attribute is a boolean value which specifies whether the image is High Quality (true) or Interactive Quality (false). The IMG_Quality will be true duringa final render, or if the HiQ button in the Time Ruler of the composition is selected. It is usually set by calling the Request:IsQuick function.
    IMG_ProxyScale	The IMG_ProxyScale is an integer value representing the current Proxy scale of the image. For example if the current proxy is 2/1, then this should be set to 2.
    IMG_MotionBlurQuality	The IMG_MotionBlurQuality attribute is a boolean value which specifies whether Motion Blur is currently enabled for this image. It is usually set by calling the Request:IsNoMotionBlur function.
    IMG_Channel	Specify the channels which should be included in the image using the IMG_Channel table values. This is different from all the ones table values above. It should be specified as shown in the following example,
    local imgattrs = {
        IMG_Document = self.Comp,
        { IMG_Channel = "Red", },
        { IMG_Channel = "Green", },
        { IMG_Channel = "Blue", },
        { IMG_Channel = "Alpha", },
        IMG_Width = 720,
        IMG_Height = 486,
        IMG_XScale = 0.9,
        IMG_YScale = 1.0,
        IMG_Quality = not req:IsQuick(),
        IMG_MotionBlurQuality = not req:IsNoMotionBlur(),
        }
    Valid channel names include :

    "Red"
    "Green"
    "Blue"
    "Alpha"
    "BgRed"
    "BgGreen"
    "BgBlue"
    "BgAlpha"
    "Z"
    "U"
    "V"
    "Coverage"
    "Object"
    "Material"
    "NormalX"
    "NormalY"
    "NormalZ"
    "VectorX"
    "VectorY" 
--]]
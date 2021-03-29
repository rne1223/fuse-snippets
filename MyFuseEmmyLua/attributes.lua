--//////////////////////////////
-- FuRegisterClass() Options
--//////////////////////////////

    ---@class FuRegOptions
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REGS_Category string @A string value which sets the category a tool will appear in.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REGS_Name string @An optional 'friendly' name for the tool, which allows spaces.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REGS_OpIconString string @A string value that defines the abbrieviation of the tools name. This is used in the toolbar menu and by the bins.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REGS_OpDescription string @A short description of the tool, used in the various parts of the Fusion interface\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_OpNoMask boolean @A bool value (true/false) that determines if the tool provides an input for masks on the flow. Defaults to false.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_NoAutoProxy boolean @A bool value that determines if the tool works with proxies. Set this to true if the tool doesn't work with proxies. Default is false
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_NoBlendCtrls boolean @A bool value (true/false) that determines if the tool provides the common Blend slider. Defaults to false.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_NoObjMatCtrls boolean @A bool value (true/false) that determines if the tool provides the common Matte Control options. Set this to true to prevent the mask controls from appearing. Defaults to false.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_NoMotionBlurCtrls boolean @A bool value (true/false) that determines if the tool provides the common Motion Blur controls. Set this to true to prevent the Motion Blur controls from appearing. Defaults to false.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_Source_GlobalCtrls boolean @A bool value (true/false) that determines if the tool provides the controls for Global In and Out. Set to false to prevent these controls from appearing.Applies to Creator tools (ClassID = CT_SourceTool) only.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_Source_SizeCtrls boolean @A bool value (true/false) that determines if the tool provides the standard controls for image width and height. Set to false to prevent these controls from appearing. Applies to Creator tools (ClassID = CT_SourceTool) only.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_Source_AspectCtrls boolean @A bool value (true/false) that determines if the tool provides the standard controls for image aspect. Set to false to prevent these controls from appearing. Applies to Creator tools (ClassID = CT_SourceTool) only.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_Source_DepthCtrls boolean @A bool that determines if the tool provides the standard controls for setting the images color depth. Set to false to prevent these controls from appearing. Applies to Creator tools (ClassID = CT_SourceTool) only.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_TimeVariant boolean @A bool value (true/false) that allows you to use if Time within the tool. The default is false.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_Fuse_NoEdit boolean @A bool value (true/false) that determines if the tool displays the Edit button shown at the top of most Fuses. Defaults to false.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_Fuse_NoReload boolean @A bool value (true/false) that determines if the tool displays the Reload button shown at the top of most Fuses. Defaults to false.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_Fuse_TilePic table @A Fusepic table can be created by saving a 160x120 image as a "Fuse Pic" file (.fusepic in Saver). This will create a text file containing the Fusepic table. Paste the contents of the text file into the top of the Fuse, before the FuRegisterClass() function.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REG_Unpredictable boolean @A bool value (true/false) that determines if the tool uses the cache. It can be of use when testing or debugging the tool. Defaults to false.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index157d.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass/Attributes)
    ---@field REGS_Company string @A string that can be use to provide your company name

--//////////////////////////////
-- End FuRegisterClass Attributes
--//////////////////////////////

--//////////////////////////////
-- INPUT Attributes
--//////////////////////////////

    ---@class InputOptions
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INPID_InputControl string @The ID of the type of tool window control used by the input.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INPID_PreviewControl string @The ID of the type of display view control used by the input.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INPID_AddModifier string @A tool of this type ID should be automatically created and connected to this input, at creation time.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INPID_DefaultID string @Inputs of datatype "FuID" should use this ID as their default value.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INPS_DefaultText string @Inputs of datatype "Text" should use this string as their default.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INPS_StatusText string @The text shown on the status bar on mouse hover.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_External boolean @Whether this input can be animated or connected to a tool or modifier.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_Active boolean @This input's value is used in rendering.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_Required boolean @The tool's result requires a valid Parameter from this input.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_Connected boolean @The input is connected to another tool's Output.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_Priority integer @Used to determine the order in which the tool's inputs are fetched.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_Disabled boolean @The input will not accept new values.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_DoNotifyChanged boolean @The tool is notified of changes to the value of the input.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_Integer boolean @The input rounds all numbers to the nearest integer.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_NumSlots integer @The number of values from different times that this input can fetch at once.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_ForceNotify boolean @The tool is notified whenever a new parameter arrives, even if it is the same value.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_InitialNotify boolean @The tool is notified at creation time of the initial value of the input.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_Passive boolean @The value of this input will not affect the rendered result, and does not create an Undo event if changed.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_InteractivePassive boolean @The value of this input will not affect the rendered result, but it can be Undone if changed.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_AcceptTransform boolean @This input will also accept TransformMatrix parameters.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_AcceptsMasks boolean @This input will also accept Mask images.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_AcceptsGLImages boolean @This input will also accept Images with attached OpenGL textures.
    ---Minimum allowed value - any numbers lower than this value are clipped.
    ---@field INP_MinAllowed number@More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_MaxAllowed number @Maximum allowed value - any numbers higher than this value are clipped.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_MinScale number @The lowest value that the input's control will normally display.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_MaxScale number @The highest value that the input's control will normally display.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_Default string @Inputs of datatype "Number" should default to this value.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_DefaultX string @Inputs of datatype "Point" should use this as their default X value.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
    ---@field INP_DefaultY number @Inputs of datatype "Point" should use this as their default Y value. \

--//////////////////////////////
-- End INPUT Attributes
--//////////////////////////////

--//////////////////////////
--ButtonControl Attributes
--//////////////////////////

    ---This attribute determines the alignment of the button. Valid values are \
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexcfbd.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/ButtonControl#Attributes)
    ---@type alignment
    BTNC_Align = "Center"


--//////////////////////////////
-- End ButtonControl Attributes
--/////////////////////////////

--///////////////////
-- LINK attributes 
--///////////////////

    ---The full name of this link.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd1de.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Link/Attributes)
    ---@type string 
    LINKS_Name =""

    ---The script ID of this link.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd1de.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Link/Attributes)
    ---@type string 
    LINKID_ID =""


    ---The type of Parameter (e.g. Number, Point, Text, Image) this link accepts.\
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd1de.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Link/Attributes)
    ---@type linkDataType
    LINKID_DataType = ""

    ---Controls for this input should appear after the input with the specified ID.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd1de.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Link/Attributes)
    ---@type string 
    LINKID_AddAfterID =""

    ---Values of 1 or higher make this input/output visible on the flow view. 1=Background, 2=Foreground, etc.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd1de.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Link/Attributes)
    ---@type integer 
    LINK_Main =""


    --[[LINKS_Name and LINKID_ID are the first two string parameters of self:AddInput(...). This differs from the eyeonscript API, where the input's name and script ID can be retrieved via INPS_Name and INPS_ID respectively.
    LINK_ForceSave: this attribute will cause an input to save its value even if it's set to its default. This is most useful for image size sliders that have a dynamic default based on the comp's defaults. They should, of course, keep their values when copied to a comp with different format.
    LINK_DoNotSave: the input won't get saved to the comp file which means it will receive its default value next time you open the composition. It's useful for hidden inputs that your Fuse might use to store some internal values or for sliders that are only supposed to display calculation results instead of receiving user input.
    --]]

--///////////////////
-- End LINK attributes 
--///////////////////

--///////////////////
-- Image Attributes 
--/////////////////// 

    -- Image Attributes https://www.steakunderwater.com/VFXPedia/96.0.243.189/index9205.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Attributes

    --[[   IMG_Like	Set the IMG_Like attribute to an already existing image to copy that images attributes to the new image.
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
        IMG_Quality	The IMG_Quality attribute is a bool value which specifies whether the image is High Quality (true) or Interactive Quality (false). The IMG_Quality will be true duringa final render, or if the HiQ button in the Time Ruler of the composition is selected. It is usually set by calling the Request:IsQuick function.
        IMG_ProxyScale	The IMG_ProxyScale is an integer value representing the current Proxy scale of the image. For example if the current proxy is 2/1, then this should be set to 2.
        IMG_MotionBlurQuality	The IMG_MotionBlurQuality attribute is a bool value which specifies whether Motion Blur is currently enabled for this image. It is usually set by calling the Request:IsNoMotionBlur function.
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

--///////////////////
-- End Image Attributes 
--///////////////////


---///////////////////////////
--- Blur() Options 
---///////////////////////////

    ---@class BlurSettings
    --- The blur type is a string which represents the type of blur applied to the image.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_Type  "Box"|"Soften"|"Bartlett"|"Sharpen"|"Gaussian"|"Hilight"|"Blend"|"Solarise"
    --- Blur will affect the Red channel
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_Red   "true" | "false"
    --- Blur will affect the Green channel
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_Green "true" | "false" 
    --- Blur will affect the Blue channel
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_Blue  "true" | "false"     
    --- Blur will affect the Alpha channel
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_Alpha "true" | "false" 
    ---Specify the strength of the blur along the X axis. A value of 1 represents a blur equal to the width of the image.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_XSize number
    ---Specify the strength of the blur along the Y axis. A value of 1 represents a blur equal to the height of the image.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_YSize number
    ---A value between 0 and 1 which indicates how much of the original input image to blend into the result of the Blur.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_Blend number 
    ---Attribute used when applying Glow to the blurred image. To match what the Glow tool does pass in "1.0 - glow" as the value for that tag.
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_Normalize number | "1.0 - glow"
    ---The blur scale tags are multipliers for the results of the glow applied with BLUR_Normalize
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_RedScale number
    ---The blur scale tags are multipliers for the results of the glow applied with BLUR_Normalize
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_GreenScale number
    ---The blur scale tags are multipliers for the results of the glow applied with BLUR_Normalize
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_BlueScale number
    ---The blur scale tags are multipliers for the results of the glow applied with BLUR_Normalize
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur#Options_Table)
    ---@field BLUR_AlphaScale number

---///////////////////////////
--- End Blur() Options 
---///////////////////////////

---///////////////////////////
--- ChannelOpOf () Options 
---///////////////////////////

    ---@class ChannelOpOfOptions
    --- Red Channel
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index0d66.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/ChannelOpOf#Options_Table)
    ---@field R "Fg.channel" | "Bg.channel"
    --- Green Channel
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index0d66.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/ChannelOpOf#Options_Table)
    ---@field G "Fg.channel" | "Bg.channel"
    --- Blue Channel
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index0d66.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/ChannelOpOf#Options_Table)
    ---@field B "Fg.channel" | "Bg.channel"
    --- Alpha Channel
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index0d66.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/ChannelOpOf#Options_Table)
    ---@field A "Fg.channel" | "Bg.channel"

---///////////////////////////
--- End ChannelOpOfOf () Options 
---///////////////////////////

---///////////////////////////
--- Crop() Options 
---///////////////////////////

    ---@class CropOptions
    ---@field CROP_XOffset  integer @ The X offset in pixels
    ---@field CROP_YOffset  integer @ The Y offset in pixels
    ---@field CROP_Width    integer @ The width of the result, in pixels
    ---@field CROP_Height   integer @ The height of the result, in pixels

---///////////////////////////
--- End Crop() Options 
---///////////////////////////

---///////////////////////////
--- ErodeDilate() Options 
---///////////////////////////

    ---@class ErodeDilateOptions
    ---@field ErDl_AmountX number @ These tags specify the strength of the operation along the X axis. Negative values will produce an erode operation, and positive values will produce a dilate operation. A value of 1 represents an operation equal to the width of the image.
    ---@field ErDl_AmountY number @ These tags specify the strength of the operation along the Y axis. Negative values will produce an erode operation, and positive values will produce a dilate operation. A value of 1 represents an operation equal to the width of the image.
    ---@field ErDl_Filter "Box"|"Linear"|"Gaussian"|"Circle" @ The filter is a string which represents the 'shape' of the effect.
    ---@field ErDl_Red boolean @ Red channel will be affected if set to true
    ---@field ErDl_Green boolean @ Green channel will be affected if set to true
    ---@field ErDl_Blue boolean @ Blue channel will be affected if set to true
    ---@field ErDl_Alpha boolean @ Alpha channel will be affected if set to true
---///////////////////////////
--- End ErodeDilate() Options 
---///////////////////////////

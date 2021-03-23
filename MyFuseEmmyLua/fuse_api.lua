--[[
    Class overview pulled from VFXPedia
    https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexa443.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes

    Object
        ScriptOperator
            ScriptParticleOperator
            ScriptSourceOperator
        Link
            Input
            Output
        Parameter
            Image
            Particles
            Number
            Text
            Point
            Clip
        Request
        ParticleGroup
        Composition
        ParticleStyle
        Region3D
        Shape
        FontManager

    -- Does inherit from Object
    Particle
    Pixel
    Vector2
    Vector3f
    Vector4
    Matrix4
    ColorMatrix
    ColorMatrixFull
    ImageChannel
    FillStyle
    ChannelStyle
    MultiPath
    TextStyleFont
    TextStyleFontMetrics
    FuID

]]
--/////////////////////
-- Object class
--/////////////////////
---@class Object @define Object
local Object = {}
function Object:Use() end
function Object:Recycle() end
function Object:GetComp() end
function Object:SetAttrs() end
function Object:GetAttr() end

    --//////////////////////////
    -- ScriptOperator Class  
    --//////////////////////////
        ---@class ScriptOperator:Object @ScriptOperator extends Input 
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
        ---@param labelname string @ This string value specifies the label displayed next to the input control in the inspector panel.
        ---@param scriptname string @ This string value specifies the name of the input control for purposes of saving the value and for scripting it.
        ---@param attributes table @ This argument accepts a table of attributes used to define the properties of the input. [Info](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
        ---@return Input
        ---
        function scriptOperator:AddInput(labelname,scriptname,attributes) end

        ---
        ---The AddOutput function is typically found within the Create section of a Fuse. It is used to add outputs to the tool. A tool generally only has one output, which is connected to the next tool in the flow's processing tree. It is possible for a tool to have multiple outputs, but rarely useful.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexfbdf.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/AddOutput)
        ---
        ---@param labelname string @ This string value specifies the label displayed next to the input control in the inspector panel.
        ---@param scriptname string @ This string value specifies the name of the input control for purposes of saving the value and for scripting it.
        ---@param attributes table @ This argument accepts a table of attributes used to define the properties of the input. [Info](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
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
        ---@param tabname string 
        function scriptOperator:AddControlPage(tabname) end

    --//////////////////////////
    -- End ScriptOperator Class 
    --//////////////////////////

    --//////////////////////////
    -- Link Class
    --//////////////////////////
        ---@class Link : Object 
        local Link = {}

        --///////////////////
        -- Input class
        --///////////////////
            ---@class Input : Link
            local Input = {}
            ---The GetValue function is used to retrieve the current values of a control from the current render request. The Request object is the only argument this function will accept. GetValue returns either a value or object which represents the current properties of an Input.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd93d.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/GetAttr)
            ---@param req Request
            ---@return SubParameter
            function Input:GetValue(req) end
            function Input:GetSource() end
            function Input:SetSource() end
            --The GetAttr() function is used to retrieve the value of a specific attribute of this object.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd93d.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/GetAttr)
            ---@param attr string
            function Input:GetAttr(attr) end
            function Input:SetAttr() end
        --///////////////////
        -- End Input class
        --///////////////////

        --//////////////////////
        -- Output class
        --//////////////////////
            ---@class Output : Link
            local Output = {}
            function Output:Set() end
        --//////////////////////
        -- End Output class
        --//////////////////////

    --//////////////////////////
    -- End Link Class
    --//////////////////////////

    --/////////////////////////
    -- Parameter class
    --/////////////////////////
        ---@class Parameter : Object 
        ---@field public Metadata any
        local Parameter = {}
        function Parameter:Clip() end
        ---The Copy method is returns a new Image object which is a copy of the current image.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index88ee.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Parameter/Copy)
        function Parameter:Copy() end
        --The Image function is used when a new image needs to be created in memory. Its sole argument is a table of attributes which describe the new image. The image function returns a handle to the new Image object.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexe339-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Constructor)
        function Parameter:Image() end
        function Parameter:Number() end
        function Parameter:Particles() end
        function Parameter:Point() end
        function Parameter:Text() end
        function Parameter:GetData() end
        function Parameter:SetData() end
        function Parameter:InterpolateWith() end

        --/////////////////////////
        -- SubParameter class
        --/////////////////////////
            ---@class SubParameter : Request
            --- It could be a String when getting information from a Text or it could be float number
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request)
            ---@field Value any 
            ---Float for X coordinate
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request)
            ---@field X number 
            ---Float for Y coordinate
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request)
            ---@field Y number 
        --/////////////////////////
        -- END SubParameter class
        --/////////////////////////

        --/////////////////////////
        -- Image Class 
        --/////////////////////////
            ---@class Image : Parameter
            ---Contains a table of image metadata (or nil if no metadata is available) that can both be read and written.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field Metadata any
            ---Contains the actual size of the pixel area that may be accessed. Writing outside of its bounds may crash Fusion.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field DataWindow any
            ---Specifies the area for which the image is valid (usually the Region of interest. If a new request that is just a subarea of the old one is performed, no re-rendering will take place. You can test this in the viewport yourself).
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field ValidWindow any
            ---The color depth of the image. The return value is an index from the IMG_Depth attribute in Attributes.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field Depth number	
            ---The current width and height of the image in pixels. If the image is in Proxy, this is the actual width and height
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field Width number 
            ---The current width and height of the image in pixels. If the image is in Proxy, this is the actual width and height
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field  Height number 
            ---The width and height of the image in pixels. This is always the original width and height, regardless of the current proxy settings.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field OriginalWidth number 
            ---The width and height of the image in pixels. This is always the original width and height, regardless of the current proxy settings.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field OriginalHeight integer
            ---he current X and Y pixel aspect of the image.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field XScale number 
            ---The current X and Y pixel aspect of the image.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field YScale number
            ---The original X and Y pixel aspect of the image, regardless of current proxy settings.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field OriginalXScale number
            ---The original X and Y pixel aspect of the image, regardless of current proxy settings.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field OriginalYScale number
            ---No documents at the moment 
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field XOffset number 
            ---No documents at the moment 
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field YOffset number
            ---No documents at the moment 
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field Field	number
            ---The current proxy scaling of the image.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field ProxyScale number
            local Image = {} 
        	---Destructively applies a matrix of color operations
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:ApplyMatrix() end
            ---Applies a matrix of color operations to a new image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:ApplyMatrixOf() end
            ---Fades and dissolves between images
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:BlendOf() end
            ---Softens an image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Blur() end
            ---Applies various math and boolean operations
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:ChannelOpOf() end
            ---Create a copy of the image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:CopyOf() end
            ---Crops or offset an image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Crop() end
            ---Converts between RGB,HLS,YUV and others
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:CSConvert() end
            ---A min/max operation used to contract or expand the contents of an image [Fusion 7]
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:ErodeDilate() end
            ---Sets all pixels to a single colour
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Fill() end
            ---Applies a power operation to all pixels
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Gamma() end
            ---Multiplies all pixels by a given value
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Gain() end
            ---Reads the color of the image's canvas area
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:GetCanvasColor() end
            ---Reads the value of a single pixel
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:GetPixel() end
            ---Construct a new Image object
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Image() end
            ---Overlays a foreground on the background image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Merge() end
            ---Overlays a foreground and background to a new image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:MergeOf() end
            ---Applies a function to each pixel using multiple threads
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:MultiProcessPixels() end
            ---Simple destructive additive merge
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:OMerge() end
            ---Simple destructive subtractive merge
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:OXMerge() end
            ---Applies a function to each pixel
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:ProcessPixels() end
            ---Change the resolution of an image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Resize() end
            ---Releases refcount, used to delete an image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Recycle() end
            ---Releases refcount, used to delete an image's summed-area table
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:RecycleSAT() end
            ---Fetch pixel with bilinear filtering, returns black edges
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:SamplePixelB() end
            ---Fetch pixel with bilinear filtering, returns duplicate edges
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:SamplePixelD() end
            ---Fetch pixel with bilinear filtering, returns wrapped edges
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:SamplePixelW() end
            ---Calculates normalised sum of a rectangular area, black edges
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:SampleAreaB() end
            ---Calculates normalised sum of a rectangular area, duplicate edges
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:SampleAreaD() end
            ---Calculates normalised sum of a rectangular area, wrapped edges
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:SampleAreaW() end
            ---Increases or decreases color saturation
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Saturate() end
            ---Changes the color of the image's canvas area
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:SetCanvasColor() end
            ---Change the value of a single pixel
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:SetPixel() end
            ---Translate, Rotate, Scale and Flip an image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Transform() end
            ---Add a refcount to the image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Use() end
            ---Add a refcount to the summed-area table
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:UseSAT() end
            ---Will fill all channels with zeros.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Image:Clear() end
            ---Returns the number of bytes or 0 if the channel is not present.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            ---@alias channel 
            ---|>'<channel>' # 
            function Image:GetChanSize(channel) end
        --/////////////////////////
        -- END Image Class 
        --/////////////////////////

    --/////////////////////////
    -- Parameter class
    --/////////////////////////

    --//////////////////
    -- Request class
    --//////////////////
        ---@class Request : Object
        ---@field Time osdate @ the current frame of the request
        ---@field BaseTime osdate
        local Request = {}
        ---
        ---Returns a boolean which indicates whether the current request is in Proxy mode.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request)
        ---@return boolean
        function Request:isStampOnly () end
        ---
        ---Returns a boolean which indicates whether the current request is in HiQ mode.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request)
        ---@return boolean
        function Request:isQuick() end 
        ---
        ---Returns a boolean which indicates whether the current request should include motion blur 
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request)
        ---@return boolean
        function Request:isNoMotionBlur() end
        ---
        ---Returns the current frame of the request 
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request)
        ---@return boolean
        function Request:GetTime() end
    --//////////////////////
    -- End of Request class
    --//////////////////////


---@alias classType 
---|>'CT_Tool' # 
---| 'CT_ParticleTool' # 
---| 'CT_SourceTool' # 
---| 'CT_Modifier'  # 
---| 'CT_ViewLUTPlugin' # 

--//////////////////
-- FuRegisterClass
--//////////////////


---
---The AddInput function is typically found within the Create event function of a Fuse. It is used to add inputs (controls) to the tool. An input can be one of several control types, or an image type input which appears on the tool tile in the flow.
---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexcab7.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass)
---
---@param name string
---@param class classType 
---@param attributes table 
function FuRegisterClass(name, class, attributes)end

---@type ScriptOperator
self = {} 
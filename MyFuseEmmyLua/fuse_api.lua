--[[
    Class overview pulled from VFXPedia
    https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexa443.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes

    O̶b̶j̶e̶c̶t̶
        S̶c̶r̶i̶p̶t̶O̶p̶e̶r̶a̶t̶o̶r̶
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

--]]

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
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4612.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/GetValue)
            ---@param req Request
            ---@return Img | Gradient | Particles | Point | Text | SubParameter
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

            ---@class Img : Parameter
            ---Contains a table of image metadata (or nil if no metadata is available) that can both be read and written.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field Metadata any
            ---Contains the actual size of the pixel area that may be accessed. Writing outside of its bounds may crash Fusion.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field DataWindow integer
            ---Specifies the area for which the image is valid (usually the Region of interest. If a new request that is just a subarea of the old one is performed, no re-rendering will take place. You can test this in the viewport yourself).
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field ValidWindow any
            ---The color depth of the image. The return value is an index from the IMG_Depth attribute in Attributes.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field Depth integer 
            ---The current width and height of the image in pixels. If the image is in Proxy, this is the actual width and height
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field Width integer 
            ---The current width and height of the image in pixels. If the image is in Proxy, this is the actual width and height
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field Heigh integer 
            ---The width and height of the image in pixels. This is always the original width and height, regardless of the current proxy settings.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field OriginalWidth integer 
            ---The width and height of the image in pixels. This is always the original width and height, regardless of the current proxy settings.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field OriginalHeight integer
            ---he current X and Y pixel aspect of the image.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field XScale number 
            ---The current X and Y pixel aspect of the image.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field YScale number 
            ---The original X and Y pixel aspect of the image, regardless of current proxy settings.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field OriginalXScale number 
            ---The original X and Y pixel aspect of the image, regardless of current proxy settings.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field OriginalYScale number 
            ---No documents at the moment 
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field XOffset number 
            ---No documents at the moment 
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field YOffset number 
            ---No documents at the moment 
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field Field number	
            ---The current proxy scaling of the image.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Img)
            ---@field ProxyScale number 
            local Img = {} 

            ---Destructively applies a matrix of color operations
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img)
            function Img:ApplyMatrix() end

            ---Applies a matrix of color operations to a new image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img)
            function Img:ApplyMatrixOf() end

            ---Fades and dissolves between images
            ---@param fg Img @ The image to use as the foreground for the blend operation
            ---@param map Img | number @ A numeric value that describes how much of the foreground is combined with the background. Alternately, this argument can be an image map, as described below.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index9079.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/BlendOf)
            ---@return Img
            function Img:BlendOf(fg, map) end

            ---Blurs the image. Returns an image if destImg is not passed
            ---@param destImg? Img @ The image object where the results of the blur will be applied. If none is provided, a new image will be created.
            ---@param settings BlurSettings @ A table containing values which describe the various options available for the blur
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/Blur)
            ---@return Img
            function Img:Blur(destImg, settings) end

            ---Applies various math and boolean operations to one or more images.
            ---@param operation ChannelOpOfOperation @ A string that specifies the mathematical operation the function will use when combining channels
            ---@param fgImg Img @ The image object used as the foreground, or second image in the operation. If this is nil, then the function will use the Img object calling the function as the foreground as well (i.e. "fg.r" is equivalent to "bg.r")
            ---@param options ChannelOpOfOptions @ A table containing named entries describing how each channel of the background image should be processed to produce the result.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index0d66.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/ChannelOpOf)
            ---@return Img
            function Img:ChannelOpOf(operation, fgImg, options) end

            ---Create a copy of the image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd7a8.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/CopyOf)
            ---@return Img
            function Img:CopyOf() end

            ---Crops or offset an image
            ---@param img Img | nil @ This argument can be set to either **nil** or an Img object.
            ---@param options CropOptions @ A table containing the options for the crop 
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index0440.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/Crop)
            ---@return Img
            function Img:Crop(img, options) end

            ---Converts an image to the specified color space 
            ---@param fromCS ColorSpace @ A string specifying the colorspace the image is currently in.
            ---@param toCS ColorSpace @ A string specifying the colorspace to convert the image into.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4857.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/CSConvert)
            ---@return nil
            function Img:CSConvert(fromCS, toCS) end

            --- The ErodeDilate function will apply an erode or dilate process to the image. The function returns a new image containing the results of the operation.
            ---@param destImg Img @ The image object where the results of the erode/dilate will be applied. If none is provided, a new image will be created.
            ---@param options ErodeDilateOptions @ A table containing values which describe the various options available for the erode/dilate
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index5de3-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/ErodeDilate)
            ---@return Img
            function Img:ErodeDilate(destImg, options) end

            ---Sets all pixels to a single color
            ---@param pixel Pix @ Color pixel to fill the image with.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index2511.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/Fill)
            ---@return nil
            function Img:Fill(pixel) end

            ---Applies a power operation (Gamma) to all pixels
            ---@param rAmount number @ The amount of gamma to the Red channel
            ---@param gAmount number @ The amount of gamma to the Green channel 
            ---@param bAmount number @ The amount of gamma to the Blue channel
            ---@param aAmount number @ The amount of gamma to the Alpha channel
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexfe61.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/Gamma)
            ---@return nil
            function Img:Gamma(rAmount, gAmount, bAmount, aAmount) end

            ---Multiplies all pixels by a given value (Gain)
            ---@param rAmount number @ The amount of gain to the Red channel
            ---@param gAmount number @ The amount of gain to the Green channel
            ---@param bAmount number @ The amount of gain to the Blue channel
            ---@param aAmount number @ The amount of gain to the Alpha channel
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexb745.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/Gain)
            ---@return nil
            function Img:Gain(rAmount, gAmount, bAmount, aAmount) end

            ---Reads the color of the image's canvas area
            ---@param pixel Pix @ The Pixel object that will receive the color values of the image's canvas.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexe53a.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/GetCanvasColor)
            function Img:GetCanvasColor(pixel) end

            ---Reads the value of a single pixel
            ---@param xPos integer @ The position of the pixel to get on the x axis
            ---@param yPos integer @ The postion of the pixel to get on the y axis
            ---@param pixel Pix @ The Pixel object that will receive the color values of the image's pixel
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index8499.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/GetPixel)
            function Img:GetPixel(xPos, yPos, pixel) end

            ---Construct a new Img object
            ---@param attr table @ Img attributes which describe teh images width, heigh, color depth and so forth
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexe339-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/Constructor)
            ---@return Img
            function Img:Img(attr) end

            function Img() end
            ---Overlays a foreground on the background image
            ---@param fg Img @ The image to be used as the foreground of the merge
            ---@param attr table @ A table containing entries which describe how the foreground will be merged over the background
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index528d.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/Merge)
            function Img:Merge(fg, attr) end

            ---Overlays a foreground and background to a new image
            ---@param fg Img @ The image to be used as the foreground of the merge
            ---@param attr table @ A table containing entries which describe how the foreground will be merged over the background
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd5c5.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/MergeOf)
            function Img:MergeOf(fg, attr) end

            ---Applies a function to each pixel using multiple threads
            ---```lua
            --- out:MultiProcessPixels(nil, {}, 100, 100, 50, 50, source_img, process_function)
            ---```
            ---@param threadinitfunc function @This argument must be provided, but can be either nil. or a function.
            ---@param globalenv table @The MultiProcessPixels processfunc function does not have access to the variables in the global environment - it only has access to values passed to it in this table.
            ---@param xOffset integer @ x offset from the origin
            ---@param yOffset integer @ y offset from the origin
            ---@param width integer @ width from the point (xOffset,yOffset) 
            ---@param height integer @ height form the point (xOffset, yOffset)
            ---@param sourceImg Img @ An image object which will provide the pixels used for the calculations
            ---@param process function @ A function which will be executed for each pixel in the rage specified by earlier arguments
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index24e0.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/MultiProcessPixels)
            function Img:MultiProcessPixels(threadinitfunc, globalenv, xOffset, yOffset, width, height, sourceImg, process) end

            ---Simple destructive additive merge
            ---@param fg Img @ An image object ot use as the foreground for the merge
            ---@param xOffset integer @ A numeric value which specifies an offset for the Foreground in pixels
            ---@param yOffset integer @ A numeric value which specifies an offset for the Foreground in pixels
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index9fef-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/OMerge)
            function Img:OMerge(fg, xOffset, yOffset) end

            ---A destructive subtractive merge 
            ---@param fg Img @ An image object to use as the foregournd for the merge
            ---@param xOffset integer @ x offset from the origin of the Foreground Img
            ---@param yOffset integer @ y offset from the origin of the Foreground Img
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexacc6.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/OXMerge)
            function Img:OXMerge(fg, xOffset, yOffset) end

            ---The ProcessPixels function will process every pixel within a specified range of a source image using the function provided as its last argument
            ---@param xOffset integer @ x offset from the origin of the Foreground Img
            ---@param yOffset integer @ y offset from the origin of the Foreground Img
            ---@param width integer @ width from the point (xOffset,yOffset) 
            ---@param height integer @ height form the point (xOffset, yOffset)
            ---@param images Img @ An image object which will provide the pixels sued for the calculations. At least one image is required, but additional images can be specified as well
            ---@param process function @ A function which will be executed for each pixel in the range specified by earlier arguments
            ---```lua               
            --- img:ProcessPixels(xOffset,yOffset, width, height, images..., func)
            ---```
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index2593.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/ProcessPixels)
            function Img:ProcessPixels(xOffset, yOffset, width, height, images, process) end

            ---The Resize function resizes an image to the dimensions specified in the functions attributes table
            ---@param result Img @ The resulting image
            ---@param attr table @ The table of attributes
            ---```lua
            --- Example:
            ---     img:Resize(result, { RSZ_Filter = { "Nearest", "Box"} , RSZ_Window = {"Hanning"} , RSZ_Width = width, RSZ_Height = height, }) 
            ---```
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index5008.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/Resize)
            function Img:Resize(result, attr) end

            ---Releases refcount, used to delete an image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img)
            function Img:Recycle() end

            ---Fetch pixel with bilinear filtering, returns black edges
            ---@param x integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param pixel Pix A Pixel object that will be filled with the results
            ---```lua
            --- Example:
            ---     img:SamplePixelB(10, 20, Pixel({R = 0.1, G = 0.2, B = 0.3, A = 1}))
            ---```
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index89ce.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/SamplePixelB)
            ---
            function Img:SamplePixelB(x, y, pixel) end

            ---Fetch pixel with bilinear filtering, returns duplicate edges
            ---@param x integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y integer The u coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param pixel Pixel A Pixel object that will be filled with the results
            ---```lua
            --- Example:
            ---     img:SamplePixelD(10, 10, Pixel({R = 0.1, G = 0.2, B = 0.3, A = 1}))
            ---```
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexbc63.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/SamplePixelD)
            function Img:SamplePixelD(x, y, pixel) end

            ---Fetch pixel with bilinear filtering, returns wrapped edges
            ---@param x integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y integer The u coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param pixel Pix A Pixel object that will be filled with the results
            ---[View documents]()
            function Img:SamplePixelW(x, y, pixel) end

            ---Calculates normalised sum of a rectangular area, black edges
            ---@param x integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y integer The u coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param pixel Pix A Pixel object that will be filled with the results
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexb5a1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/SampleAreaB)
            function Img:SampleAreaB(x, y, pixel) end

            ---Calculates normalised sum of a rectangular area, duplicate edges
            ---```lua
            --- Img:SampleAreaD(x1, y1, x2, y2, x3, y3, x4, y4, pixel)
            ---```
            ---@param x1 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y1 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x2 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y2 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x3 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y3 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x4 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y4 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param pixel Pix A Pixel object that will be filled with the results
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexf568.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/SampleAreaD)
            function Img:SampleAreaD(x1, y1, x2, y2, x3, y3, x4, y4, pixel) end

            ---Calculates normalised sum of a rectangular area, wrapped edges
            ---[View documents]()
            function Img:SampleAreaW() end
            ---Increases or decreases color saturation
            ---[View documents]()
            function Img:Saturate() end
            ---Changes the color of the image's canvas area
            ---[View documents]()
            function Img:SetCanvasColor() end
            ---Change the value of a single pixel
            ---[View documents]()
            function Img:SetPixel() end
            ---Translate, Rotate, Scale and Flip an image
            ---[View documents]()
            function Img:Transform() end
            ---Add a refcount to the image
            ---[View documents]()
            function Img:Use() end

            ---Add a refcount to the summed-area table
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index43c3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/UseSAT)
            function Img:UseSAT() end

            ---Releases refcount, used to delete an image's summed-area table
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexab65-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/RecycleSAT)
            function Img:RecycleSAT() end

            ---Will fill all channels with zeros.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img)
            function Img:Clear() end

            ---Returns the number of bytes or 0 if the channel is not present.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img)
            function Img:GetChanSize(channel) end

            function Img:AlphaDivide() end

            function Img:AlpahMultiply() end
        --/////////////////////////
        -- END Image Class 
        --/////////////////////////

        --/////////////////////////
        -- Particle Class 
        --/////////////////////////

            ---@class Particles : Parameter
            ---No available information
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            ---@field NumGroups any
            ---No available information
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            ---@field Time any	
            ---No available information
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            ---@field Delta any	
            ---No available information
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            ---@field Restart any	
            ---No available information
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            ---@field Ratio any	
            ---No available information
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            ---@field IsThreeD any	
            ---No available information
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            ---@field Image any	
            ---No available information
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            ---@field NumData any	
            ---No available information
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            ---@field NextID any
            local Particles = {} 
            ---No available information
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            function Particles:Particles() end
            ---No available information
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            function Particles:GetGroup() end
            ---No available information
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            function Particles:AddGroup() end
            ---No available information
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            function Particles:GetID() end
            ---No available information
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            function Particles:FindParticle() end
            ---No available information
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            function Particles:AddExtraData() end
            ---No available information
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            function Particles:GetExtraData() end
            ---No available information
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index3bf3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Particles)
            function Particles:SetExtraData() end

        --/////////////////////////
        -- End Particle Class 
        --/////////////////////////



    --/////////////////////////
    -- End Parameter class
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


    --//////////////////////
    -- Pixel() 
    --//////////////////////
    ---@class Pix
    ---@field R	number            @ Red channel
    ---@field G	number            @ Green channel
    ---@field B	number            @ Blue channel
    ---@field A	number            @ Alpha channel
    ---@field Z	number            @ Depth channel
    ---@field U	number            @ U texture co-ordinate channel
    ---@field V	number            @ V texture co-ordinate channel
    ---@field Coverage	number    @ Fraction of pixel covered by foreground object channel
    ---@field ObjectID	number    @ Unique integer identifier for the pixel's object channel
    ---@field MaterialID number   @ Unique integer identifier for the pixel's material channel
    ---@field NX number	          @ X component of pixel's surface normal vector channel
    ---@field NY number	          @ Y component of pixel's surface normal vector channel
    ---@field NZ number 	      @ Z component of pixel's surface normal vector channel
    ---@field BgR number	      @ Red component of background pixel fragment channel
    ---@field BgG number	      @ Green component of background pixel fragment channel
    ---@field BgB number	      @ Blue component of background pixel fragment channel
    ---@field BgA number		  @ Alpha component of background pixel fragment channel
    ---@field VectX number		  @ X component of pixel's motion vector channel
    ---@field VectY number		  @ Y component of pixel's motion vector channel
    ---@field BackVectX number	  @ X component of pixel's reverse motion vector channel
    ---@field BackVectY	 number   @ Y component of pixel's reverse motion vector channel
    ---@field PositionX number    @
    ---@field PositonY number     @
    ---@field PositonZ number     @
    ---@field DisparityX number   @
    ---@field DisparityY number   @
    local Pix = {}
    --- Zeroes all pixel values to black
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexfbf9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Pixel)
    function Pix:Clear() end

    ---@return Pix
    ---@param options? Pix
    function Pixel(options) end

    --//////////////////////
    -- End of Pixel() 
    --//////////////////////

--//////////////////
-- FuRegisterClass
--//////////////////

---
---The AddInput function is typically found within the Create event function of a Fuse. It is used to add inputs (controls) to the tool. An input can be one of several control types, or an image type input which appears on the tool tile in the flow.
---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexcab7.html?title=Eyeon:Script/Reference/Applications/Fuse/Functions/FuRegisterClass)
---@param name string
---@param class toolType 
---@param attr table 
function FuRegisterClass(name, class , attr)end


---@type ScriptOperator 
self = {} 

--[[
    Class overview pulled from VFXPedia
    https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexa443.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes

    O̶b̶j̶e̶c̶t̶
        S̶c̶r̶i̶p̶t̶O̶p̶e̶r̶a̶t̶o̶r̶
            ScriptParticleOperator
            ScriptSourceOperator
        L̶i̶n̶k̶
            I̶n̶p̶u̶t̶
            Output
        P̶a̶r̶a̶m̶e̶t̶e̶r̶
            I̶m̶a̶g̶e̶
            P̶a̶r̶t̶i̶c̶l̶e̶s̶
            N̶u̶m̶b̶e̶r̶
            T̶e̶x̶t̶
            P̶o̶i̶n̶t̶
            C̶l̶i̶p̶
        R̶e̶q̶u̶e̶s̶t̶
        P̶a̶r̶t̶i̶c̶l̶e̶G̶r̶o̶u̶p̶
        C̶o̶m̶p̶o̶s̶i̶t̶i̶o̶n̶
        P̶a̶r̶t̶i̶c̶l̶e̶S̶t̶y̶l̶e̶
        R̶e̶g̶i̶o̶n̶3̶D̶
        S̶h̶a̶p̶e̶
        F̶o̶n̶t̶M̶a̶n̶a̶g̶e̶r̶
    -- Does inherit from Object
    Particle
    P̶i̶x̶e̶l̶
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

    ---@class Object 
    local Object = {}
    function Object:Use() end
    function Object:Recycle() end
    function Object:GetComp() end
    function Object:SetAttrs() end
    function Object:GetAttr() end


    --//////////////////////////
    -- ScriptOperator Class  
    --//////////////////////////

        ---ScriptOperator extends Input 
        ---@class ScriptOperator : Object 
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
        ---The AddControlPage function is found in the Create portion of the Fuse tool. It is used to organize tool controls into separate tabs. If this function is not used then all of the controls described in the Create() function will appear in the Control Window under a single default tab titled "Controls". All controls defined under the AddControlPage function will appear in that control page until the AddControlPage function is called again.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexbabc-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/AddControlPage)
        ---@param tabname string 
        ---
        function scriptOperator:AddControlPage(tabname) end



        ---
        ---The BeginControlNest function is found in the Create portion of a Fuse tool. It is used to create a control nest enclosing one or more controls within the tool into a collapsible section. All controls specified after the BeginControlNest function is called will be included in the nested section, until the EndControlNest function is called to close the nest.
        ---@param controlName string 
        ---@param scriptName string
        ---@param is_expanded boolean 
        ---@param taglist table 
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexfab1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/BeginControlNest)
        ---
        function scriptOperator:BeginControlNest(controlName, scriptName, is_expanded, taglist) end

        ---
        ---The EndControlNest function is found in the Create portion of a Fuse tool. It is used to close a control nest created using the BeginControlNest function.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index0129.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/EndControlNest)
        ---
        function scriptOperator:EndControlNest() end

        
        ---The AddInput function is typically found within the Create event function of a Fuse. It is used to add inputs (controls) to the tool. An input can be one of several control types, or an image type input which appears on the tool tile in the flow.
        ---@param labelname string @ This string value specifies the label displayed next to the input control in the inspector panel.
        ---@param scriptname string @ This string value specifies the name of the input control for purposes of saving the value and for scripting it.
        ---@param options InputOptions@ This argument accepts a table of attributes used to define the properties of the input. [Info](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
        ---@return Input
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexb419.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/AddInput)
        function scriptOperator:AddInput(labelname,scriptname,options) end

        ---The AddOutput function is typically found within the Create section of a Fuse. It is used to add outputs to the tool. A tool generally only has one output, which is connected to the next tool in the flow's processing tree. It is possible for a tool to have multiple outputs, but rarely useful.
        ---@param labelname string @ This string value specifies the label displayed next to the input control in the inspector panel.
        ---@param scriptname string @ This string value specifies the name of the input control for purposes of saving the value and for scripting it.
        ---@param attributes table @ This argument accepts a table of attributes used to define the properties of the input. [Info](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6e2a-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Input/Attributes)
        ---@return Output 
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexfbdf.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/AddOutput)
        function scriptOperator:AddOutput(labelname,scriptname,attributes) end

        ---The DoMultiProcess function is used to seperate an image processing task into seperate chunks for more efficient processing on multiprocessor workstations.
        ---@param threadinitfunc function @This argument must be provided, but can be either nil. or a function.
        ---@param globalenv table @The MultiProcessPixels processfunc function does not have access to the variables in the global environment - it only has access to values passed to it in this table.
        ---@param chunks integer
        ---@param process function @ A function which will be executed for each pixel in the rage specified by earlier arguments
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index9536.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/DoMultiProcess)
        function scriptOperator:DoMultiProcess( threadinitfunc, globalenv, chunks, process) end


        ---The SetProgress function can be used to update a progress bar drawn on the tools tile in the flow. This function will also return the value of the ScriptOperator member
        ---@param num number A numeric value between 0 and 1 which indicates how to draw the progress bar. A value of .25 would show the tools progress as 25% complete. A value of .75 would show it as 75% complete.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexec93.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/SetProgress)
        function scriptOperator:SetProgress(num) end


        ---The CloneInput method is used to clone and Input that already exists on the tool
        ---@param object Object(variable, required) The input to clone.
        ---@param inputToClone string (string, required) The name of the cloned input.
        ---@param tb "{}" (table, required) This must be an empty table. This argument is not currently used. 
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexec93.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/ScriptOperator/SetProgress)
        function scriptOperator:CloneInput(object, inputToClone, tb ) end


        ---@param id any
        function scriptOperator:FindInput(id) end

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
            ---@return Img | Particle | Point | Text | SubParameter
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


            ---
            ---The Set function is used to assign a specific image in memory to the Output. Typically this is the last step in a Process event before a tool is done rendering.
            ---@param req Request The Request object is always passed to the Process event function as an argument. See the pages for the Request object and Process event function for more information.
            ---@param img Img This argument should be set to an image which will be used as the final output for the tool.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexb9e7.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Output/Set)
            ---
            function Output:Set(req,img) end






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

        ---
        ---The Copy method is returns a new Image object which is a copy of the current image.
        ---@return nil 
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index88ee.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Parameter/Copy)
        ---
        ---
        function Parameter:Copy() end





        ---
        ---The Image function is used when a new image needs to be created in memory. Its sole argument is a table of attributes which describe the new image. The image function returns a handle to the new Image object.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexe339-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Constructor)
        ---
        ---@return Img
        function Parameter:Image() end





        ---@param num? number
        ---@return Number
        function Parameter:Number(num) end





        function Parameter:Particles() end





        function Parameter:Point() end





        function Parameter:Text() end





        function Parameter:GetData() end





        function Parameter:SetData() end





        function Parameter:InterpolateWith() end



        --/////////////////////////
        -- Image Class 
        --/////////////////////////

            ---@class Img : Parameter
            ---Contains a table of image metadata (or nil if no metadata is available) that can both be read and written.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index9040.html?title=Metadata)
            ---@field Metadata table
            ---Contains the actual size of the pixel area that may be accessed. Writing outside of its bounds may crash Fusion.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field DataWindow integer
            ---Specifies the area for which the image is valid (usually the Region of interest. If a new request that is just a subarea of the old one is performed, no re-rendering will take place. You can test this in the viewport yourself).
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field ValidWindow any
            ---The color depth of the image. The return value is an index from the IMG_Depth attribute in Attributes.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field Depth integer 
            ---The current width and height of the image in pixels. If the image is in Proxy, this is the actual width and height
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field Width integer 
            ---The current width and height of the image in pixels. If the image is in Proxy, this is the actual width and height
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field Heigh integer 
            ---The width and height of the image in pixels. This is always the original width and height, regardless of the current proxy settings.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field OriginalWidth integer 
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
            ---@field Field number	
            ---The current proxy scaling of the image.
            ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index6f6d.html?title=EyeonTips:Script/Reference/Applications/Fuse/Classes/Image)
            ---@field ProxyScale number 
            local Img = {} 

            ---Destructively applies a matrix of color operations
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Img:ApplyMatrix() end



            ---Applies a matrix of color operations to a new image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            function Img:ApplyMatrixOf() end



            ---
            ---Fades and dissolves between images
            ---@param fg Img            The image to use as the foreground for the blend operation
            ---@param map Img | number  A numeric value that describes how much of the foreground is combined with the background. Alternately, this argument can be an image map, as described below.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index9079.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/BlendOf)
            ---@return Img
            ---
            function Img:BlendOf(fg, map) end



            ---
            ---Blurs the image. Returns an image if destImg is not passed
            ---@param destImg? Img         The image object where the results of the blur will be applied. If none is provided, a new image will be created.
            ---@param settings BlurOptions A table containing values which describe the various options available for the blur
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4a1f.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Blur)
            ---@return Img
            ---
            function Img:Blur(destImg, settings) end





            ---
            ---Applies various math and boolean operations to one or more images.
            ---@param operation ChannelOpOfOperation @ A string that specifies the mathematical operation the function will use when combining channels
            ---@param fgImg Img @ The image object used as the foreground, or second image in the operation. If this is nil, then the function will use the Img object calling the function as the foreground as well (i.e. "fg.r" is equivalent to "bg.r")
            ---@param options ChannelOpOfOptions @ A table containing named entries describing how each channel of the background image should be processed to produce the result.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index0d66.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/ChannelOpOf)
            ---@return Img
            ---
            function Img:ChannelOpOf(operation, fgImg, options) end





            ---
            ---Create a copy of the image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd7a8.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/CopyOf)
            ---@return Img
            ---
            function Img:CopyOf() end





            ---
            ---Crops or offset an image
            ---@param img Img | nil @ This argument can be set to either **nil** or an Img object.
            ---@param options CropOptions @ A table containing the options for the crop 
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index0440.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Crop)
            ---@return Img
            ---
            function Img:Crop(img, options) end





            ---
            ---Converts an image to the specified color space 
            ---@param fromCS ColorSpace @ A string specifying the colorspace the image is currently in.
            ---@param toCS ColorSpace @ A string specifying the colorspace to convert the image into.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index4857.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/CSConvert)
            ---@return nil
            ---
            function Img:CSConvert(fromCS, toCS) end





            ---
            --- The ErodeDilate function will apply an erode or dilate process to the image. The function returns a new image containing the results of the operation.
            ---@param destImg Img @ The image object where the results of the erode/dilate will be applied. If none is provided, a new image will be created.
            ---@param options ErodeDilateOptions @ A table containing values which describe the various options available for the erode/dilate
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index5de3-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/ErodeDilate)
            ---@return Img
            ---
            function Img:ErodeDilate(destImg, options) end





            ---
            ---Sets all pixels to a single color
            ---@param pixel Pix @ Color pixel to fill the image with.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index2511.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Fill)
            ---
            function Img:Fill(pixel) end





            ---
            ---Applies a power operation (Gamma) to all pixels
            ---@param rAmount number @ The amount of gamma to the Red channel
            ---@param gAmount number @ The amount of gamma to the Green channel 
            ---@param bAmount number @ The amount of gamma to the Blue channel
            ---@param aAmount number @ The amount of gamma to the Alpha channel
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexfe61.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Gamma)
            ---
            function Img:Gamma(rAmount, gAmount, bAmount, aAmount) end





            ---
            ---Multiplies all pixels by a given value (Gain)
            ---@param rAmount number @ The amount of gain to the Red channel
            ---@param gAmount number @ The amount of gain to the Green channel
            ---@param bAmount number @ The amount of gain to the Blue channel
            ---@param aAmount number @ The amount of gain to the Alpha channel
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexb745.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Gain)
            ---
            function Img:Gain(rAmount, gAmount, bAmount, aAmount) end





            ---
            ---Reads the color of the image's canvas area
            ---@param pixel Pix @ The Pixel object that will receive the color values of the image's canvas.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexe53a.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/GetCanvasColor)
            ---
            function Img:GetCanvasColor(pixel) end





            ---
            ---Reads the value of a single pixel
            ---@param xPos integer @ The position of the pixel to get on the x axis
            ---@param yPos integer @ The postion of the pixel to get on the y axis
            ---@param pixel Pix @ The Pixel object that will receive the color values of the image's pixel
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index8499.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/GetPixel)
            ---
            function Img:GetPixel(xPos, yPos, pixel) end





            ---
            ---Merges a foreground image to the background image
            ---@param fg Img @ The image to be used as the foreground of the merge
            ---@param options? MergeOptions @ A table containing entries which describe how the foreground will be merged over the background
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index528d.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Merge)
            ---
            function Img:Merge(fg, options) end





            ---
            ---Overlays a foreground and background to a new image. This is different from Image:Merge in that a new image is produced
            ---@param fg Img @ The image to be used as the foreground of the merge
            ---@param options? MergeOptions @ A table containing entries which describe how the foreground will be merged over the background
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexd5c5.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/MergeOf)
            ---
            function Img:MergeOf(fg, options) end





            ---
            ---Applies a function to each pixel using multiple threads
            ---@param threadinitfunc function @This argument must be provided, but can be either nil. or a function.
            ---@param globalenv table @The MultiProcessPixels processfunc function does not have access to the variables in the global environment - it only has access to values passed to it in this table.
            ---@param xOffset integer @ x offset from the origin
            ---@param yOffset integer @ y offset from the origin
            ---@param width integer @ width from the point (xOffset,yOffset) 
            ---@param height integer @ height form the point (xOffset, yOffset)
            ---@param sourceImg Img @ An image object which will provide the pixels used for the calculations
            ---@param process function @ A function which will be executed for each pixel in the rage specified by earlier arguments
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index24e0.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/MultiProcessPixels)
            ---
            function Img:MultiProcessPixels(threadinitfunc, globalenv, xOffset, yOffset, width, height, sourceImg, process) end





            ---
            ---Simple destructive additive merge
            ---@param fg Img @ An image object ot use as the foreground for the merge
            ---@param xOffset integer @ A numeric value which specifies an offset for the Foreground in pixels
            ---@param yOffset integer @ A numeric value which specifies an offset for the Foreground in pixels
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index9fef-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Img/OMerge)
            ---
            function Img:OMerge(fg, xOffset, yOffset) end





            ---
            ---A destructive subtractive merge 
            ---@param fg Img @ An image object to use as the foregournd for the merge
            ---@param xOffset? integer @ x offset from the origin of the Foreground Img
            ---@param yOffset? integer @ y offset from the origin of the Foreground Img
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexacc6.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/OXMerge)
            ---
            function Img:OXMerge(fg, xOffset, yOffset) end





            ---
            ---The ProcessPixels function will process every pixel within a specified range of a source image using the function provided as its last argument. The results will be written to a second destination image.
            ---@param xOffset integer @ x offset from the origin of the Foreground Img
            ---@param yOffset integer @ y offset from the origin of the Foreground Img
            ---@param width integer @ width from the point (xOffset,yOffset)
            ---@param height integer @ height form the point (xOffset, yOffset)
            ---@param srcImg Img @ An image object which will provide the pixels sued for the calculations. At least one image is required, but additional images can be specified as well.
            ---@param process function @ A function which will be executed for each pixel in the range specified by earlier arguments
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index2593.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/ProcessPixels)
            ---
            function Img:ProcessPixels(xOffset, yOffset, width, height, srcImg , process) end





            ---
            ---The Resize function resizes an image to the dimensions specified in the functions attributes table. It applies the resized result to the image provided as its first argument.
            ---@param result Img @ The image object where the results of the resize will be applied.
            ---@param options ResizeOptions @ A table of options which describe the width, height, filter and other parameters used by the resize function.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index5008.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Resize)
            ---
            function Img:Resize(result, options) end





            ---
            ---Releases refcount, used to delete an image
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            ---
            function Img:Recycle() end





            ---
            ---Fetch pixel with bilinear filtering and returns black edges. This function will sample an arbitrary position from the co-ordinates specified by the first two arguments, 
            ---and fill the Pixel object with values from the sampled pixels. The X and Y arguments are floating-point pixel co-ordinates, with 0,0 being the bottom-left corner and
            ---(width-1), (height-1) being the top-right corner. Unlike GetPixel, if the co-ordinates do not align exactly with a pixel then bilinear filtering will be performed with 
            ---neighbouring pixels.
            ---@param x number The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y number The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param pixel Pix A Pixel object that will be filled with the results
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index89ce.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/SamplePixelB)
            ---
            function Img:SamplePixelB(x, y, pixel) end





            ---
            ---Fetch pixel with bilinear filtering, returns duplicate edges.This function will sample an arbitrary position from the co-ordinates specified by the first two arguments, 
            ---and fill the Pixel object with values from the sampled pixels. The X and Y arguments are floating-point pixel co-ordinates, with 0,0 being the bottom-left corner 
            ---and (width-1),(height-1) being the top-right corner. Unlike GetPixel, if the co-ordinates do not align exactly with a pixel then bilinear filtering will be performed 
            ---with neighbouring pixels. 
            ---
            ---If the co-ordinates provided are outside the actual bounds of the image, the return value will be the pixel at the edge of the image. 
            ---For example, if sampling a pixel at co-ordinates (-30.0, 50.0) the actual pixel sampled would be (0.0, 50.0).
            ---@param x number The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y number The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param pixel Pix A Pixel object that will be filled with the results
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexbc63.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/SamplePixelD)
            ---
            function Img:SamplePixelD(x, y, pixel) end





            ---
            ---Fetch pixel with bilinear filtering, returns wrapped edges. This function will sample an arbitrary position from the co-ordinates specified by the first two arguments, 
            ---and fill the Pixel object with values from the sampled pixels. The X and Y arguments are floating-point pixel co-ordinates, with 0,0 being the bottom-left corner 
            ---and (width-1),(height-1) being the top-right corner. Unlike GetPixel, if the co-ordinates do not align exactly with a pixel then bilinear filtering will be performed 
            ---with neighbouring pixels.
            ---@param x number The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y number The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param pixel Pix A Pixel object that will be filled with the results
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index287a.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/SamplePixelW)
            ---
            function Img:SamplePixelW(x, y, pixel) end





            ---
            ---Calculates normalised sum of a rectangular area, black edges. This function will sample an area of the image, using the co-ordinates specified by the first two arguments, 
            ---and fill the Pixel object p with the average of the pixels within the area. If the co-ordinates provided include pixels outside the actual bounds of the image, the pixels 
            ---will be considered to be black. 
            ---
            ---Before using the SampleArea methods, initial setup must be done, which pre-calculates values needed by the area sampling functions. Be aware however area sampling is a 
            ---very memory intensive approach and should only be used if “full quality” is required. The setup is done using the UseSAT()function. This maintains a reference count, 
            ---and so an equivalent RecycleSAT() must be done once you’re finished area sampling. Without the RecycleSAT(), Fusion will not be able to free up the pre-calculated 
            ---values until the whole Image itself is destroyed.
            ---@param x1 number The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y1 number The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x2 number The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y2 number The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x3 number The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y3 number The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x4 number The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y4 number The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param pixel Pix A Pixel object that will be filled with the results
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexb5a1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/SampleAreaB)
            ---
            function Img:SampleAreaB(x1, y1, x2, y2, x3, y3, x4, y4, pixel) end





            ---
            ---Calculates normalised sum of a rectangular area, wrapped edges. This function will sample an area of the image, using the co-ordinates specified by the first two arguments, 
            ---and fill the Pixel object p with the average of the pixels within the area. If the co-ordinates provided include pixels outside the actual bounds of the image, the pixels 
            ---will be sampled from the opposite side of the image. 
            ---
            ---Before using the SampleArea methods, initial setup must be done, which pre-calculates values needed by the area sampling functions. Be aware however area sampling is 
            ---a very memory intensive approach and should only be used if “full quality” is required. The setup is done using the UseSAT()function. This maintains a reference count, 
            ---and so an equivalent RecycleSAT() must be done once you’re finished area sampling. Without the RecycleSAT(), Fusion will not be able to free up the pre-calculated values 
            ---until the whole Image itself is destroyed.
            ---@param x1 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y1 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x2 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y2 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x3 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y3 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x4 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y4 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param pixel Pix A Pixel object that will be filled with the results
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index63e0.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/SampleAreaW)
            ---
            function Img:SampleAreaW(x1, y1, x2, y2, x3, y3, x4, y4, pixel) end





            ---
            ---Calculates normalised sum of a rectangular area, duplicate edges. This function will sample an area of the image, using the co-ordinates specified by the first two arguments, 
            ---and fill the Pixel object p with the average of the pixels within the area. If the co-ordinates provided include pixels outside the actual bounds of the image, the pixels 
            ---will besampled from the edge of the image.
            ---
            ---Before using the SampleArea methods, initial setup must be done, which pre-calculates values needed by the area sampling functions. Be aware however area sampling is 
            ---a very memory intensive approach and should only be used if “full quality” is required. The setup is done using the UseSAT()function. This maintains a reference count, 
            ---and so an equivalent RecycleSAT() must be done once you’re finished area sampling. Without the RecycleSAT(), Fusion will not be able to free up the pre-calculated values 
            ---until the whole Image itself is destroyed.
            ---@param x1 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y1 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x2 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y2 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x3 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y3 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param x4 integer The x coordinate of the pixel to be sampled, where 0 is the left edge
            ---@param y4 integer The y coordinate of the pixel to be sampled, where 0 is the bottom edge
            ---@param pixel Pix A Pixel object that will be filled with the results
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexf568.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/SampleAreaD)
            ---
            function Img:SampleAreaD(x1, y1, x2, y2, x3, y3, x4, y4, pixel) end





            ---
            ---Increases or decreases color saturation. The Saturate function adjusts the saturation of the image. The result is applied directly to the Image object which calls the function. 
            ---@param rSat number Red channel saturation. A value of 1.0 means no change
            ---@param gSat number Green channel saturation. A value of 1.0 means no change
            ---@param bSat number Blue channel saturation. A value of 1.0 means no change
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexaa75.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Saturate)
            ---
            function Img:Saturate(rSat, gSat, bSat) end





            ---
            ---Changes the color of the image's canvas area. The SetCanvasColor function is used to set the canvas color values of an Image.
            ---@param pixel Pix
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index972b.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/SetCanvasColor)
            ---
            function Img:SetCanvasColor(pixel) end





            ---
            ---Change the value of a single pixel. The SetPixel function is used to set the value of a specific pixel in an Image. This uses actual pixel coordinates, and must always be within image bounds.
            ---@param xPos integer The position of the pixel to set on the x axis
            ---@param yPos integer The position of the pixel to set on the y axis
            ---@param pixel Pix The pixel object to be assigned to the image.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index679d.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/SetPixel)
            ---
            function Img:SetPixel(xPos, yPos, pixel) end





            ---
            ---Translate, Rotate, Scale and Flip an image. The Transform method can be used to change the scale, angle and position of an image. The results of the transform will be copied into 
            ---the image provided as the first argument. If the first argument is set to nil, the method will return a new Image object containing the results.
            ---
            ---The results of the transformation are returned as an Image object, or nil if the operation failed. If dest_image was provided, that will be returned.
            ---@param resultImg Img The image to write the transform results into. May be nil, in which case an image is created. 
            ---@param options TranformOptions
            ---@return Img | nil
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexb696.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Transform)
            ---
            function Img:Transform(resultImg, options) end





            ---
            ---**Attention:** 
            --- `Use()` as well as its cousin `Recycle()` should no longer be used for Fuses. In recent versions, `Use()` will prevent Fusion from freeing the memory allocated for the image object.
            ---------------------------------
            ---The Use function increases the reference count for the image. The reference count helps Fusion determine when an image should stay 
            ---in memory, and when the memory occupied by that image can be recycled. Typically this function is called when the input Image of a tool is being passed directly 
            ---to the output Image, as in the following example.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexcd58.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Use)
            ---
            function Img:Use() end





            ---
            ---The UseSAT function must be called before using the SampleArea functions; SampleAreaB, SampleAreaD, and SampleAreaW. It will create a Summed Area Table (SAT),
            ---containing pre-calculated values for the entire image. If the SAT has already been created for the Image object this function will increase the reference count
            ---for the SAT. This function does not return a value - the SAT is attached directly to the Image object.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index43c3.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/UseSAT)
            ---
            function Img:UseSAT() end





            ---
            ---The RecycleSAT function will reduce the reference count for an Images Summed Area Table (SAT) and if the reference count reaches 0, it will release any memory consumed by the table.\
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexab65-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/RecycleSAT)
            ---
            function Img:RecycleSAT() end





            ---
            ---Will fill all channels with zeros.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image)
            ---
            function Img:Clear() end





            ---
            ---Returns the number of bytes or 0 if the channel is not present.
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index80f9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image#Tips_for_Image_.28edit.29)
            ---
            function Img:GetChanSize(channel) end





            ---
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---
            function Img:AlphaDivide() end





            ---
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---
            function Img:AlphaMultiply() end





            ---
            ---Construct function for a new Img object
            ---@param options ImageOptions @ Img attributes which describe the images width, heigh, color depth and so forth
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexe339-2.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Image/Constructor)
            ---@return Img
            ---
            function Image(options) end







        --/////////////////////////
        -- END Image Class 
        --/////////////////////////


        --/////////////////////////
        -- Particle Class 
        --/////////////////////////

            ---@class Particle : Parameter
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---@field NumGroups any
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---@field Time any	
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---@field Delta any	
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---@field Restart any	
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---@field Ratio any	
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---@field IsThreeD any	
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---@field Image any	
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---@field NumData any	
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---@field NextID any
            local Particle = {} 

            ---
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---
            function Particle:Particles() end





            ---
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---
            function Particle:GetGroup() end





            ---
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---
            function Particle:AddGroup() end





            ---
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---
            function Particle:GetID() end





            ---
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---
            function Particle:FindParticle() end





            ---
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---
            function Particle:AddExtraData() end





            ---
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---
            function Particle:GetExtraData() end





            ---
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---
            function Particle:SetExtraData() end





            ---@return Particle
           function Particles() end

        --/////////////////////////
        -- End Particle Class 
        --/////////////////////////


        ---////////////////////////
        ---Number Class
        ---////////////////////////

            ---@class Number : Parameter
            ---@field Value number

            ---@param num? number
            ---@return Number
            function Number(num) end

        ---////////////////////////
        ---End Number Class
        ---////////////////////////

        ---////////////////////////
        ---Text Class
        ---////////////////////////

            ---@class Text: Parameter
            ---@field Value number

            ---@param text? string 
            ---@return Text 
            function Text(text) end

        ---////////////////////////
        ---End Text Class
        ---////////////////////////


        ---////////////////////////
        ---Point Class
        ---////////////////////////


            ---@class Point: Parameter
            ---@field X number Returns the point's x-coordinate
            ---@field Y number Returns the point's y-coordinate

            ---Construct a new Point object from (x,y) arguments.
            ---@param x number 
            ---@param y number 
            ---@return Point 
            function Point(x, y) end



        ---////////////////////////
        ---End Point Class
        ---////////////////////////

        ---////////////////////////
        ---Point Class
        ---////////////////////////

            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---@class Clip: Parameter

            ---Construct a new Clip 
            ---No available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
            ---@return Clip
            function Clip() end



        ---////////////////////////
        ---End Point Class
        ---////////////////////////



        --/////////////////////////
        -- SubParameter class
        --/////////////////////////
 

           ---@class SubParameter : Request
            --- It could be a String when getting information from a Text or it could be float number
            ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request)
            ---@field Value number | string | Object | nil
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
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@return boolean
        function Request:isStampOnly () end
        ---
        ---Returns a boolean which indicates whether the current request is in HiQ mode.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@return boolean
        function Request:isQuick() end 
        ---
        ---Returns a boolean which indicates whether the current request should include motion blur 
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@return boolean
        function Request:isNoMotionBlur() end
        ---
        ---Returns the current frame of the request 
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@return integer 
        function Request:GetTime() end

        ---
        ---Returns true if the current request is a precalc request.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request#Tips_for_Request_.28edit.29)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@return boolean
        ---
        function Request:IsPreCalc() end

        ---
        ---Get all the request's flags (IsStampOnly, IsQuick, ...) as bits of an integer.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request#Tips_for_Request_.28edit.29)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@return boolean
        ---
        function Request:GetFlags() end

        ---
        ---Returns the specified input's DoD. You mustn't access pixel coordinates outside of this when working on the input image data. The canvas color value should be substituted instead, something that GetPixel() won't do for you automatically.
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request#Tips_for_Request_.28edit.29)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@param inp Img 
        ---@return ImageDomain
        ---
        function Request:GetInputDoD(inp) end

        ---
        ---Returns the requested region of interest. You may return an image with a DoD that is larger or smaller, but if you want to gain as much speed as possible, don't waste time calculating pixels outside of this. During precalc requests, this is nil. For regular process requests, this should end up as the ValidWindow attribute of your output image
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/index03d1.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Request#Tips_for_Request_.28edit.29)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@return ImageDomain
        ---
        function Request:GetRoI() end

        local t = Request:GetRoI()
        
        t.Intersect()

    --//////////////////////
    -- End Request class
    --//////////////////////

    ----///////////////////
    --- ParticleGroup Class
    ---////////////////////

        ---@class ParticleGroup : Object
        ---@field SourceID	any
        ---@field BirthTime	any
        ---@field StyleSource	any
        ---@field StyleID	any
        ---@field LowestID	any
        ---@field IsThreeD	any
        ---@field HighestID	any
        ---@field NumParticles	any
        ---@field NumExtraData	any
        ---@field Lifespan	any
        ---@field LifespanVariance	any
        ---@field MassScale	any
        ---@field SizeScale	any
        ---@field RScale	any
        ---@field GScale	any
        ---@field BScale	any
        ---@field AScale	any
        ---@field Flags	any
        ---@field SetMask	any
        ---@field Styleany any
        local ParticleGroup = {}

        function ParticleGroup:GetParticle()	end
        function ParticleGroup:FindParticle()	end
        function ParticleGroup:AddExtraData()	end
        function ParticleGroup:GetExtraData()	end
        function ParticleGroup:SetExtraData()	end
        function ParticleGroup:GetExtraParticleData()	end
        function ParticleGroup:SetExtraParticleData()	end

    ----///////////////////
    --- End ParticleGroup Class
    ---////////////////////

    ----///////////////////
    --- Composition Class
    ---////////////////////

        ---@class Composition : Object
        ---@field AudioFilename		any Filename of the comp's audio file, if any
        ---@field AudioOffset		any Delay (in frames) applied to audio file
        ---@field AverageFrameTime 	any Average time per frame (in seconds) of the current or previous render
        ---@field CurrentTime		any The comp's currently viewed frame number
        ---@field FileName		    any The comp's saved filename
        ---@field GlobalStart 	    any	Start of composition time
        ---@field GlobalEnd		    any End of composition time
        ---@field HiQ		        any Flag for high quality rendering
        ---@field LastFrameRendered	any Final frame of most recent render
        ---@field LastFrameTime		any Time required to render most recent frame
        ---@field Locked		    any Flag for disabling all interactive rendering
        ---@field Modified		    any Flag for unsaved modifications
        ---@field Name		        any Comp short name
        ---@field Proxy		        any Flag for reduced rendering size
        ---@field ProxyScale 	    any	Scale at which to reduce render sizes
        ---@field RenderStart 	    any	First frame to render
        ---@field RenderEnd 	    any	Last frame to render
        ---@field RenderFlags 	    any	Bit flags for various render modes
        ---@field RenderStep 	    any	Render only every Nth frame
        ---@field TimeRemaining		any Estimated remaining time until render end
        local Composition = {}

        ---Returns a table of the comp's preferences
        ---@return table
        function Composition:GetPrefs() end 	

        ---Returns a subtable of the comp's custom data
        ---@return Composition
        function Composition:GetData() end 

        ---Executes a script file on the comp's context
        function Composition:Execute() end


    
    ----///////////////////
    --- End Composition Class
    ---////////////////////

    ----///////////////////
    --- ParticleStyle 
    ---////////////////////

        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@class ParticleStyle : Object

    ----///////////////////
    --- End ParticleStyle
    ---////////////////////

    ----///////////////////
    --- Region3D Class 
    ---////////////////////

        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@class Region3D : Object
        local Region3D = {}
        
        --- Call this when processing to set up the region
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc26e.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Region3D)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        function Region3D:RenderStart() end        
        --- Call this after processing for cleanup
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc26e.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Region3D)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        function Region3D:RenderEnd	() end         
        --- Returns the center of the region, if any
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc26e.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Region3D)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        function Region3D:GetCenter() end          
        --- y	Returns the overall velocity of the region, if any
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc26e.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Region3D)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        function Region3D:GetVelocit() end         
        --- Returns a random point within the region
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc26e.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Region3D)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        function Region3D:RandPoint	() end         
        ---Tests if the region contains a given point
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc26e.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Region3D)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        function Region3D:Contains	() end          
        --- Tests if a point + velocity intersects the region
        ---[View documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc26e.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Region3D)
        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        function Region3D:Intersect	() end         

    ----///////////////////
    --- End Region3D Class 
    ---////////////////////

    ----///////////////////
    --- Shape Class 
    ---////////////////////

        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@class Shape : Object

    ----///////////////////
    --- End Shape Class 
    ---////////////////////

    ----///////////////////
    --- FontManager Class 
    ---////////////////////

        ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
        ---@class FontManager: Object

    ----///////////////////
    --- End FontManager Class 
    ---////////////////////

--/////////////////////
-- Object class
--/////////////////////


--//////////////////////
-- Pixel() 
--//////////////////////



    ---
    ---@class Pix : PixelOptions 
    local Pix = {}
    --- Zeroes all pixel values to black
    ---[More Details](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexfbf9.html?title=Eyeon:Script/Reference/Applications/Fuse/Classes/Pixel)
    ---
    function Pix:Clear() end


    

    ---
    ---Contructor function for a Pixel object 
    ---@return Pix
    ---@param options? Pix
    ---
    function Pixel(options) end





--//////////////////////
-- End of Pixel() 
--//////////////////////


--//////////////////////
-- ImageDomain Class 
--//////////////////////




    ---@class ImageDomain : Object
    local ImageDomain = {}

    ---
    ---Returns true if the rectangle is empty
    ---[View Documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc413.html?title=Third_Party_Fuses/ROIDS_Tutorial#Methods)
    ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
    ---
    function ImageDomain:IsEmpty()   end 

    ---
    ---Returns the intersection with another rectangle
    ---[View Documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc413.html?title=Third_Party_Fuses/ROIDS_Tutorial#Methods)
    ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
    ---@param imgDataWindow FurectInt
    ---
    function ImageDomain:Intersect(imgDataWindow) end

    ---Returns the union with another rectangle
    ---@param imgDataWindow FurectInt
    ---[View Documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc413.html?title=Third_Party_Fuses/ROIDS_Tutorial#Methods)
    ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
    function ImageDomain:Union(imgDataWindow) end    

    ---- Adds x pixels to the left and right edge and y pixels to the top and bottom edge
    ---@param x Pix
    ---@param y Pix
    ---[View Documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc413.html?title=Third_Party_Fuses/ROIDS_Tutorial#Methods)
    ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
    function ImageDomain:Inflate(x,y) end 

    ---Returns the rectangle's width
    ---[View Documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc413.html?title=Third_Party_Fuses/ROIDS_Tutorial#Methods)
    ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
    function ImageDomain:Width()     end 
    ---Returns the rectangle's height
    ---[View Documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc413.html?title=Third_Party_Fuses/ROIDS_Tutorial#Methods)
    ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
    function ImageDomain:Height()    end 

    ---Scales the rectangle (multiplies left and right edge by x and top and bottom edge by y)
    ---@param x Pix
    ---@param y Pix
    ---[View Documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc413.html?title=Third_Party_Fuses/ROIDS_Tutorial#Methods)
    ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
    function ImageDomain:Scale(x,y)  end 

    --- Shifts the rectangle x pixels to the right and y pixels up 
    ---@param x Pix
    ---@param y Pix
    ---[View Documents](https://www.steakunderwater.com/VFXPedia/96.0.243.189/indexc413.html?title=Third_Party_Fuses/ROIDS_Tutorial#Methods)
    ---No much available information. Please help fill this blank spot by summiting a pull request or an [issue](https://github.com/rne1223/fuse-snippets/issues)
    function ImageDomain:Offset(x,y) end 





--//////////////////////
-- End ImageDomain Class 
--//////////////////////
--//////////////////////
-- FuRectInt Class
--//////////////////////



    ---@class FurectInt : ImageDomain
    ---@field left number
    ---@field bottom number
    ---@field right number
    ---@field top number
    local FurectInt = {}

    ---@param options  "left" | "bottom" | "right" | "top"
    ---@return FurectInt
    function FuRectInt(options) end





--//////////////////////
-- FuRectInt Class
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
    ---
    function FuRegisterClass(name, class , attr)end
    



--//////////////////
-- End FuRegisterClass
--//////////////////

---@type ScriptOperator 
self = {} 

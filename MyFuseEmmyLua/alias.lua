
---Alias for booleans
---@alias bool 
---|>' true' # 
---| ' false' # 

--- Alias used in function Image:GetChanSize(channel) end in fuse_api
---@alias channel 
---|>'<channel>' # 

--- Alias used for Tools in FuRegisterClass
---@alias toolType 
---|>' CT_Tool' 
---| ' CT_ParticleTool'
---| ' CT_SourceTool'
---| ' CT_Modifier'
---| ' CT_ViewLUTPlugin'

---@alias inputControls 
---|>' "ButtonControl"'
---| ' "CheckboxControl"'
---| ' "ColorControl"'
---| ' "ComboControl" '
---| ' "ComboIDControl" '
---| ' "FileControl" '
---| ' "FontFileControl" '
---| ' "GradientControl" '
---| ' "LabelControl"'
---| ' "MultiButtonControl" '
---| ' "MultiButtonIDControl" '
---| ' "OffsetControl" '
---| ' "RangeControl" '
---| ' "ScrewControl" '
---| ' "SliderControl" '
---| ' "TextEditControl"'

---@alias previewControls
---|>' "ButtonControl"'
---| ' "AngleControl"'
---| ' "CrossHairControl"'
---| ' "ImgOverlayControl"'
---| ' "RectangleControl"'
---| ' "PointControl"'
---| ' "TransformControl"'

---@alias alignment 
---|>' "Left"'
---| ' "CenteredLeft"
---| ' "Center" 
---| ' "CenteredRight"
---| ' "Right"
 
---@alias linkDataType 
---|>' "Clip"'
---| ' "Copy"'
---| ' "Image"'	
---| ' "Number"'	
---| ' "Particles"'	
---| ' "Point"'	
---| ' "Text"'	
---| ' "GetData"'	
---| ' "SetData"'	
---| ' "InterpolateWith"'

---@alias ChannelOpOfOperation
---|>' "Copy"'
---|' "Add"'
---|' "Subtract"'
---|' "Multiply"'
---|' "Divide"'
---|' "Max"'
---|' "Min"'
---|' "Invert"'
---|' "Difference"'
---|' "SignedAdd"'
---|' "Threshold"'

---@alias ColorSpace
---| ' "RGB"'
---| ' "HLS"'
---| ' "YUV"'
---| ' "YIQ"'
---| ' "CMY"'
---| ' "HSV"'
---| ' "XYZ"'
---| ' "LAB"'
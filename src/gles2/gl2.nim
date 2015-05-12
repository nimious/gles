## *io-gles* - Nim bindings for OpenGL ES, the embedded 3D graphics library.
##
## This file is part of the `Nim I/O <http://nimio.us>`_ package collection.
## See the file LICENSE included in this distribution for licensing details.
## GitHub pull requests are encouraged. (c) 2015 Headcrash Industries LLC.

{.deadCodeElim: on.}


type
  GLbyte* = cschar
  GLclampf* = cfloat
  GLfixed* = cint
  GLshort* = cshort
  GLushort* = cushort
  GLvoid* = nil
  GLsync* = pointer
  GLint64* = clonglong
  GLuint64* = culonglong
  GLenum* = cuint
  GLuint* = cuint
  GLchar* = char
  GLfloat* = cfloat
  GLsizeiptr* = clong
  GLintptr* = clong
  GLbitfield* = cuint
  GLint* = cint
  GLboolean* = cuchar
  GLsizei* = cint
  GLubyte* = cuchar


const
  glDepthBufferBit* = 0x00000100
  glStencilBufferBit* = 0x00000400
  glColorBufferBit* = 0x00004000
  glFalse* = 0
  glTrue* = 1
  glPoints* = 0x00000000
  glLines* = 0x00000001
  glLineLoop* = 0x00000002
  glLineStrip* = 0x00000003
  glTriangles* = 0x00000004
  glTriangleStrip* = 0x00000005
  glTriangleFan* = 0x00000006
  glZero* = 0
  glOne* = 1
  glSrcColor* = 0x00000300
  glOneMinusSrcColor* = 0x00000301
  glSrcAlpha* = 0x00000302
  glOneMinusSrcAlpha* = 0x00000303
  glDstAlpha* = 0x00000304
  glOneMinusDstAlpha* = 0x00000305
  glDstColor* = 0x00000306
  glOneMinusDstColor* = 0x00000307
  glSrcAlphaSaturate* = 0x00000308
  glFuncAdd* = 0x00008006
  glBlendEquation* = 0x00008009
  glBlendEquationRgb* = 0x00008009
  glBlendEquationAlpha* = 0x0000883D
  glFuncSubtract* = 0x0000800A
  glFuncReverseSubtract* = 0x0000800B
  glBlendDstRgb* = 0x000080C8
  glBlendSrcRgb* = 0x000080C9
  glBlendDstAlpha* = 0x000080CA
  glBlendSrcAlpha* = 0x000080CB
  glConstantColor* = 0x00008001
  glOneMinusConstantColor* = 0x00008002
  glConstantAlpha* = 0x00008003
  glOneMinusConstantAlpha* = 0x00008004
  glBlendColor* = 0x00008005
  glArrayBuffer* = 0x00008892
  glElementArrayBuffer* = 0x00008893
  glArrayBufferBinding* = 0x00008894
  glElementArrayBufferBinding* = 0x00008895
  glStreamDraw* = 0x000088E0
  glStaticDraw* = 0x000088E4
  glDynamicDraw* = 0x000088E8
  glBufferSize* = 0x00008764
  glBufferUsage* = 0x00008765
  glCurrentVertexAttrib* = 0x00008626
  glFront* = 0x00000404
  glBack* = 0x00000405
  glFrontAndBack* = 0x00000408
  glTexture2d* = 0x00000DE1
  glCullFace* = 0x00000B44
  glBlend* = 0x00000BE2
  glDither* = 0x00000BD0
  glStencilTest* = 0x00000B90
  glDepthTest* = 0x00000B71
  glScissorTest* = 0x00000C11
  glPolygonOffsetFill* = 0x00008037
  glSampleAlphaToCoverage* = 0x0000809E
  glSampleCoverage* = 0x000080A0
  glNoError* = 0
  glInvalidEnum* = 0x00000500
  glInvalidValue* = 0x00000501
  glInvalidOperation* = 0x00000502
  glOutOfMemory* = 0x00000505
  glCw* = 0x00000900
  glCcw* = 0x00000901
  glLineWidth* = 0x00000B21
  glAliasedPointSizeRange* = 0x0000846D
  glAliasedLineWidthRange* = 0x0000846E
  glCullFaceMode* = 0x00000B45
  glFrontFace* = 0x00000B46
  glDepthRange* = 0x00000B70
  glDepthWritemask* = 0x00000B72
  glDepthClearValue* = 0x00000B73
  glDepthFunc* = 0x00000B74
  glStencilClearValue* = 0x00000B91
  glStencilFunc* = 0x00000B92
  glStencilFail* = 0x00000B94
  glStencilPassDepthFail* = 0x00000B95
  glStencilPassDepthPass* = 0x00000B96
  glStencilRef* = 0x00000B97
  glStencilValueMask* = 0x00000B93
  glStencilWritemask* = 0x00000B98
  glStencilBackFunc* = 0x00008800
  glStencilBackFail* = 0x00008801
  glStencilBackPassDepthFail* = 0x00008802
  glStencilBackPassDepthPass* = 0x00008803
  glStencilBackRef* = 0x00008CA3
  glStencilBackValueMask* = 0x00008CA4
  glStencilBackWritemask* = 0x00008CA5
  glViewport* = 0x00000BA2
  glScissorBox* = 0x00000C10
  glColorClearValue* = 0x00000C22
  glColorWritemask* = 0x00000C23
  glUnpackAlignment* = 0x00000CF5
  glPackAlignment* = 0x00000D05
  glMaxTextureSize* = 0x00000D33
  glMaxViewportDims* = 0x00000D3A
  glSubpixelBits* = 0x00000D50
  glRedBits* = 0x00000D52
  glGreenBits* = 0x00000D53
  glBlueBits* = 0x00000D54
  glAlphaBits* = 0x00000D55
  glDepthBits* = 0x00000D56
  glStencilBits* = 0x00000D57
  glPolygonOffsetUnits* = 0x00002A00
  glPolygonOffsetFactor* = 0x00008038
  glTextureBinding2d* = 0x00008069
  glSampleBuffers* = 0x000080A8
  glSamples* = 0x000080A9
  glSampleCoverageValue* = 0x000080AA
  glSampleCoverageInvert* = 0x000080AB
  glNumCompressedTextureFormats* = 0x000086A2
  glCompressedTextureFormats* = 0x000086A3
  glDontCare* = 0x00001100
  glFastest* = 0x00001101
  glNicest* = 0x00001102
  glGenerateMipmapHint* = 0x00008192
  glByte* = 0x00001400
  glUnsignedByte* = 0x00001401
  glShort* = 0x00001402
  glUnsignedShort* = 0x00001403
  glInt* = 0x00001404
  glUnsignedInt* = 0x00001405
  glFloat* = 0x00001406
  glFixed* = 0x0000140C
  glDepthComponent* = 0x00001902
  glAlpha* = 0x00001906
  glRgb* = 0x00001907
  glRgba* = 0x00001908
  glLuminance* = 0x00001909
  glLuminanceAlpha* = 0x0000190A
  glUnsignedShort4444* = 0x00008033
  glUnsignedShort5551* = 0x00008034
  glUnsignedShort565* = 0x00008363
  glFragmentShader* = 0x00008B30
  glVertexShader* = 0x00008B31
  glMaxVertexAttribs* = 0x00008869
  glMaxVertexUniformVectors* = 0x00008DFB
  glMaxVaryingVectors* = 0x00008DFC
  glMaxCombinedTextureImageUnits* = 0x00008B4D
  glMaxVertexTextureImageUnits* = 0x00008B4C
  glMaxTextureImageUnits* = 0x00008872
  glMaxFragmentUniformVectors* = 0x00008DFD
  glShaderType* = 0x00008B4F
  glDeleteStatus* = 0x00008B80
  glLinkStatus* = 0x00008B82
  glValidateStatus* = 0x00008B83
  glAttachedShaders* = 0x00008B85
  glActiveUniforms* = 0x00008B86
  glActiveUniformMaxLength* = 0x00008B87
  glActiveAttributes* = 0x00008B89
  glActiveAttributeMaxLength* = 0x00008B8A
  glShadingLanguageVersion* = 0x00008B8C
  glCurrentProgram* = 0x00008B8D
  glNever* = 0x00000200
  glLess* = 0x00000201
  glEqual* = 0x00000202
  glLequal* = 0x00000203
  glGreater* = 0x00000204
  glNotequal* = 0x00000205
  glGequal* = 0x00000206
  glAlways* = 0x00000207
  glKeep* = 0x00001E00
  glReplace* = 0x00001E01
  glIncr* = 0x00001E02
  glDecr* = 0x00001E03
  glInvert* = 0x0000150A
  glIncrWrap* = 0x00008507
  glDecrWrap* = 0x00008508
  glVendor* = 0x00001F00
  glRenderer* = 0x00001F01
  glVersion* = 0x00001F02
  glExtensions* = 0x00001F03
  glNearest* = 0x00002600
  glLinear* = 0x00002601
  glNearestMipmapNearest* = 0x00002700
  glLinearMipmapNearest* = 0x00002701
  glNearestMipmapLinear* = 0x00002702
  glLinearMipmapLinear* = 0x00002703
  glTextureMagFilter* = 0x00002800
  glTextureMinFilter* = 0x00002801
  glTextureWrapS* = 0x00002802
  glTextureWrapT* = 0x00002803
  glTexture* = 0x00001702
  glTextureCubeMap* = 0x00008513
  glTextureBindingCubeMap* = 0x00008514
  glTextureCubeMapPositiveX* = 0x00008515
  glTextureCubeMapNegativeX* = 0x00008516
  glTextureCubeMapPositiveY* = 0x00008517
  glTextureCubeMapNegativeY* = 0x00008518
  glTextureCubeMapPositiveZ* = 0x00008519
  glTextureCubeMapNegativeZ* = 0x0000851A
  glMaxCubeMapTextureSize* = 0x0000851C
  glTexture0* = 0x000084C0
  glTexture1* = 0x000084C1
  glTexture2* = 0x000084C2
  glTexture3* = 0x000084C3
  glTexture4* = 0x000084C4
  glTexture5* = 0x000084C5
  glTexture6* = 0x000084C6
  glTexture7* = 0x000084C7
  glTexture8* = 0x000084C8
  glTexture9* = 0x000084C9
  glTexture10* = 0x000084CA
  glTexture11* = 0x000084CB
  glTexture12* = 0x000084CC
  glTexture13* = 0x000084CD
  glTexture14* = 0x000084CE
  glTexture15* = 0x000084CF
  glTexture16* = 0x000084D0
  glTexture17* = 0x000084D1
  glTexture18* = 0x000084D2
  glTexture19* = 0x000084D3
  glTexture20* = 0x000084D4
  glTexture21* = 0x000084D5
  glTexture22* = 0x000084D6
  glTexture23* = 0x000084D7
  glTexture24* = 0x000084D8
  glTexture25* = 0x000084D9
  glTexture26* = 0x000084DA
  glTexture27* = 0x000084DB
  glTexture28* = 0x000084DC
  glTexture29* = 0x000084DD
  glTexture30* = 0x000084DE
  glTexture31* = 0x000084DF
  glActiveTexture* = 0x000084E0
  glRepeat* = 0x00002901
  glClampToEdge* = 0x0000812F
  glMirroredRepeat* = 0x00008370
  glFloatVec2* = 0x00008B50
  glFloatVec3* = 0x00008B51
  glFloatVec4* = 0x00008B52
  glIntVec2* = 0x00008B53
  glIntVec3* = 0x00008B54
  glIntVec4* = 0x00008B55
  glBool* = 0x00008B56
  glBoolVec2* = 0x00008B57
  glBoolVec3* = 0x00008B58
  glBoolVec4* = 0x00008B59
  glFloatMat2* = 0x00008B5A
  glFloatMat3* = 0x00008B5B
  glFloatMat4* = 0x00008B5C
  glSampler2d* = 0x00008B5E
  glSamplerCube* = 0x00008B60
  glVertexAttribArrayEnabled* = 0x00008622
  glVertexAttribArraySize* = 0x00008623
  glVertexAttribArrayStride* = 0x00008624
  glVertexAttribArrayType* = 0x00008625
  glVertexAttribArrayNormalized* = 0x0000886A
  glVertexAttribArrayPointer* = 0x00008645
  glVertexAttribArrayBufferBinding* = 0x0000889F
  glImplementationColorReadType* = 0x00008B9A
  glImplementationColorReadFormat* = 0x00008B9B
  glCompileStatus* = 0x00008B81
  glInfoLogLength* = 0x00008B84
  glShaderSourceLength* = 0x00008B88
  glShaderCompiler* = 0x00008DFA
  glShaderBinaryFormats* = 0x00008DF8
  glNumShaderBinaryFormats* = 0x00008DF9
  glLowFloat* = 0x00008DF0
  glMediumFloat* = 0x00008DF1
  glHighFloat* = 0x00008DF2
  glLowInt* = 0x00008DF3
  glMediumInt* = 0x00008DF4
  glHighInt* = 0x00008DF5
  glFramebuffer* = 0x00008D40
  glRenderbuffer* = 0x00008D41
  glRgba4* = 0x00008056
  glRgb5A1* = 0x00008057
  glRgb565* = 0x00008D62
  glDepthComponent16* = 0x000081A5
  glStencilIndex8* = 0x00008D48
  glRenderbufferWidth* = 0x00008D42
  glRenderbufferHeight* = 0x00008D43
  glRenderbufferInternalFormat* = 0x00008D44
  glRenderbufferRedSize* = 0x00008D50
  glRenderbufferGreenSize* = 0x00008D51
  glRenderbufferBlueSize* = 0x00008D52
  glRenderbufferAlphaSize* = 0x00008D53
  glRenderbufferDepthSize* = 0x00008D54
  glRenderbufferStencilSize* = 0x00008D55
  glFramebufferAttachmentObjectType* = 0x00008CD0
  glFramebufferAttachmentObjectName* = 0x00008CD1
  glFramebufferAttachmentTextureLevel* = 0x00008CD2
  glFramebufferAttachmentTextureCubeMapFace* = 0x00008CD3
  glColorAttachment0* = 0x00008CE0
  glDepthAttachment* = 0x00008D00
  glStencilAttachment* = 0x00008D20
  glNone* = 0
  glFramebufferComplete* = 0x00008CD5
  glFramebufferIncompleteAttachment* = 0x00008CD6
  glFramebufferIncompleteMissingAttachment* = 0x00008CD7
  glFramebufferIncompleteDimensions* = 0x00008CD9
  glFramebufferUnsupported* = 0x00008CDD
  glFramebufferBinding* = 0x00008CA6
  glRenderbufferBinding* = 0x00008CA7
  glMaxRenderbufferSize* = 0x000084E8
  glInvalidFramebufferOperation* = 0x00000506


proc glActiveTexture*(texture: GLenum) {.importc.}
  ## Select active texture unit.
  ##
  ## texture
  ##   Specifies which texture unit to make active. The number of texture units
  ##   is implementation dependent, but must be at least `8`. `texture` must be
  ##   one of `gLTEXTUREi`, where `i` ranges from `0` to
  ##   `(glMaxCombinedTextureImageUnits - 1)`. The initial value is `glTexture0`.


proc glAttachShader*(program: GLuint; shader: GLuint) {.importc.}
  ## Attach a shader object to a program object.
  ##
  ## program
  ##   Specifies the program object to which a shader object will be attached.
  ## shader
  ##   Specifies the shader object that is to be attached.


proc glBindAttribLocation*(program: GLuint; index: GLuint; name: ptr GLchar)
  {.importc.}
  ## Associate a generic vertex attribute index with a named attribute variable.
  ##
  ## program
  ##   Specifies the handle of the program object in which the association is to
  ##   be made.
  ## index
  ##   Specifies the index of the generic vertex attribute to be bound.
  ## name
  ##   Specifies a null terminated string containing the name of the vertex
  ##   shader attribute variable to which index is to be bound.


proc glBindBuffer*(target: GLenum; buffer: GLuint) {.importc.}
  ## Bind a named buffer object.
  ##
  ## target
  ##   Specifies the target to which the buffer object is bound. The symbolic
  ##   constant must be `glArrayBuffer` or `glElementArrayBuffer`.
  ## buffer
  ##   Specifies the name of a buffer object.


proc glBindFramebuffer*(target: GLenum; framebuffer: GLuint) {.importc.}
  ## Bind a named framebuffer object.
  ##
  ## target
  ##   Specifies the target to which the framebuffer object is bound. The
  ##   symbolic constant must be `glFramebuffer`.
  ## framebuffer
  ##   Specifies the name of a framebuffer object.


proc glBindRenderbuffer*(target: GLenum; renderbuffer: GLuint) {.importc.}
  ## Bind a named renderbuffer object.
  ##
  ## target
  ##   Specifies the target to which the renderbuffer object is bound. The
  ##   symbolic constant must be `glRenderbuffer`.
  ## renderbuffer
  ##   Specifies the name of a renderbuffer object.


proc glBindTexture*(target: GLenum; texture: GLuint) {.importc.}
  ## Bind a named texture to a texturing target.
  ##
  ## target
  ##   Specifies the target of the active texture unit to which the texture is
  ##   bound. Must be either `glTexture2d` or `glTextureCubeMap`.
  ## texture
  ##   Specifies the name of a texture.


proc glBlendColor*(red: GLfloat; green: GLfloat; blue: GLfloat; alpha: GLfloat)
  {.importc.}et the blend color.
  ## Set the blend color.
  ##
  ## red, green, blue, alpha
  ##   Specify the components of `glBlendColor`.


proc glBlendEquation*(mode: GLenum) {.importc.}
  ## Specify the equation used for both the RGB blend equation and the Alpha
  ## blend equation.
  ##
  ## mode
  ##   Specifies how source and destination colors are combined. It must be
  ##   `glFuncAdd`, `glFuncSubtract`, or `glFuncReverseSubtract`.


proc glBlendEquationSeparate*(modeRGB: GLenum; modeAlpha: GLenum) {.importc.}
  ## Set the RGB blend equation and the alpha blend equation separately.
  ##
  ## modeRGB
  ##   Specifies the RGB blend equation, how the red, green, and blue components
  ##   of the source and destination colors are combined. It must be
  ##   `glFuncAdd`, `glFuncSubtract`, or `glFuncReverseSubtract`.
  ## modeAlpha
  ##   Specifies the alpha blend equation, how the alpha component of the source
  ##   and destination colors are combined. It must be `glFuncAdd`,
  ##   `glFuncSubtract`, or `glFuncReverseSubtract`.


proc glBlendFunc*(sfactor: GLenum; dfactor: GLenum) {.importc.}
  ## Specify pixel arithmetic.
  ##
  ## sfactor
  ##   Specifies how the red, green, blue, and alpha source blending factors are
  ##   computed. The following symbolic constants are accepted: `glZero`,
  ##   `glOne`, `glSrcColor`, `glOneMinusSrcColor`, `glDstColor`,
  ##   `glOneMinusDstColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, `glDstAlpha`,
  ##   `glOneMinusDstAlpha`, `glConstantColor`, `glOneMinusConstantColor`,
  ##   `glConstantAlpha`, `glOneMinusConstantAlpha`, and `glSrcAlphaSaturate`.
  ##   The initial value is `glOne`.
  ## dfactor
  ##   Specifies how the red, green, blue, and alpha destination blending
  ##   factors are computed. The following symbolic constants are accepted:
  ##   `glZero`, `glOne`, `glSrcColor`, `glOneMinusSrcColor`, `glDstColor`,
  ##   `glOneMinusDstColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, `glDstAlpha`,
  ##   `glOneMinusDstAlpha`, `glConstantColor`, `glOneMinusConstantColor`,
  ##   `glConstantAlpha`, and `glOneMinusConstantAlpha`. The initial value is
  ##   `glZero`.


proc glBlendFuncSeparate*(sfactorRGB: GLenum; dfactorRGB: GLenum;
  sfactorAlpha: GLenum; dfactorAlpha: GLenum) {.importc.}
  ## Specify pixel arithmetic for RGB and alpha components separately.
  ##
  ## srcRGB
  ##   Specifies how the red, green, and blue blending factors are computed. The
  ##   following symbolic constants are accepted: `glZero`, `glOne`,
  ##   `glSrcColor`, `glOneMinusSrcColor`, `glDstColor`, `glOneMinusDstColor`,
  ##   `glSrcAlpha`, `glOneMinusSrcAlpha`, `glDstAlpha`, `glOneMinusDstAlpha`,
  ##   `glConstantColor`, `glOneMinusConstantColor`, `glConstantAlpha`,
  ##   `glOneMinusConstantAlpha`, and `glSrcAlphaSaturate`. The initial value is
  ##   `glOne`.
  ## dstRGB
  ##   Specifies how the red, green, and blue destination blending factors are
  ##   computed. The following symbolic constants are accepted: `glZero`,
  ##   `glOne`, `glSrcColor`, `glOneMinusSrcColor`, `glDstColor`,
  ##   `glOneMinusDstColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, `glDstAlpha`,
  ##   `glOneMinusDstAlpha`. `glConstantColor`, `glOneMinusConstantColor`,
  ##   `glConstantAlpha`, and `glOneMinusConstantAlpha`. The initial value is
  ##   `glZero`.
  ## srcAlpha
  ##   Specified how the alpha source blending factor is computed. The same
  ##   symbolic constants are accepted as for `srcRGB`. The initial value is
  ##   `glOne`.
  ## dstAlpha
  ##   Specified how the alpha destination blending factor is computed. The same
  ##   symbolic constants are accepted as for `dstRGB`. The initial value is
  ##   `glZero`.


proc glBufferData*(target: GLenum; size: GLsizeiptr; data: pointer;
  usage: GLenum) {.importc.}
  ## Create and initialize a buffer object's data store.
  ##
  ## target
  ##   Specifies the target buffer object. The symbolic constant must be
  ##   `glArrayBuffer` or `glElementArrayBuffer`.
  ## size
  ##   Specifies the size in bytes of the buffer object's new data store.
  ## data
  ##   Specifies a pointer to data that will be copied into the data store for
  ##   initialization, or `nil` if no data is to be copied.
  ## usage
  ##   Specifies the expected usage pattern of the data store. The symbolic
  ##   constant must be `glStreamDraw`, `glStaticDraw`, or `glDynamicDraw`.


proc glBufferSubData*(target: GLenum; offset: GLintptr; size: GLsizeiptr;
  data: pointer) {.importc.}
  ## Update a subset of a buffer object's data store.
  ##
  ## target
  ##   Specifies the target buffer object. The symbolic constant must be
  ##   `glArrayBuffer` or `glElementArrayBuffer`.
  ## offset
  ##   Specifies the offset into the buffer object's data store where data
  ##   replacement will begin, measured in bytes.
  ## size
  ##   Specifies the size in bytes of the data store region being replaced.
  ## data
  ##   Specifies a pointer to the new data that will be copied into the data
  ##   store.


proc glCheckFramebufferStatus*(target: GLenum): GLenum {.importc.}
  ## Return the framebuffer completeness status of a framebuffer object.
  ##
  ## target
  ##   Specifies the target framebuffer object. The symbolic constant must be
  ##   `glFramebuffer`.


proc glClear*(mask: GLbitfield) {.importc.}
  ## Clear buffers to preset values.
  ##
  ## mask
  ##   Bitwise OR of masks that indicate the buffers to be cleared. The three
  ##   masks are `glColorBufferBit`, `glDepthBufferBit`, and
  ##   `glStencilBufferBit`.


proc glClearColor*(red: GLfloat; green: GLfloat; blue: GLfloat; alpha: GLfloat)
  {.importc.}
  ## Specify clear values for the color buffers.
  ##
  ## red, green, blue, alpha
  ##   Specify the red, green, blue, and alpha values used when the color
  ##   buffers are cleared. The initial values are all `0`.


proc glClearDepthf*(d: GLfloat) {.importc.}
  ## Specify the clear value for the depth buffer.
  ##
  ## depth
  ##   Specifies the depth value used when the depth buffer is cleared. The
  ##   initial value is `1`.


proc glClearStencil*(s: GLint) {.importc.}
  ## Specify the clear value for the stencil buffer.
  ##
  ## s
  ##   Specifies the index used when the stencil buffer is cleared. The initial
  ##   value is `0`.


proc glColorMask*(red: GLboolean; green: GLboolean; blue: GLboolean;
  alpha: GLboolean) {.importc.}
  ## Enable and disable writing of frame buffer color components.
  ##
  ## red, green, blue, alpha
  ##   Specify whether red, green, blue, and alpha can or cannot be written into
  ##   the frame buffer. The initial values are all `glTrue`, indicating that
  ##   the color components can be written.


proc glCompileShader*(shader: GLuint) {.importc.}
  ## Compile a shader object.
  ##
  ## shader
  ##   Specifies the shader object to be compiled.


proc glCompressedTexImage2D*(target: GLenum; level: GLint;
  internalformat: GLenum; width: GLsizei; height: GLsizei; border: GLint;
  imageSize: GLsizei; data: pointer) {.importc.}
  ## Specify a two-dimensional texture image in a compressed format.
  ##
  ## target
  ##   Specifies the target texture of the active texture unit. Must be
  ##   `glTexture2d`, `glTextureCubeMapPositiveX`, `glTextureCubeMapNegativeX`,
  ##   `glTextureCubeMapPositiveY`, `glTextureCubeMapNegativeY`,
  ##   `glTextureCubeMapPositiveZ`, or `glTextureCubeMapNegativeZ`.
  ## level
  ##   Specifies the level-of-detail number. Level 0 is the base image level.
  ##   Level n is the nth mipmap reduction image.
  ## internalformat
  ##   Specifies the format of the compressed image data stored at address data.
  ## width
  ##   Specifies the width of the texture image. All implementations support 2D
  ##   texture images that are at least 64 texels wide and cube-mapped texture
  ##   images that are at least 16 texels wide.
  ## height
  ##   Specifies the height of the texture image. All implementations support 2D
  ##   texture images that are at least 64 texels high and cube-mapped texture
  ##   images that are at least 16 texels high.
  ## border
  ##   Specifies the width of the border. Must be `0`.
  ## imageSize
  ##   Specifies the number of unsigned bytes of image data starting at the
  ##   address specified by `data`.
  ## data
  ##   Specifies a pointer to the compressed image data in memory.


proc glCompressedTexSubImage2D*(target: GLenum; level: GLint; xoffset: GLint;
  yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum;
  imageSize: GLsizei; data: pointer) {.importc.}
  ## Specify a two-dimensional texture subimage in a compressed format.
  ##
  ## target
  ##   Specifies the target texture of the active texture unit. Must be
  ##   `glTexture2d`, `glTextureCubeMapPositiveX`, `glTextureCubeMapNegativeX`,
  ##   `glTextureCubeMapPositiveY`, `glTextureCubeMapNegativeY`,
  ##   `glTextureCubeMapPositiveZ`, or `glTextureCubeMapNegativeZ`.
  ## level
  ##   Specifies the level-of-detail number. Level 0 is the base image level.
  ##   Level n is the nth mipmap reduction image.
  ## xoffset
  ##   Specifies a texel offset in the x direction within the texture array.
  ## yoffset
  ##   Specifies a texel offset in the y direction within the texture array.
  ## width
  ##   Specifies the width of the texture subimage.
  ## height
  ##   Specifies the height of the texture subimage.
  ## format
  ##   Specifies the format of the compressed image data stored at address
  ##   data.
  ## imageSize
  ##   Specifies the number of unsigned bytes of image data starting at the
  ##   address specified by `data`.
  ## data
  ##   Specifies a pointer to the compressed image data in memory.


proc glCopyTexImage2D*(target: GLenum; level: GLint; internalformat: GLenum;
  x: GLint; y: GLint;  width: GLsizei; height: GLsizei; border: GLint)
  {.importc.}
  ## Copy pixels into a 2D texture image.
  ##
  ## target
  ##   Specifies the target texture of the active texture unit. Must be
  ##   `glTexture2d`, `glTextureCubeMapPositiveX`, `glTextureCubeMapNegativeX`,
  ##   `glTextureCubeMapPositiveY`, `glTextureCubeMapNegativeY`,
  ##   `glTextureCubeMapPositiveZ`, or `glTextureCubeMapNegativeZ`.
  ## level
  ##   Specifies the level-of-detail number. Level 0 is the base image level.
  ##   Level n is the nth mipmap reduction image.
  ## internalformat
  ##   Specifies the internal format of the texture. Must be one of the
  ##   following symbolic constants: `glAlpha`, `glLuminance`,
  ##   `glLuminanceAlpha`, `glRgb`, or `glRgba`.
  ## x, y
  ##   Specify the window coordinates of the lower left corner of the
  ##   rectangular region of pixels to be copied.
  ## width
  ##   Specifies the width of the texture image. All implementations support
  ##   2D texture images that are at least 64 texels wide and cube-mapped
  ##   texture images that are at least 16 texels wide.
  ## height
  ##   Specifies the height of the texture image. All implementations support
  ##   2D texture images that are at least 64 texels high and cube-mapped
  ##   texture images that are at least 16 texels high.
  ## border
  ##   Specifies the width of the border. Must be `0`.


proc glCopyTexSubImage2D*(target: GLenum; level: GLint; xoffset: GLint;
  yoffset: GLint; x: GLint; y: GLint; width: GLsizei; height: GLsizei)
  {.importc.}
  ## Copy a two-dimensional texture subimage.
  ##
  ## target
  ##   Specifies the target texture of the active texture unit. Must be
  ##   `glTexture2d`, `glTextureCubeMapPositiveX`, `glTextureCubeMapNegativeX`,
  ##   `glTextureCubeMapPositiveY`, `glTextureCubeMapNegativeY`,
  ##   `glTextureCubeMapPositiveZ`, or `glTextureCubeMapNegativeZ`.
  ## level
  ##   Specifies the level-of-detail number. Level 0 is the base image level.
  ##   Level n is the nth mipmap reduction image.
  ## xoffset
  ##   Specifies a texel offset in the x direction within the texture array.
  ## yoffset
  ##   Specifies a texel offset in the y direction within the texture array.
  ## x, y
  ##   Specify the window coordinates of the lower left corner of the
  ##   rectangular region of pixels to be copied.
  ## width
  ##   Specifies the width of the texture subimage.
  ## height
  ##   Specifies the height of the texture subimage.


proc glCreateProgram*(): GLuint {.importc.}
  ## Create a program object.


proc glCreateShader*(`type`: GLenum): GLuint {.importc.}
  ## Create a shader object.
  ##
  ## shaderType
  ##   Specifies the type of shader to be created. Must be either
  ##   `glVertexShader` or `glFragmentShader`.


proc glCullFace*(mode: GLenum) {.importc.}
  ## Specify whether front- or back-facing polygons can be culled.
  ##
  ## mode
  ##   Specifies whether front- or back-facing polygons are candidates for
  ##   culling. Symbolic constants `glFront`, `glBack`, and `glFrontAndBack` are
  ##   accepted. The initial value is `glBack`.


proc glDeleteBuffers*(n: GLsizei; buffers: ptr GLuint) {.importc.}
  ## Delete named buffer objects.
  ##
  ## n
  ##   Specifies the number of buffer objects to be deleted.
  ## buffers
  ##   Specifies an array of buffer objects to be deleted.


proc glDeleteFramebuffers*(n: GLsizei; framebuffers: ptr GLuint) {.importc.}
  ## Delete named framebuffer objects.
  ##
  ## n
  ##   Specifies the number of framebuffer objects to be deleted.
  ## framebuffers
  ##   Specifies an array of framebuffer objects to be deleted.


proc glDeleteProgram*(program: GLuint) {.importc.}
  ## Delete a program object.
  ##
  ## program
  ##   Specifies the program object to be deleted.


proc glDeleteRenderbuffers*(n: GLsizei; renderbuffers: ptr GLuint) {.importc.}
  ## Delete named renderbuffer objects.
  ##
  ## n
  ##   Specifies the number of renderbuffer objects to be deleted.
  ## renderbuffers
  ##   Specifies an array of renderbuffer objects to be deleted.


proc glDeleteShader*(shader: GLuint) {.importc.}
  ## Delete a shader object.
  ##
  ## shader
  ##   Specifies the shader object to be deleted.


proc glDeleteTextures*(n: GLsizei; textures: ptr GLuint) {.importc.}
  ## Delete named textures.
  ##
  ## n
  ##   Specifies the number of textures to be deleted.
  ## textures
  ##   Specifies an array of textures to be deleted.


proc glDepthFunc*(`func`: GLenum) {.importc.}
  ## Specify the value used for depth buffer comparisons.
  ##
  ## func
  ##   Specifies the depth comparison function. Symbolic constants  `glNever`,
  ##   `glLess`, `glEqual`, `glLequal`, `glGreater`, `glNotequal`, `glGequal`,
  ##   and `glAlways` are accepted. The initial value is `glLess`.


proc glDepthMask*(flag: GLboolean) {.importc.}
  ## Enable or disable writing into the depth buffer.
  ##
  ## flag
  ##   Specifies whether the depth buffer is enabled for writing. If flag is
  ##   `glFalse`, depth buffer writing is disabled. Otherwise, it is enabled.
  ##   Initially, depth buffer writing is enabled.


proc glDepthRangef*(n: GLfloat; f: GLfloat) {.importc.}
  ## Specify mapping of depth values from normalized device coordinates to
  ## window coordinates.
  ##
  ## nearVal
  ##   Specifies the mapping of the near clipping plane to window coordinates.
  ##   The initial value is `0`.
  ## farVal
  ##   Specifies the mapping of the far clipping plane to window coordinates.
  ##   The initial value is `1`.


proc glDetachShader*(program: GLuint; shader: GLuint) {.importc.}
  ## Detach a shader object from a program object.
  ##
  ## program
  ##   Specifies the program object from which to detach the shader object.
  ## shader
  ##   Specifies the shader object to be detached.


proc glDisable*(cap: GLenum) {.importc.}
  ## Disable server-side GL capabilities.
  ##
  ## cap
  ##   Specifies a symbolic constant indicating a GL capability.


proc glDisableVertexAttribArray*(index: GLuint) {.importc.}
  ## Disable a generic vertex attribute array.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be disabled.


proc glDrawArrays*(mode: GLenum; first: GLint; count: GLsizei) {.importc.}
  ## Render primitives from array data.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `glPoints`, `glLineStrip`, `glLineLoop`, `glLines`, `glTriangleStrip`,
  ##   `glTriangleFan`, and `glTriangles` are accepted.
  ## first
  ##   Specifies the starting index in the enabled arrays.
  ## count
  ## Specifies the number of indices to be rendered.


proc glDrawElements*(mode: GLenum; count: GLsizei; `type`: GLenum;
  indices: pointer) {.importc.}
  ## Render primitives from array data.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `glPoints`, `glLineStrip`, `glLineLoop`, `glLines`, `glTriangleStrip`,
  ##   `glTriangleFan`, and `glTriangles` are accepted.
  ## count
  ##   Specifies the number of elements to be rendered.
  ## type
  ##   Specifies the type of the values in indices. Must be `glUnsignedByte` or
  ##   `glUnsignedShort`.
  ## indices
  ##   Specifies a pointer to the location where the indices are stored.


proc glEnable*(cap: GLenum) {.importc.}
  ## Enable server-side GL capabilities.
  ##
  ## cap
  ##   Specifies a symbolic constant indicating a GL capability.


proc glEnableVertexAttribArray*(index: GLuint) {.importc.}
  ## Enable a generic vertex attribute array.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be enabled .


proc glFinish*() {.importc.}
  ## Block until all GL execution is complete.


proc glFlush*() {.importc.}
  ## Force execution of GL commands in finite time.


proc glFramebufferRenderbuffer*(target: GLenum; attachment: GLenum;
  renderbuffertarget: GLenum; renderbuffer: GLuint) {.importc.}
  ## Attach a renderbuffer object to a framebuffer object.
  ##
  ## target
  ##   Specifies the framebuffer target. The symbolic constant must be
  ##   `glFramebuffer`.
  ## attachment
  ##   Specifies the attachment point to which renderbuffer should be attached.
  ##   Must be one of the following symbolic constants: `glColorAttachment0`,
  ##   `glDepthAttachment`, or `glStencilAttachment`.
  ## renderbuffertarget
  ##   Specifies the renderbuffer target. The symbolic constant must be
  ##   `glRenderbuffer`.
  ## renderbuffer
  ##   Specifies the renderbuffer object that is to be attached.


proc glFramebufferTexture2D*(target: GLenum; attachment: GLenum;
  textarget: GLenum; texture: GLuint; level: GLint) {.importc.}
  ## Attach a texture image to a framebuffer object.
  ##
  ## target
  ##   Specifies the framebuffer target. The symbolic constant must be
  ##   `glFramebuffer`.
  ## attachment
  ##   Specifies the attachment point to which an image from texture should be
  ##   attached. Must be one of the following symbolic constants:
  ##   `glColorAttachment0`, `glDepthAttachment`, or `glStencilAttachment`.
  ## textarget
  ##   Specifies the texture target. Must be one of the following symbolic
  ##   constants: `glTexture2d`, `glTextureCubeMapPositiveX`,
  ##   `glTextureCubeMapNegativeX`, `glTextureCubeMapPositiveY`,
  ##   `glTextureCubeMapNegativeY`, `glTextureCubeMapPositiveZ`, or
  ##   `glTextureCubeMapNegativeZ`.
  ## texture
  ##   Specifies the texture object whose image is to be attached.
  ## level
  ##   Specifies the mipmap level of the texture image to be attached, which
  ##   must be `0`.


proc glFrontFace*(mode: GLenum) {.importc.}
  ## Define front- and back-facing polygons.
  ##
  ## mode
  ##   Specifies the orientation of front-facing polygons. `glCw` and `glCcw`
  ##   are accepted. The initial value is `glCcw`.


proc glGenBuffers*(n: GLsizei; buffers: ptr GLuint) {.importc.}
  ## Generate buffer object names.
  ##
  ## n
  ##   Specifies the number of buffer object names to be generated.
  ## buffers
  ##   Specifies an array in which the generated buffer object names are stored.


proc glGenerateMipmap*(target: GLenum) {.importc.}
  ## Generate a complete set of mipmaps for a texture object.
  ##
  ## target
  ##   Specifies the texture target of the active texture unit to which the
  ##   texture object is bound whose mipmaps will be generated. Must be one of
  ##   the following symbolic constants: `glTexture2d` or `glTextureCubeMap`.


proc glGenFramebuffers*(n: GLsizei; framebuffers: ptr GLuint) {.importc.}
  ## Generate framebuffer object names.
  ##
  ## n
  ##   Specifies the number of framebuffer object names to be generated.
  ## framebuffers
  ##   Specifies an array in which the generated framebuffer object names are
  ##   stored.


proc glGenRenderbuffers*(n: GLsizei; renderbuffers: ptr GLuint) {.importc.}
  ## Generate renderbuffer object names.
  ##
  ## n
  ##   Specifies the number of renderbuffer object names to be generated.
  ## renderbuffers
  ##   Specifies an array in which the generated renderbuffer object names are
  ##   stored.


proc glGenTextures*(n: GLsizei; textures: ptr GLuint) {.importc.}
  ## Generate texture names.
  ##
  ## n
  ##   Specifies the number of texture names to be generated.
  ## textures
  ##   Specifies an array in which the generated texture names are stored.


proc glGetActiveAttrib*(program: GLuint; index: GLuint; bufSize: GLsizei;
  length: ptr GLsizei; size: ptr GLint; `type`: ptr GLenum; name: ptr GLchar)
  {.importc.}
  ## Return information about an active attribute variable.
  ##
  ## program
  ##  Specifies the program object to be queried.
  ## index
  ##   Specifies the index of the attribute variable to be queried.
  ## bufSize
  ##   Specifies the maximum number of characters OpenGL is allowed to write in
  ##   the character buffer indicated by name.
  ## length
  ##   Returns the number of characters actually written by OpenGL in the string
  ##   indicated by name (excluding the null terminator) if a value other than
  ##   `nil` is passed.
  ## size
  ##   Returns the size of the attribute variable.
  ## type
  ##   Returns the data type of the attribute variable.
  ## name
  ##   Returns a null terminated string containing the name of the attribute
  ##   variable.


proc glGetActiveUniform*(program: GLuint; index: GLuint; bufSize: GLsizei;
  length: ptr GLsizei; size: ptr GLint; `type`: ptr GLenum;
  name: ptr GLchar) {.importc.}
  ## Return information about an active uniform variable.
  ##
  ## program
  ##   Specifies the program object to be queried.
  ## index
  ##   Specifies the index of the uniform variable to be queried.
  ## bufSize
  ##   Specifies the maximum number of characters OpenGL is allowed to write in
  ##   the character buffer indicated by name.
  ## length
  ##   Returns the number of characters actually written by OpenGL in the string
  ##   indicated by name (excluding the null terminator) if a value other than
  ##   `nil` is passed.
  ## size
  ##   Returns the size of the uniform variable.
  ## type
  ##   Returns the data type of the uniform variable.
  ## name
  ##   Returns a null terminated string containing the name of the uniform
  ##   variable.


proc glGetAttachedShaders*(program: GLuint; maxCount: GLsizei;
  count: ptr GLsizei; shaders: ptr GLuint) {.importc.}
  ## Return the handles of the shader objects attached to a program object.
  ##
  ## program
  ##   Specifies the program object to be queried.
  ## maxCount
  ##   Specifies the size of the array for storing the returned object names.
  ## count
  ##   Returns the number of names actually returned in shaders.
  ## shaders
  ##   Specifies an array that is used to return the names of attached shader
  ##   objects.


proc glGetAttribLocation*(program: GLuint; name: ptr GLchar): GLint {.importc.}
  ## Return the location of an attribute variable.
  ##
  ## program
  ##   Specifies the program object to be queried.
  ## name
  ##   Points to a null terminated string containing the name of the attribute
  ##   variable whose location is to be queried.


proc glGetBooleanv*(pname: GLenum; data: ptr GLboolean) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. See the full OpenGL ES
  ##   documentation for a list of accepted symbolic constants.
  ## params
  ##   Returns the value or values of the specified parameter.


proc glGetBufferParameteriv*(target: GLenum; pname: GLenum; params: ptr GLint)
  {.importc.}
  ## Return parameters of a buffer object.
  ##
  ## target
  ##   Specifies the target buffer object. The symbolic constant must be
  ##   `glArrayBuffer` or `glElementArrayBuffer`.
  ## value
  ##   Specifies the symbolic name of a buffer object parameter. Accepted values
  ##   are `glBufferSize` or `glBufferUsage`.
  ## data
  ##   Returns the requested parameter.


proc glGetError*(): GLenum {.importc.}
  ## Return error information.


proc glGetFloatv*(pname: GLenum; data: ptr GLfloat) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. See the full OpenGL ES
  ##   documentation for a list of accepted symbolic constants.
  ## params
  ##   Returns the value or values of the specified parameter.


proc glGetFramebufferAttachmentParameteriv*(target: GLenum; attachment: GLenum;
  pname: GLenum; params: ptr GLint) {.importc.}
  ## Return attachment parameters of a framebuffer object.
  ##
  ## target
  ##   Specifies the target framebuffer object. The symbolic constant must be
  ##   `glFramebuffer`.
  ## attachment
  ##   Specifies the symbolic name of a framebuffer object attachment point.
  ##   Accepted values are `glColorAttachment0`, `glDepthAttachment`, and
  ##   `glStencilAttachment`.
  ## pname
  ##   Specifies the symbolic name of a framebuffer object attachment parameter.
  ##   Accepted values are `glFramebufferAttachmentObjectType`,
  ##   `glFramebufferAttachmentObjectName`,
  ##   `glFramebufferAttachmentTextureLevel`, and
  ##   `glFramebufferAttachmentTextureCubeMapFace`.
  ## params
  ##   Returns the requested parameter.


proc glGetIntegerv*(pname: GLenum; data: ptr GLint) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. See the full OpenGL ES
  ##   documentation for a list of accepted symbolic constants.
  ## params
  ##   Returns the value or values of the specified parameter.


proc glGetProgramiv*(program: GLuint; pname: GLenum; params: ptr GLint)
  {.importc.}
  ## Return a parameter from a program object.
  ##
  ## program
  ##   Specifies the program object to be queried.
  ## pname
  ##   Specifies the object parameter. Accepted symbolic names are
  ##   `glDeleteStatus`, `glLinkStatus`, `glValidateStatus`, `glInfoLogLength`,
  ##   `glAttachedShaders`, `glActiveAttributes`, `glActiveAttributeMaxLength`,
  ##   `glActiveUniforms`, `glActiveUniformMaxLength`.
  ## params
  ##   Returns the requested object parameter.


proc glGetProgramInfoLog*(program: GLuint; bufSize: GLsizei;
  length: ptr GLsizei; infoLog: ptr GLchar) {.importc.}
  ## Return the information log for a program object.
  ##
  ## program
  ##   Specifies the program object whose information log is to be queried.
  ## maxLength
  ##  Specifies the size of the character buffer for storing the returned
  ##  information log.
  ## length
  ##   Returns the length of the string returned in infoLog (excluding the null
  ##   terminator).
  ## infoLog
  ##   Specifies an array of characters that is used to return the information
  ##   log.


proc glGetRenderbufferParameteriv*(target: GLenum; pname: GLenum;
  params: ptr GLint) {.importc.}
  ## Return parameters of a renderbuffer object.
  ##
  ## target
  ##   Specifies the target renderbuffer object. The symbolic constant must be
  ##   `glRenderbuffer`.
  ## pname
  ##   Specifies the symbolic name of a renderbuffer object parameter. Accepted
  ##   values are `glRenderbufferWidth`, `glRenderbufferHeight`,
  ##   `glRenderbufferInternalFormat`, `glRenderbufferRedSize`,
  ##   `glRenderbufferGreenSize`, `glRenderbufferBlueSize`,
  ##   `glRenderbufferAlphaSize`, `glRenderbufferDepthSize`, or
  ##   `glRenderbufferStencilSize`.
  ## params
  ##   Returns the requested parameter.


proc glGetShaderiv*(shader: GLuint; pname: GLenum; params: ptr GLint)
  {.importc.}
  ## Return a parameter from a shader object.
  ##
  ## shader
  ##   Specifies the shader object to be queried.
  ## pname
  ##   Specifies the object parameter. Accepted symbolic names are
  ##   `glShaderType`, `glDeleteStatus`, `glCompileStatus`, `glInfoLogLength`,
  ##   `glShaderSourceLength`.
  ## params
  ##   Returns the requested object parameter.


proc glGetShaderInfoLog*(shader: GLuint; bufSize: GLsizei; length: ptr GLsizei;
  infoLog: ptr GLchar) {.importc.}
  ## Return the information log for a shader object.
  ##
  ## shader
  ##   Specifies the shader object whose information log is to be queried.
  ## maxLength
  ##   Specifies the size of the character buffer for storing the returned
  ##   information log.
  ## length
  ##   Returns the length of the string returned in `infoLog` (excluding the
  ##   null terminator).
  ## infoLog
  ##   Specifies an array of characters that is used to return the information
  ##   log.


proc glGetShaderPrecisionFormat*(shadertype: GLenum; precisiontype: GLenum;
  range: ptr GLint; precision: ptr GLint) {.importc.}
  ## Return the range and precision for different shader numeric formats.
  ##
  ## shaderType
  ##   Specifies the type of shader to query. Must be either `glVertexShader` or
  ##   `glFragmentShader`.
  ## precisionType
  ##   Specifies the numeric format to query, corresponding to a shader
  ##   precision qualifier and variable type. Must be one of `glLowFloat`,
  ##   `glMediumFloat`, `glHighFloat`, `glLowInt`, `glMediumInt`, or
  ##   `glHighInt`.
  ## range
  ##   Specifies a pointer to the two-element array in which the log 2 of the
  ##   minimum and maximum representable magnitudes of the format are returned.
  ## precision
  ##   Specifies a pointer to the location in which the log 2 of the precision
  ##   of the format is returned.


proc glGetShaderSource*(shader: GLuint; bufSize: GLsizei; length: ptr GLsizei;
  source: ptr GLchar) {.importc.}
  ## Return the source code string from a shader object.
  ##
  ## shader
  ##   Specifies the shader object to be queried.
  ## bufSize
  ##   Specifies the size of the character buffer for storing the returned
  ##   source code string.
  ## length
  ##   Returns the length of the string returned in source (excluding the null
  ##   terminator).
  ## source
  ##   Specifies an array of characters that is used to return the source code
  ##  string.


proc glGetString*(name: GLenum): ptr GLubyte {.importc.}
  ## Return a string describing the current GL connection.
  ##
  ## name
  ##   Specifies a symbolic constant, one of `glVendor`, `glRenderer`,
  ##   `glVersion`, `glShadingLanguageVersion`, or `glExtensions`.


proc glGetTexParameterfv*(target: GLenum; pname: GLenum; params: ptr GLfloat)
  {.importc.}
  ## Return texture parameter values.
  ##
  ## target
  ##   Specifies the symbolic name of the target texture of the active texture
  ##   unit. `glTexture2d` and `glTextureCubeMap` are accepted.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. `glTextureMagFilter`,
  ##  `glTextureMinFilter`, `glTextureWrapS`, and `glTextureWrapT` are accepted.
  ## params
  ##   Returns the texture parameter.


proc glGetTexParameteriv*(target: GLenum; pname: GLenum; params: ptr GLint)
  {.importc.}
  ## Return texture parameter values.
  ##
  ## target
  ##   Specifies the symbolic name of the target texture of the active texture
  ##   unit. `glTexture2d` and `glTextureCubeMap` are accepted.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. `glTextureMagFilter`,
  ##  `glTextureMinFilter`, `glTextureWrapS`, and `glTextureWrapT` are accepted.
  ## params
  ##   Returns the texture parameter.


proc glGetUniformfv*(program: GLuint; location: GLint; params: ptr GLfloat)
  {.importc.}
  ## Return the value of a uniform variable.
  ##
  ## program
  ##   Specifies the program object to be queried.
  ## location
  ##   Specifies the location of the uniform variable to be queried.
  ## params
  ##   Returns the value of the specified uniform variable.


proc glGetUniformiv*(program: GLuint; location: GLint; params: ptr GLint)
  {.importc.}
  ## Return the value of a uniform variable.
  ##
  ## program
  ##   Specifies the program object to be queried.
  ## location
  ##   Specifies the location of the uniform variable to be queried.
  ## params
  ##   Returns the value of the specified uniform variable.


proc glGetUniformLocation*(program: GLuint; name: ptr GLchar): GLint {.importc.}
  ## Return the location of a uniform variable.
  ##
  ## program
  ##   Specifies the program object to be queried.
  ## name
  ##   Points to a null terminated string containing the name of the uniform
  ##   variable whose location is to be queried.


proc glGetVertexAttribfv*(index: GLuint; pname: GLenum; params: ptr GLfloat)
  {.importc.}
  ## Return a generic vertex attribute parameter.
  ##
  ## index
  ##   Specifies the generic vertex attribute parameter to be queried.
  ## pname
  ##   Specifies the symbolic name of the vertex attribute parameter to be
  ##   queried. Accepted values are `glVertexAttribArrayBufferBinding`,
  ##   `glVertexAttribArrayEnabled`, `glVertexAttribArraySize`,
  ##   `glVertexAttribArrayStride`, `glVertexAttribArrayType`,
  ##   `glVertexAttribArrayNormalized`, or `glCurrentVertexAttrib`.
  ## params
  ##   Returns the requested data.


proc glGetVertexAttribiv*(index: GLuint; pname: GLenum; params: ptr GLint)
  {.importc.}
  ## Return a generic vertex attribute parameter.
  ##
  ## index
  ##   Specifies the generic vertex attribute parameter to be queried.
  ## pname
  ##   Specifies the symbolic name of the vertex attribute parameter to be
  ##   queried. Accepted values are `glVertexAttribArrayBufferBinding`,
  ##   `glVertexAttribArrayEnabled`, `glVertexAttribArraySize`,
  ##   `glVertexAttribArrayStride`, `glVertexAttribArrayType`,
  ##   `glVertexAttribArrayNormalized`, or `glCurrentVertexAttrib`.
  ## params
  ##   Returns the requested data.


proc glGetVertexAttribPointerv*(index: GLuint; pname: GLenum;
  pointer: ptr pointer) {.importc.}
  ## Return the address of the specified generic vertex attribute pointer.
  ##
  ## index
  ##   Specifies the generic vertex attribute parameter to be returned.
  ## pname
  ##   Specifies the symbolic name of the generic vertex attribute parameter to
  ##   be returned. Must be `glVertexAttribArrayPointer`.
  ## pointer
  ##   Returns the pointer value.


proc glHint*(target: GLenum; mode: GLenum) {.importc.}
  ## Specify implementation-specific hints.
  ##
  ## target
  ##   Specifies a symbolic constant indicating the behavior to be controlled.
  ##   `glGenerateMipmapHint` is accepted.
  ## mode
  ##   Specifies a symbolic constant indicating the desired behavior.
  ##   `glFastest`, `glNicest`, and `glDontCare` are accepted.


proc glIsBuffer*(buffer: GLuint): GLboolean {.importc.}
  ## Determine if a name corresponds to a buffer object.
  ##
  ## buffer
  ##   Specifies a value that may be the name of a buffer object.


proc glIsEnabled*(cap: GLenum): GLboolean {.importc.}
  ## Test whether a capability is enabled.
  ##
  ## cap
  ##   Specifies a symbolic constant indicating a GL capability.


proc glIsFramebuffer*(framebuffer: GLuint): GLboolean {.importc.}
  ## Determine if a name corresponds to a framebuffer object.
  ##
  ## framebuffer
  ##   Specifies a value that may be the name of a framebuffer object.


proc glIsProgram*(program: GLuint): GLboolean {.importc.}
  ## Determine if a name corresponds to a program object.
  ##
  ## program
  ##   Specifies a potential program object.


proc glIsRenderbuffer*(renderbuffer: GLuint): GLboolean {.importc.}
  ## Determine if a name corresponds to a renderbuffer object.
  ##
  ## renderbuffer
  ##   Specifies a value that may be the name of a renderbuffer object.


proc glIsShader*(shader: GLuint): GLboolean {.importc.}
  ## Determine if a name corresponds to a shader object.
  ##
  ## shader
  ##   Specifies a potential shader object.


proc glIsTexture*(texture: GLuint): GLboolean {.importc.}
  ## Determine if a name corresponds to a texture.
  ##
  ## texture
  ##   Specifies a value that may be the name of a texture.


proc glLineWidth*(width: GLfloat) {.importc.}
  ## Specify the width of rasterized lines.
  ##
  ## width
  ##   Specifies the width of rasterized lines. The initial value is `1`.


proc glLinkProgram*(program: GLuint) {.importc.}
  ## Link a program object.
  ##
  ## program
  ##   Specifies the handle of the program object to be linked.


proc glPixelStorei*(pname: GLenum; param: GLint) {.importc.}
  ## Set pixel storage modes.
  ##
  ## pname
  ##   Specifies the symbolic name of the parameter to be set. One value affects
  ##   the packing of pixel data into memory: `glPackAlignment`. The other
  ##   affects the unpacking of pixel data from memory: `glUnpackAlignment`.
  ## param
  ##   Specifies the value that pname is set to.


proc glPolygonOffset*(factor: GLfloat; units: GLfloat) {.importc.}
  ## Set the scale and units used to calculate depth values.
  ##
  ## factor
  ##   Specifies a scale factor that is used to create a variable depth offset
  ##   for each polygon. The initial value is `0`.
  ## units
  ##   Is multiplied by an implementation-specific value to create a constant
  ##   depth offset. The initial value is `0`.


proc glReadPixels*(x: GLint; y: GLint; width: GLsizei; height: GLsizei;
  format: GLenum; `type`: GLenum; pixels: pointer) {.importc.}
  ## Read a block of pixels from the frame buffer.
  ##
  ## x, y
  ##   Specify the window coordinates of the first pixel that is read from the
  ##   frame buffer. This location is the lower left corner of a rectangular
  ##   block of pixels.
  ## width, height
  ##   Specify the dimensions of the pixel rectangle. `width` and `height` of
  ##   one correspond to a single pixel.
  ## format
  ##   Specifies the format of the pixel data. The following symbolic values are
  ##   accepted: `glAlpha`, `glRgb`, and `glRgba`.
  ## type
  ##   Specifies the data type of the pixel data. Must be one of
  ##   `glUnsignedByte`, `glUnsignedShort565`, `glUnsignedShort4444`, or
  ##   `glUnsignedShort5551`.
  ## data
  ##   Returns the pixel data.


proc glReleaseShaderCompiler*() {.importc.}
  ## Release resources allocated by the shader compiler.


proc glRenderbufferStorage*(target: GLenum; internalformat: GLenum;
  width: GLsizei; height: GLsizei) {.importc.}
  ## Create and initialize a renderbuffer object's data store.
  ##
  ## target
  ##   Specifies the renderbuffer target. The symbolic constant must be
  ##   `glRenderbuffer`.
  ## internalformat
  ##   Specifies the color-renderable, depth-renderable, or stencil-renderable
  ##   format of the renderbuffer. Must be one of the following symbolic
  ##   constants: `glRgba4`, `glRgb565`, `glRgb5A1`, `glDepthComponent16`, or
  ##   `glStencilIndex8`.
  ## width
  ##   Specifies the width of the renderbuffer in pixels.
  ## height
  ##   Specifies the height of the renderbuffer in pixels.


proc glSampleCoverage*(value: GLfloat; invert: GLboolean) {.importc.}
  ## Specify multisample coverage parameters.
  ##
  ## value
  ##   Specify a single floating-point sample coverage value. The value is
  ##   clamped to the range `0 1`. The initial value is `1.0`.
  ## invert
  ##   Specify a single boolean value representing if the coverage masks should
  ##   be inverted. `glTrue` and `glFalse` are accepted. The initial value is
  ##   `glFalse`.


proc glScissor*(x: GLint; y: GLint; width: GLsizei; height: GLsizei) {.importc.}
  ## Define the scissor box.
  ##
  ## x, y
  ##   Specify the lower left corner of the scissor box. Initially `(0, 0)`.
  ## width, height
  ##   Specify the width and height of the scissor box. When a GL context is
  ##   first attached to a window, `width` and `height` are set to the
  ##   dimensions of that window.


proc glShaderBinary*(count: GLsizei; shaders: ptr GLuint; binaryformat: GLenum;
  binary: pointer; length: GLsizei) {.importc.}
  ## Load a precompiled shader binary.
  ##
  ## n
  ##   Specifies the number of shader object handles present in shaders.
  ## shaders
  ##   Specifies a pointer to an array of shader object handles into which the
  ##   shader binary will be loaded.
  ## binaryformat
  ##   Specifies the shader binary format.
  ## binary
  ##   Specifies a pointer to the shader binary data in client memory.
  ## length
  ##   Specifies the length of the shader binary data in bytes.


proc glShaderSource*(shader: GLuint; count: GLsizei;
  string: ptr ptr GLchar; length: ptr GLint) {.importc.}
  ## Replace the source code in a shader object.
  ##
  ## shader
  ##   Specifies the handle of the shader object whose source code is to be
  ##   replaced.
  ## count
  ##   Specifies the number of elements in the string and length arrays.
  ## string
  ##   Specifies an array of pointers to strings containing the source code to
  ##   be loaded into the shader.
  ## length
  ##   Specifies an array of string lengths.


proc glStencilFunc*(`func`: GLenum; `ref`: GLint; mask: GLuint) {.importc.}
  ## Set front and back function and reference value for stencil testing.
  ##
  ## func
  ##   Specifies the test function. Eight symbolic constants are valid:
  ##   `glNever`, `glLess`, `glLequal`, `glGreater`, `glGequal`, `glEqual`,
  ##   `glNotequal`, and `glAlways`. The initial value is `glAlways`.
  ## ref
  ##   Specifies the reference value for the stencil test. `ref` is clamped to
  ##   the range `0 2n-1`, where `n` is the number of bitplanes in the stencil
  ##   buffer. The initial value is `0`.
  ## mask
  ##   Specifies a mask that is ANDed with both the reference value and the
  ##   stored stencil value when the test is done. The initial value is all 1's.


proc glStencilFuncSeparate*(face: GLenum; `func`: GLenum; `ref`: GLint;
  mask: GLuint) {.importc.}
  ## Set front and/or back function and reference value for stencil testing.
  ##
  ## face
  ##   Specifies whether front and/or back stencil state is updated. Three
  ##   symbolic constants are valid: `glFront`, `glBack`, and `glFrontAndBack`.
  ## func
  ##   Specifies the test function. Eight symbolic constants are valid:
  ##  `glNever`, `glLess`, `glLequal`, `glGreater`, `glGequal`, `glEqual`,
  ##  `glNotequal`, and `glAlways`. The initial value is `glAlways`.
  ## ref
  ##   Specifies the reference value for the stencil test. `ref` is clamped to
  ##   the range `0 2n-1`, where `n` is the number of bitplanes in the stencil
  ##   buffer. The initial value is `0`.
  ## mask
  ##   Specifies a mask that is ANDed with both the reference value and the
  ##   stored stencil value when the test is done. The initial value is all 1's.


proc glStencilMask*(mask: GLuint) {.importc.}
  ## Control the front and back writing of individual bits in the stencil
  ## planes.
  ##
  ## mask
  ##   Specifies a bit mask to enable and disable writing of individual bits in
  ##   the stencil planes. Initially, the mask is all 1's.


proc glStencilMaskSeparate*(face: GLenum; mask: GLuint) {.importc.}
  ## Control the front and/or back writing of individual bits in the stencil
  ## planes.
  ##
  ## face
  ##   Specifies whether the front and/or back stencil writemask is updated.
  ##   Three symbolic constants are valid: `glFront`, `glBack`, and
  ##   `glFrontAndBack`.
  ## mask
  ##   Specifies a bit mask to enable and disable writing of individual bits in
  ##   the stencil planes. Initially, the mask is all 1's.


proc glStencilOp*(fail: GLenum; zfail: GLenum; zpass: GLenum) {.importc.}
  ## Set front and back stencil test actions.
  ##
  ## sfail
  ##   Specifies the action to take when the stencil test fails. Eight symbolic
  ##   constants are accepted: `glKeep`, `glZero`, `glReplace`, `glIncr`,
  ##   `glIncrWrap, `glDecr`, `glDecrWrap`, and `glInvert`. The initial value is
  ##   `glKeep`.
  ## dpfail
  ##   Specifies the stencil action when the stencil test passes, but the depth
  ##   test fails. `dpfail` accepts the same symbolic constants as `sfail`. The
  ##   initial value is `glKeep`.
  ## dppass
  ##   Specifies the stencil action when both the stencil test and the depth
  ##   test pass, or when the stencil test passes and either there is no depth
  ##   buffer or depth testing is not enabled. `dppass` accepts the same
  ##   symbolic constants as `sfail`. The initial value is `glKeep`.


proc glStencilOpSeparate*(face: GLenum; sfail: GLenum; dpfail: GLenum;
  dppass: GLenum) {.importc.}
  ## Set front and/or back stencil test actions.
  ##
  ## face
  ##   Specifies whether front and/or back stencil state is updated. Three
  ##   symbolic constants are valid: `glFront`, `glBack`, and `glFrontAndBack`.
  ## sfail
  ##   Specifies the action to take when the stencil test fails. Eight symbolic
  ##   constants are accepted: `glKeep`, `glZero`, `glReplace`, `glIncr`,
  ##   `glIncrWrap`, `glDecr`, `glDecrWrap`, and `glInvert`. The initial value
  ##   is `glKeep`.
  ## dpfail
  ##   Specifies the stencil action when the stencil test passes, but the depth
  ##   test fails. `dpfail` accepts the same symbolic constants as `sfail`. The
  ##   initial value is `glKeep`.
  ## dppass
  ##   Specifies the stencil action when both the stencil test and the depth
  ##   test pass, or when the stencil test passes and either there is no depth
  ##   buffer or depth testing is not enabled. `dppass` accepts the same
  ##   symbolic constants as `sfail`. The initial value is `glKeep`.


proc glTexImage2D*(target: GLenum; level: GLint; internalformat: GLint;
  width: GLsizei; height: GLsizei; border: GLint; format: GLenum;
  `type`: GLenum; pixels: pointer) {.importc.}
  ## Specify a two-dimensional texture image.
  ##
  ## target
  ##   Specifies the target texture of the active texture unit. Must be
  ##   `glTexture2d`, `glTextureCubeMapPositiveX`, `glTextureCubeMapNegativeX`,
  ##   `glTextureCubeMapPositiveY`, `glTextureCubeMapNegativeY`,
  ##   `glTextureCubeMapPositiveZ`, or `glTextureCubeMapNegativeZ`.
  ## level
  ##   Specifies the level-of-detail number. Level 0 is the base image level.
  ##   Level `n` is the `n`th mipmap reduction image.
  ## internalformat
  ##   Specifies the internal format of the texture. Must be one of the
  ##   following symbolic constants: `glAlpha`, `glLuminance`,
  ##   `glLuminanceAlpha`, `glRgb`, `glRgba`.
  ## width
  ##   Specifies the width of the texture image. All implementations support 2D
  ##   texture images that are at least 64 texels wide and cube-mapped texture
  ##   images that are at least 16 texels wide.
  ## height
  ##   Specifies the height of the texture image All implementations support 2D
  ##   texture images that are at least 64 texels high and cube-mapped texture
  ##   images that are at least 16 texels high.
  ## border
  ##   Specifies the width of the border. Must be `0`.
  ## format
  ##   Specifies the format of the texel data. Must match `internalformat`. The
  ##   following symbolic values are accepted: `glAlpha`, `glRgb`, `glRgba`,
  ##   `glLuminance`, and `glLuminanceAlpha`.
  ## type
  ##   Specifies the data type of the texel data. The following symbolic values
  ##   are accepted: `glUnsignedByte`, `glUnsignedShort565`,
  ##   `glUnsignedShort4444`, and `glUnsignedShort5551`.
  ## data
  ##   Specifies a pointer to the image data in memory.


proc glTexParameterf*(target: GLenum; pname: GLenum; param: GLfloat)
  {.importc.}
  ## Set texture parameters,
  ##
  ## target
  ##   Specifies the target texture of the active texture unit, which must be
  ##   either `glTexture2d` or `glTextureCubeMap`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture parameter. `pname`
  ##   can be one of the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, or `glTextureWrapT`.
  ## param
  ##   Specifies the value of pname.


proc glTexParameterfv*(target: GLenum; pname: GLenum; params: ptr GLfloat)
  {.importc.}
  ## Set texture parameters,
  ##
  ## target
  ##   Specifies the target texture of the active texture unit, which must be
  ##   either `glTexture2d` or `glTextureCubeMap`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. `pname` can be one of
  ##   the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, or `glTextureWrapT`.
  ## params
  ##   Specifies a pointer to an array where the value of pname is stored.


proc glTexParameteri*(target: GLenum; pname: GLenum; param: GLint)
  {.importc.}
  ## Set texture parameters,
  ##
  ## target
  ##   Specifies the target texture of the active texture unit, which must be
  ##   either `glTexture2d` or `glTextureCubeMap`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture parameter. `pname`
  ##   can be one of the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, or `glTextureWrapT`.
  ## param
  ##   Specifies the value of pname.


proc glTexParameteriv*(target: GLenum; pname: GLenum; params: ptr GLint)
  {.importc.}
  ## Set texture parameters,
  ##
  ## target
  ##   Specifies the target texture of the active texture unit, which must be
  ##   either `glTexture2d` or `glTextureCubeMap`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. `pname` can be one of
  ##   the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, or `glTextureWrapT`.
  ## params
  ##   Specifies a pointer to an array where the value of pname is stored.


proc glTexSubImage2D*(target: GLenum; level: GLint; xoffset: GLint;
  yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum;
  `type`: GLenum; pixels: pointer) {.importc.}
  ## Specify a two-dimensional texture subimage.
  ##
  ## target
  ##   Specifies the target texture of the active texture unit. Must be
  ##   `glTexture2d`, `glTextureCubeMapPositiveX`, `glTextureCubeMapNegativeX`,
  ##   `glTextureCubeMapPositiveY`, `glTextureCubeMapNegativeY`,
  ##   `glTextureCubeMapPositiveZ`, or `glTextureCubeMapNegativeZ`.
  ## level
  ##   Specifies the level-of-detail number. Level 0 is the base image level.
  ##   Level n is the nth mipmap reduction image.
  ## xoffset
  ##   Specifies a texel offset in the x direction within the texture array.
  ## yoffset
  ##   Specifies a texel offset in the y direction within the texture array.
  ## width
  ##   Specifies the width of the texture subimage.
  ## height
  ##   Specifies the height of the texture subimage.
  ## format
  ##   Specifies the format of the pixel data. The following symbolic values are
  ##   accepted: `glAlpha`, `glRgb`, `glRgba`, `glLuminance`, and
  ##   `glLuminanceAlpha`.
  ## type
  ##   Specifies the data type of the pixel data. The following symbolic values
  ##   are accepted: `glUnsignedByte`, `glUnsignedShort565`,
  ##   `glUnsignedShort4444`, and `glUnsignedShort5551`.
  ## data
  ##   Specifies a pointer to the image data in memory.


proc glUniform1f*(location: GLint; v0: GLfloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified uniform variable.


proc glUniform1fv*(location: GLint; count: GLsizei; value: ptr GLfloat)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform value to be modified.
  ## count
  ##   Specifies the number of elements that are to be modified. This should be
  ##   `1` if the targeted uniform variable is not an array, and `1` or more if
  ##   it is an array.
  ## value
  ##   Specifies a pointer to an array of count values that will be used to
  ##   update the specified uniform variable.


proc glUniform1i*(location: GLint; v0: GLint) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified uniform variable.


proc glUniform1iv*(location: GLint; count: GLsizei; value: ptr GLint)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform value to be modified.
  ## count
  ##   Specifies the number of elements that are to be modified. This should be
  ##   `1` if the targeted uniform variable is not an array, and `1` or more if
  ##   it is an array.
  ## value
  ##   Specifies a pointer to an array of count values that will be used to
  ##   update the specified uniform variable.


proc glUniform2f*(location: GLint; v0: GLfloat; v1: GLfloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified uniform variable.


proc glUniform2fv*(location: GLint; count: GLsizei; value: ptr GLfloat)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform value to be modified.
  ## count
  ##   Specifies the number of elements that are to be modified. This should be
  ##   `1` if the targeted uniform variable is not an array, and `1` or more if
  ##   it is an array.
  ## value
  ##   Specifies a pointer to an array of count values that will be used to
  ##   update the specified uniform variable.


proc glUniform2i*(location: GLint; v0: GLint; v1: GLint) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified uniform variable.


proc glUniform2iv*(location: GLint; count: GLsizei; value: ptr GLint)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform value to be modified.
  ## count
  ##   Specifies the number of elements that are to be modified. This should be
  ##   `1` if the targeted uniform variable is not an array, and `1` or more if
  ##   it is an array.
  ## value
  ##   Specifies a pointer to an array of count values that will be used to
  ##   update the specified uniform variable.


proc glUniform3f*(location: GLint; v0: GLfloat; v1: GLfloat; v2: GLfloat)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified uniform variable.


proc glUniform3fv*(location: GLint; count: GLsizei; value: ptr GLfloat)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform value to be modified.
  ## count
  ##   Specifies the number of elements that are to be modified. This should be
  ##   `1` if the targeted uniform variable is not an array, and `1` or more if
  ##   it is an array.
  ## value
  ##   Specifies a pointer to an array of count values that will be used to
  ##   update the specified uniform variable.


proc glUniform3i*(location: GLint; v0: GLint; v1: GLint; v2: GLint)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified uniform variable.


proc glUniform3iv*(location: GLint; count: GLsizei; value: ptr GLint)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform value to be modified.
  ## count
  ##   Specifies the number of elements that are to be modified. This should be
  ##   `1` if the targeted uniform variable is not an array, and `1` or more if
  ##   it is an array.
  ## value
  ##   Specifies a pointer to an array of count values that will be used to
  ##   update the specified uniform variable.


proc glUniform4f*(location: GLint; v0: GLfloat; v1: GLfloat; v2: GLfloat;
  v3: GLfloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified uniform variable.


proc glUniform4fv*(location: GLint; count: GLsizei; value: ptr GLfloat)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform value to be modified.
  ## count
  ##   Specifies the number of elements that are to be modified. This should be
  ##   `1` if the targeted uniform variable is not an array, and `1` or more if
  ##   it is an array.
  ## value
  ##   Specifies a pointer to an array of count values that will be used to
  ##   update the specified uniform variable.


proc glUniform4i*(location: GLint; v0: GLint; v1: GLint; v2: GLint;
  v3: GLint) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified uniform variable.


proc glUniform4iv*(location: GLint; count: GLsizei; value: ptr GLint)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform value to be modified.
  ## count
  ##   Specifies the number of elements that are to be modified. This should be
  ##   `1` if the targeted uniform variable is not an array, and `1` or more if
  ##   it is an array.
  ## value
  ##   Specifies a pointer to an array of count values that will be used to
  ##   update the specified uniform variable.


proc glUniformMatrix2fv*(location: GLint; count: GLsizei;
  transpose: GLboolean; value: ptr GLfloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform value to be modified.
  ## count
  ##   Specifies the number of matrices that are to be modified. This should be
  ##   `1` if the targeted uniform variable is not an array of matrices, and `1`
  ##   or more if it is an array of matrices.
  ## transpose
  ##   Specifies whether to transpose the matrix as the values are loaded into
  ##   the uniform variable. Must be `glFalse`.
  ## value
  ##   Specifies a pointer to an array of count values that will be used to
  ##   update the specified uniform variable.


proc glUniformMatrix3fv*(location: GLint; count: GLsizei;
  transpose: GLboolean; value: ptr GLfloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform value to be modified.
  ## count
  ##   Specifies the number of matrices that are to be modified. This should be
  ##   `1` if the targeted uniform variable is not an array of matrices, and `1`
  ##   or more if it is an array of matrices.
  ## transpose
  ##   Specifies whether to transpose the matrix as the values are loaded into
  ##   the uniform variable. Must be `glFalse`.
  ## value
  ##   Specifies a pointer to an array of count values that will be used to
  ##   update the specified uniform variable.


proc glUniformMatrix4fv*(location: GLint; count: GLsizei;
  transpose: GLboolean; value: ptr GLfloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform value to be modified.
  ## count
  ##   Specifies the number of matrices that are to be modified. This should be
  ##   `1` if the targeted uniform variable is not an array of matrices, and `1`
  ##   or more if it is an array of matrices.
  ## transpose
  ##   Specifies whether to transpose the matrix as the values are loaded into
  ##   the uniform variable. Must be `glFalse`.
  ## value
  ##   Specifies a pointer to an array of count values that will be used to
  ##   update the specified uniform variable.


proc glUseProgram*(program: GLuint) {.importc.}
  ## Install a program object as part of current rendering state.
  ##
  ## program
  ##   Specifies the handle of the program object whose executables are to be
  ##   used as part of current rendering state.


proc glValidateProgram*(program: GLuint) {.importc.}
  ## Validate a program object.
  ##
  ## program
  ##   Specifies the handle of the program object to be validated.


proc glVertexAttrib1f*(index: GLuint; x: GLfloat) {.importc.}
  ## Specify the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified vertex attribute.


proc glVertexAttrib1fv*(index: GLuint; v: ptr GLfloat) {.importc.}
  ## Specify the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v
  ##   Specifies a pointer to an array of values to be used for the generic
  ##   vertex attribute.


proc glVertexAttrib2f*(index: GLuint; x: GLfloat; y: GLfloat) {.importc.}
  ## Specify the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified vertex attribute.


proc glVertexAttrib2fv*(index: GLuint; v: ptr GLfloat) {.importc.}
  ## Specify the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v
  ##   Specifies a pointer to an array of values to be used for the generic
  ##   vertex attribute.


proc glVertexAttrib3f*(index: GLuint; x: GLfloat; y: GLfloat; z: GLfloat)
  {.importc.}
  ## Specify the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified vertex attribute.


proc glVertexAttrib3fv*(index: GLuint; v: ptr GLfloat) {.importc.}
  ## Specify the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v
  ##   Specifies a pointer to an array of values to be used for the generic
  ##   vertex attribute.


proc glVertexAttrib4f*(index: GLuint; x: GLfloat; y: GLfloat; z: GLfloat;
  w: GLfloat) {.importc.}
  ## Specify the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v0, v1, v2, v3
  ##   Specifies the new values to be used for the specified vertex attribute.


proc glVertexAttrib4fv*(index: GLuint; v: ptr GLfloat) {.importc.}
  ## Specify the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v
  ##   Specifies a pointer to an array of values to be used for the generic
  ##   vertex attribute.


proc glVertexAttribPointer*(index: GLuint; size: GLint; `type`: GLenum;
  normalized: GLboolean; stride: GLsizei; pointer: pointer) {.importc.}
  ## Define an array of generic vertex attribute data.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## size
  ##   Specifies the number of components per generic vertex attribute. Must be
  ##   `1`, `2`, `3`, or `4`. The initial value is `4`.
  ## type
  ##   Specifies the data type of each component in the array. Symbolic
  ##   constants `glByte`, `glUnsignedByte`, `glShort`, `glUnsignedShort`,
  ##   `glFixed`, or `glFloat` are accepted. The initial value is `glFloat`.
  ## normalized
  ##   Specifies whether fixed-point data values should be normalized (`glTrue`)
  ##   or converted directly as fixed-point values (`glFalse`) when they are
  ##   accessed.
  ## stride
  ##   Specifies the byte offset between consecutive generic vertex attributes.
  ##   If `stride` is `0`, the generic vertex attributes are understood to be
  ##   tightly packed in the array. The initial value is `0`.
  ## pointer
  ##   Specifies a pointer to the first component of the first generic vertex
  ##   attribute in the array. The initial value is `0`.


proc glViewport*(x: GLint; y: GLint; width: GLsizei; height: GLsizei)
  {.importc.}
  ## Set the viewport.
  ##
  ## x, y
  ##   Specify the lower left corner of the viewport rectangle, in pixels. The
  ##   initial value is `(0,0)`.
  ## width, height
  ##   Specify the width and height of the viewport. When a GL context is first
  ##   attached to a window, `width` and `height` are set to the dimensions of
  ##   that window.

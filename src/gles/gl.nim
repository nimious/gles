## *io-gles* - Nim bindings for OpenGL ES, the embedded 3D graphics library.
##
## This file is part of the `Nim I/O <http://nimio.us>`_ package collection.
## See the file LICENSE included in this distribution for licensing details.
## GitHub pull requests are encouraged. (c) 2015 Headcrash Industries LLC.

{.deadCodeElim: on.}


type
  GLvoid* = nil
  GLchar* = char
  GLenum* = cuint
  GLboolean* = cuchar
  GLbitfield* = cuint
  GLbyte* = cschar
  GLshort* = cshort
  GLint* = cint
  GLsizei* = cint
  GLubyte* = cuchar
  GLushort* = cushort
  GLuint* = cuint
  GLfloat* = cfloat
  GLclampf* = cfloat
  GLfixed* = cint
  GLclampx* = cint
  GLintptr* = clong
  GLsizeiptr* = clong


const # OpenGL ES core versions
  glVersionEsCm10* = 1
  glVersionEsCl10* = 1
  glVersionEsCm11* = 1
  glVersionEsCl11* = 1


const # ClearBufferMask
  glDepthBufferBit* = 0x00000100
  glStencilBufferBit* = 0x00000400
  glColorBufferBit* = 0x00004000


const # Boolean
  glFalse* = 0
  glTrue* = 1


const # BeginMode
  glPoints* = 0x00000000
  glLines* = 0x00000001
  glLineLoop* = 0x00000002
  glLineStrip* = 0x00000003
  glTriangles* = 0x00000004
  glTriangleStrip* = 0x00000005
  glTriangleFan* = 0x00000006


const # AlphaFunction
  glNever* = 0x00000200
  glLess* = 0x00000201
  glEqual* = 0x00000202
  glLequal* = 0x00000203
  glGreater* = 0x00000204
  glNotequal* = 0x00000205
  glGequal* = 0x00000206
  glAlways* = 0x00000207


const # BlendingFactorDest
  glZero* = 0
  glOne* = 1
  glSrcColor* = 0x00000300
  glOneMinusSrcColor* = 0x00000301
  glSrcAlpha* = 0x00000302
  glOneMinusSrcAlpha* = 0x00000303
  glDstAlpha* = 0x00000304
  glOneMinusDstAlpha* = 0x00000305


const # BlendingFactorSrc
# glZero
# glOne
  glDstColor* = 0x00000306
  glOneMinusDstColor* = 0x00000307
  glSrcAlphaSaturate* = 0x00000308
# glSrcAlpha
# glOneMinusSrcAlpha
# glDstAlpha
# glOneMinusDstAlpha


const # ClipPlaneName
  glClipPlane0* = 0x00003000
  glClipPlane1* = 0x00003001
  glClipPlane2* = 0x00003002
  glClipPlane3* = 0x00003003
  glClipPlane4* = 0x00003004
  glClipPlane5* = 0x00003005


# ColorMaterialFace
# glFrontAndBack


# ColorMaterialParameter
# glAmbientAndDiffuse


# ColorPointertype
# glUnsignedByte
# glFloat
# glFixed


const # CullFaceMode
  glFront* = 0x00000404
  glBack* = 0x00000405
  glFrontAndBack* = 0x00000408


# DepthFunction
# glNever
# glLess
# glEqual
# glLequal
# glGreater
# glNotequal
# glGequal
# glAlways


const # EnableCap
  glFog* = 0x00000B60
  glLighting* = 0x00000B50
  glTexture2d* = 0x00000DE1
  glCullFace* = 0x00000B44
  glAlphaTest* = 0x00000BC0
  glBlend* = 0x00000BE2
  glColorLogicOp* = 0x00000BF2
  glDither* = 0x00000BD0
  glStencilTest* = 0x00000B90
  glDepthTest* = 0x00000B71
# glLight0
# glLight1
# glLight2
# glLight3
# glLight4
# glLight5
# glLight6
# glLight7
  glPointSmooth* = 0x00000B10
  glLineSmooth* = 0x00000B20
  glScissorTest* = 0x00000C11
  glColorMaterial* = 0x00000B57
  glNormalize* = 0x00000BA1
  glRescaleNormal* = 0x0000803A
  glPolygonOffsetFill* = 0x00008037
  glVertexArray* = 0x00008074
  glNormalArray* = 0x00008075
  glColorArray* = 0x00008076
  glTextureCoordArray* = 0x00008078
  glMultisample* = 0x0000809D
  glSampleAlphaToCoverage* = 0x0000809E
  glSampleAlphaToOne* = 0x0000809F
  glSampleCoverage* = 0x000080A0


const # ErrorCode
  glNoError* = 0
  glInvalidEnum* = 0x00000500
  glInvalidValue* = 0x00000501
  glInvalidOperation* = 0x00000502
  glStackOverflow* = 0x00000503
  glStackUnderflow* = 0x00000504
  glOutOfMemory* = 0x00000505


const # FogMode
# glLinear
  glExp* = 0x00000800
  glExp2* = 0x00000801


const # FogParameter
  glFogDensity* = 0x00000B62
  glFogStart* = 0x00000B63
  glFogEnd* = 0x00000B64
  glFogMode* = 0x00000B65
  glFogColor* = 0x00000B66


const # FrontFaceDirection
  glCw* = 0x00000900
  glCcw* = 0x00000901


const # GetPName
  glCurrentColor* = 0x00000B00
  glCurrentNormal* = 0x00000B02
  glCurrentTextureCoords* = 0x00000B03
  glPointSize* = 0x00000B11
  glPointSizeMin* = 0x00008126
  glPointSizeMax* = 0x00008127
  glPointFadeThresholdSize* = 0x00008128
  glPointDistanceAttenuation* = 0x00008129
  glSmoothPointSizeRange* = 0x00000B12
  glLineWidth* = 0x00000B21
  glSmoothLineWidthRange* = 0x00000B22
  glAliasedPointSizeRange* = 0x0000846D
  glAliasedLineWidthRange* = 0x0000846E
  glCullFaceMode* = 0x00000B45
  glFrontFace* = 0x00000B46
  glShadeModel* = 0x00000B54
  glDepthRange* = 0x00000B70
  glDepthWritemask* = 0x00000B72
  glDepthClearValue* = 0x00000B73
  glDepthFunc* = 0x00000B74
  glStencilClearValue* = 0x00000B91
  glStencilFunc* = 0x00000B92
  glStencilValueMask* = 0x00000B93
  glStencilFail* = 0x00000B94
  glStencilPassDepthFail* = 0x00000B95
  glStencilPassDepthPass* = 0x00000B96
  glStencilRef* = 0x00000B97
  glStencilWritemask* = 0x00000B98
  glMatrixMode* = 0x00000BA0
  glViewport* = 0x00000BA2
  glModelviewStackDepth* = 0x00000BA3
  glProjectionStackDepth* = 0x00000BA4
  glTextureStackDepth* = 0x00000BA5
  glModelviewMatrix* = 0x00000BA6
  glProjectionMatrix* = 0x00000BA7
  glTextureMatrix* = 0x00000BA8
  glAlphaTestFunc* = 0x00000BC1
  glAlphaTestRef* = 0x00000BC2
  glBlendDst* = 0x00000BE0
  glBlendSrc* = 0x00000BE1
  glLogicOpMode* = 0x00000BF0
  glScissorBox* = 0x00000C10
  glScissorTest* = 0x00000C11
  glColorClearValue* = 0x00000C22
  glColorWritemask* = 0x00000C23
  glUnpackAlignment* = 0x00000CF5
  glPackAlignment* = 0x00000D05
  glMaxLights* = 0x00000D31
  glMaxClipPlanes* = 0x00000D32
  glMaxTextureSize* = 0x00000D33
  glMaxModelviewStackDepth* = 0x00000D36
  glMaxProjectionStackDepth* = 0x00000D38
  glMaxTextureStackDepth* = 0x00000D39
  glMaxViewportDims* = 0x00000D3A
  glMaxTextureUnits* = 0x000084E2
  glSubpixelBits* = 0x00000D50
  glRedBits* = 0x00000D52
  glGreenBits* = 0x00000D53
  glBlueBits* = 0x00000D54
  glAlphaBits* = 0x00000D55
  glDepthBits* = 0x00000D56
  glStencilBits* = 0x00000D57
  glPolygonOffsetUnits* = 0x00002A00
  glPolygonOffsetFill* = 0x00008037
  glPolygonOffsetFactor* = 0x00008038
  glTextureBinding2d* = 0x00008069
  glVertexArraySize* = 0x0000807A
  glVertexArrayType* = 0x0000807B
  glVertexArrayStride* = 0x0000807C
  glNormalArrayType* = 0x0000807E
  glNormalArrayStride* = 0x0000807F
  glColorArraySize* = 0x00008081
  glColorArrayType* = 0x00008082
  glColorArrayStride* = 0x00008083
  glTextureCoordArraySize* = 0x00008088
  glTextureCoordArrayType* = 0x00008089
  glTextureCoordArrayStride* = 0x0000808A
  glVertexArrayPointer* = 0x0000808E
  glNormalArrayPointer* = 0x0000808F
  glColorArrayPointer* = 0x00008090
  glTextureCoordArrayPointer* = 0x00008092
  glSampleBuffers* = 0x000080A8
  glSamples* = 0x000080A9
  glSampleCoverageValue* = 0x000080AA
  glSampleCoverageInvert* = 0x000080AB


# GetTextureParameter
# glTextureMagFilter
# glTextureMinFilter
# glTextureWrapS
# glTextureWrapT


const
  glNumCompressedTextureFormats* = 0x000086A2
  glCompressedTextureFormats* = 0x000086A3


const # HintMode
  glDontCare* = 0x00001100
  glFastest* = 0x00001101
  glNicest* = 0x00001102


const # HintTarget
  glPerspectiveCorrectionHint* = 0x00000C50
  glPointSmoothHint* = 0x00000C51
  glLineSmoothHint* = 0x00000C52
  glFogHint* = 0x00000C54
  glGenerateMipmapHint* = 0x00008192


const # LightModelParameter
  glLightModelAmbient* = 0x00000B53
  glLightModelTwoSide* = 0x00000B52


const # LightParameter
  glAmbient* = 0x00001200
  glDiffuse* = 0x00001201
  glSpecular* = 0x00001202
  glPosition* = 0x00001203
  glSpotDirection* = 0x00001204
  glSpotExponent* = 0x00001205
  glSpotCutoff* = 0x00001206
  glConstantAttenuation* = 0x00001207
  glLinearAttenuation* = 0x00001208
  glQuadraticAttenuation* = 0x00001209


const # Datatype
  glByte* = 0x00001400
  glUnsignedByte* = 0x00001401
  glShort* = 0x00001402
  glUnsignedShort* = 0x00001403
  glFloat* = 0x00001406
  glFixed* = 0x0000140C


const # LogicOp
  glClear* = 0x00001500
  glAnd* = 0x00001501
  glAndReverse* = 0x00001502
  glCopy* = 0x00001503
  glAndInverted* = 0x00001504
  glNoop* = 0x00001505
  glXor* = 0x00001506
  glOr* = 0x00001507
  glNor* = 0x00001508
  glEquiv* = 0x00001509
  glInvert* = 0x0000150A
  glOrReverse* = 0x0000150B
  glCopyInverted* = 0x0000150C
  glOrInverted* = 0x0000150D
  glNand* = 0x0000150E
  glSet* = 0x0000150F


# MaterialFace
# glFrontAndBack


const # MaterialParameter
  glEmission* = 0x00001600
  glShininess* = 0x00001601
  glAmbientAndDiffuse* = 0x00001602
# glAmbient
# glDiffuse
# glSpecular


const # MatrixMode
  glModelview* = 0x00001700
  glProjection* = 0x00001701
  glTexture* = 0x00001702


# NormalPointertype
# glByte
# glShort
# glFloat
# glFixed


const # PixelFormat
  glAlpha* = 0x00001906
  glRgb* = 0x00001907
  glRgba* = 0x00001908
  glLuminance* = 0x00001909
  glLuminanceAlpha* = 0x0000190A


const # PixelStoreParameter
  glUnpackAlignment* = 0x00000CF5
  glPackAlignment* = 0x00000D05


const # Pixeltype
# glUnsignedByte
  glUnsignedShort4444* = 0x00008033
  glUnsignedShort5551* = 0x00008034
  glUnsignedShort565* = 0x00008363


const # ShadingModel
  glFlat* = 0x00001D00
  glSmooth* = 0x00001D01


# StencilFunction
# glNever
# glLess
# glEqual
# glLequal
# glGreater
# glNotequal
# glGequal
# glAlways


const # StencilOp
# glZero
  glKeep* = 0x00001E00
  glReplace* = 0x00001E01
  glIncr* = 0x00001E02
  glDecr* = 0x00001E03
# glInvert


const # StringName
  glVendor* = 0x00001F00
  glRenderer* = 0x00001F01
  glVersion* = 0x00001F02
  glExtensions* = 0x00001F03


# TexCoordPointertype
# glShort
# glFloat
# glFixed
# glByte


const # TextureEnvMode
  glModulate* = 0x00002100
  glDecal* = 0x00002101
# glBlend
  glAdd* = 0x00000104
# glReplace


const # TextureEnvParameter
  glTextureEnvMode* = 0x00002200
  glTextureEnvColor* = 0x00002201


const # TextureEnvTarget
  glTextureEnv* = 0x00002300


const # TextureMagFilter
  glNearest* = 0x00002600
  glLinear* = 0x00002601


const # TextureMinFilter
# glNearest
# glLinear
  glNearestMipmapNearest* = 0x00002700
  glLinearMipmapNearest* = 0x00002701
  glNearestMipmapLinear* = 0x00002702
  glLinearMipmapLinear* = 0x00002703


const # TextureParameterName
  glTextureMagFilter* = 0x00002800
  glTextureMinFilter* = 0x00002801
  glTextureWrapS* = 0x00002802
  glTextureWrapT* = 0x00002803
  glGenerateMipmap* = 0x00008191


# TextureTarget
# glTexture2d


const # TextureUnit
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
  glClientActiveTexture* = 0x000084E1


const # TextureWrapMode
  glRepeat* = 0x00002901
  glClampToEdge* = 0x0000812F


# VertexPointertype
# glShort
# glFloat
# glFixed
# glByte


const # LightName
  glLight0* = 0x00004000
  glLight1* = 0x00004001
  glLight2* = 0x00004002
  glLight3* = 0x00004003
  glLight4* = 0x00004004
  glLight5* = 0x00004005
  glLight6* = 0x00004006
  glLight7* = 0x00004007


const # Buffer Objects
  glArrayBuffer* = 0x00008892
  glElementArrayBuffer* = 0x00008893
  glArrayBufferBinding* = 0x00008894
  glElementArrayBufferBinding* = 0x00008895
  glVertexArrayBufferBinding* = 0x00008896
  glNormalArrayBufferBinding* = 0x00008897
  glColorArrayBufferBinding* = 0x00008898
  glTextureCoordArrayBufferBinding* = 0x0000889A
  glStaticDraw* = 0x000088E4
  glDynamicDraw* = 0x000088E8
  glBufferSize* = 0x00008764
  glBufferUsage* = 0x00008765


const # Texture combine + dot3
  glSubtract* = 0x000084E7
  glCombine* = 0x00008570
  glCombineRgb* = 0x00008571
  glCombineAlpha* = 0x00008572
  glRgbScale* = 0x00008573
  glAddSigned* = 0x00008574
  glInterpolate* = 0x00008575
  glConstant* = 0x00008576
  glPrimaryColor* = 0x00008577
  glPrevious* = 0x00008578
  glOperand0Rgb* = 0x00008590
  glOperand1Rgb* = 0x00008591
  glOperand2Rgb* = 0x00008592
  glOperand0Alpha* = 0x00008598
  glOperand1Alpha* = 0x00008599
  glOperand2Alpha* = 0x0000859A
  glAlphaScale* = 0x00000D1C
  glSrc0Rgb* = 0x00008580
  glSrc1Rgb* = 0x00008581
  glSrc2Rgb* = 0x00008582
  glSrc0Alpha* = 0x00008588
  glSrc1Alpha* = 0x00008589
  glSrc2Alpha* = 0x0000858A
  glDot3Rgb* = 0x000086AE
  glDot3Rgba* = 0x000086AF


# required OES extension tokens

when not defined(GL_OES_read_format):
  const
    glImplementationColorReadTypeOes* = 0x00008B9A
    glImplementationColorReadFormatOes* = 0x00008B9B


when not defined(GL_OES_compressed_paletted_texture):
  const
    glPalette4Rgb8Oes* = 0x00008B90
    glPalette4Rgba8Oes* = 0x00008B91
    glPalette4R5G6B5Oes* = 0x00008B92
    glPalette4Rgba4Oes* = 0x00008B93
    glPalette4Rgb5A1Oes* = 0x00008B94
    glPalette8Rgb8Oes* = 0x00008B95
    glPalette8Rgba8Oes* = 0x00008B96
    glPalette8R5G6B5Oes* = 0x00008B97
    glPalette8Rgba4Oes* = 0x00008B98
    glPalette8Rgb5A1Oes* = 0x00008B99


when not defined(GL_OES_point_size_array):
  const
    glPointSizeArrayOes* = 0x00008B9C
    glPointSizeArrayTypeOes* = 0x0000898A
    glPointSizeArrayStrideOes* = 0x0000898B
    glPointSizeArrayPointerOes* = 0x0000898C
    glPointSizeArrayBufferBindingOes* = 0x00008B9F


when not defined(GL_OES_point_sprite):
  const
    glPointSpriteOes* = 0x00008861
    glCoordReplaceOes* = 0x00008862


# Available only in Common profile

proc glAlphaFunc*(`func`: GLenum; `ref`: GLclampf) {.importc.}
  ## Specify the alpha test function.
  ##
  ## func
  ##   Specifies the alpha comparison function. Symbolic constants
  ##   `glNever`, `glLess`, `glEqual`, `glLequal`, `glGreater`, `glNotEqual`,
  ##   `glGequal`, and `glAlways` are accepted. The initial value is `glAlways`.
  ## ref
  ##   Specifies the reference value that incoming alpha values are compared to.
  ##   This value is clamped to the range `[0, 1]`, where `0` represents the
  ##   lowest possible alpha value and `1` the highest possible value. The
  ##   initial reference value is `0`.


proc glClearColor*(red: GLclampf; green: GLclampf; blue: GLclampf;
  alpha: GLclampf) {.importc.}
  ## Specify clear values for the color buffer.
  ##
  ## red, green, blue, alpha
  ##   Specify the red, green, blue, and alpha values used when the color buffer
  ##   is cleared. The initial values are all `0`.


proc glClearDepthf*(depth: GLclampf) {.importc.}
  ## Specify the clear value for the depth buffer.
  ##
  ## depth
  ##   Specifies the depth value used when the depth buffer is cleared. The
  ##   initial value is `1`.


proc glClipPlanef*(plane: GLenum; equation: ptr GLfloat) {.importc.}
  ## Specify a plane against which all geometry is clipped.
  ##
  ## plane
  ##   Specifies which clipping plane is being positioned. Symbolic names of the
  ##   form `glClipPlane`i, where `i` is an integer between `0` and
  ##   `glMaxClipPlanes - 1`, are accepted.
  ## equation
  ##   Specifies the address of an array of four fixed-point or floating-point
  ##   values. These are the coefficients of a plane equation in object
  ##   coordinates: p1, p2, p3, and p4, in that order.


proc glColor4f*(red: GLfloat; green: GLfloat; blue: GLfloat; alpha: GLfloat)
  {.importc.}
  ## Set the current color.
  ##
  ## red, green, blue, alpha
  ##   Specify new red, green, blue, and alpha values for the current color.


proc glDepthRangef*(zNear: GLclampf; zFar: GLclampf) {.importc.}
  ## Specify mapping of depth values from normalized device coordinates to
  ## window coordinates.
  ##
  ## near
  ##   Specifies the mapping of the near clipping plane to window coordinates.
  ##   The initial value is `0`.
  ## far
  ##   Specifies the mapping of the far clipping plane to window coordinates.
  ##   The initial value is `1`.


proc glFogf*(pname: GLenum; param: GLfloat) {.importc.}
  ## Specify fog parameters.
  ##
  ## pname
  ##   Specifies a single-valued fog parameter. `glFogMode`, `glFogDensity`,
  ##   `glFogStart`, and `glFogEnd` are accepted.
  ## param
  ##   Specifies the value that pname will be set to.


proc glFogfv*(pname: GLenum; params: ptr GLfloat) {.importc.}
  ## Specify fog parameters.
  ##
  ## pname
  ##   Specifies a single-valued fog parameter. `glFogMode`, `glFogDensity`,
  ##   `glFogStart`, and `glFogEnd` are accepted.
  ## params
  ##   Specifies the value or values to be assigned to pname. `glFogColor`
  ##   requires an array of four values. All other parameters accept an array
  ##   containing only a single value.


proc glFrustumf*(left: GLfloat; right: GLfloat; bottom: GLfloat; top: GLfloat;
  zNear: GLfloat; zFar: GLfloat) {.importc.}
  ## Multiply the current matrix by a perspective matrix.
  ##
  ## left, right
  ##   Specify the coordinates for the left and right vertical clipping planes.
  ## bottom, top
  ##   Specify the coordinates for the bottom and top horizontal clipping planes.
  ## near, far
  ##   Specify the distances to the near and far depth clipping planes. Both
  ##   distances must be positive.


proc glGetClipPlanef*(pname: GLenum; eqn: array[4, GLfloat]) {.importc.}
  ## Return the coefficients of the specified clipping plane.
  ##
  ## plane
  ##   Specifies a clipping plane. The number of clipping planes depends on the
  ##   implementation, but at least six clipping planes are supported. Symbolic
  ##   names of the form `glClipPlane`i, where `i` is an integer between `0` and
  ##   `glMaxClipPlanes - 1`, are accepted.
  ## equation
  ##   Returns four fixed-point or floating-point values that are the
  ##   coefficients of the plane equation of plane in eye coordinates in the
  ##   order p1, p2, p3, and p4. The initial value is `(0, 0, 0, 0)`.


proc glGetFloatv*(pname: GLenum; params: ptr GLfloat) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. The symbolic constants in
  ##   the list below are accepted.
  ## params
  ##   Returns the value or values of the specified parameter.


proc glGetLightfv*(light: GLenum; pname: GLenum; params: ptr GLfloat)
  {.importc.}
  ## Set light source parameters.
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `glLighti` where `0 <= i < glMaxLights`.
  ## pname
  ##   Specifies a light source parameter for light. `glAmbient`, `glDiffuse`,
  ##   `glSpecular`, `glPosition`, `glSpotCutoff`, `glSpotDirection`,
  ##   `glSpotExponent`, `glConstantAttenuation`, `glLinearAttenuation`, and
  ##   `glQuadraticAttenuation` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that parameter pname of light
  ##   source light will be set to.


proc glGetMaterialfv*(face: GLenum; pname: GLenum; params: ptr GLfloat)
  {.importc.}
  ## Return material parameters values.
  ##
  ## face
  ##   Specifies which of the two materials is being queried. `glFront` or
  ##   `glBack` are accepted, representing the front and back materials,
  ##   respectively.
  ## pname
  ##   Specifies the material parameter to return. Accepted symbolic names are
  ##   `glAmbient`, `glDiffuse`, `glSpecular`, `glEmission`, and `glShininess`.
  ## params
  ##   Returns the requested data.


proc glGetTexEnvfv*(env: GLenum; pname: GLenum; params: ptr GLfloat) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `glTextureEnv` or
  ##   `glPointSpriteOes`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `glTextureEnvMode`, `glTextureEnvColor`,
  ##   `glCombineRgb`, `glCombineAlpha`, `glSrc0Rgb`, `glSrc1Rgb`, `glSrc2Rgb`,
  ##   `glSrc0Alpha`, `glSrc1Alpha`, `glSrc2Alpha`, `glOperand0Rgb`,
  ##   `glOperand1Rgb`, `glOperand2Rgb`, `glOperand0Alpha`, `glOperand1Alpha`,
  ##   `glOperand2Alpha`, `glRgbScale`, `glAlphaScale`, or `glCoordReplaceOes`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `glAdd`, `glAddSigned`,
  ##   `glDot3Rgb`, `glDot3Rgba`, `glInterpolate`, `glModulate`, `glDecal`,
  ##   `glBlend`, `glReplace`, `glSubtract`, `glCombine`, `glTexture`,
  ##   `glConstant`, `glPrimaryColor`, `glPrevious`, `glSrcColor`,
  ##   `glOneMinusSrcColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, a single
  ##   boolean value for the point sprite texture coordinate replacement, or
  ##   `1.0`, `2.0`, or `4.0` when specifying the `glRgbScale` or `glAlphaScale`.


proc glGetTexParameterfv*(target: GLenum; pname: GLenum; params: ptr GLfloat)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `glTexture2d`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, `glTextureWrapT`, or `glGenerateMipmap`.
  ## params
  ##   Specifies a pointer to an array where the value or values of pname are
  ##   stored.


proc glLightModelf*(pname: GLenum; param: GLfloat) {.importc.}
  ## Set the lighting model parameters.
  ##
  ## pname
  ##   Specifies a single-valued lighting model parameter. Must be
  ##   `glLightModelTwoSide`.
  ## param
  ##   Specifies the value that param will be set to.


proc glLightModelfv*(pname: GLenum; params: ptr GLfloat) {.importc.}
  ## Set the lighting model parameters.
  ##
  ## pname
  ##   Specifies a lighting model parameter. `glLightModelAmbient` and
  ##   `glLightModelTwoSide` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that params will be set to.


proc glLightf*(light: GLenum; pname: GLenum; param: GLfloat) {.importc.}
  ## Set light source parameters.
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `glLight`i where `0 <= i < glMaxLights`.
  ## pname
  ##   Specifies a single-valued light source parameter for light.
  ##   `glSpotExponent`, `glSpotCutoff`, `glConstantAttenuation`,
  ##   `glLinearAttenuation`, and `glQuadraticAttenuation` are accepted.
  ## param
  ##   Specifies the value that parameter pname of light source light will be
  ##   set to.


proc glLightfv*(light: GLenum; pname: GLenum; params: ptr GLfloat) {.importc.}
  ## Set light source parameters.
  ##
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `glLight`i where `0 <= i < glMaxLights`.
  ## pname
  ##   Specifies a light source parameter for light. `glAmbient`, `glDiffuse`,
  ##   `glSpecular`, `glPosition`, `glSpotCutoff`, `glSpotDirection`,
  ##   `glSpotExponent`, `glConstantAttenuation`, `glLinearAttenuation`, and
  ##   `glQuadraticAttenuation` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that parameter `pname` of
  ##   light source light will be set to.


proc glLineWidth*(width: GLfloat) {.importc.}
  ## Specify the width of rasterized lines.
  ##
  ## width
  ##   Specifies the width of rasterized lines. The initial value is 1.


proc glLoadMatrixf*(m: ptr GLfloat) {.importc.}
  ## Replace the current matrix with the specified matrix.
  ##
  ## m
  ##   Specifies a pointer to 16 consecutive values, which are used as the
  ##   elements of a 4x4  column-major matrix.


proc glMaterialf*(face: GLenum; pname: GLenum; param: GLfloat) {.importc.}
  ## Specify material parameters for the lighting model.
  ##
  ## face
  ##   Specifies which face or faces are being updated. Must be `glFrontAndBack`.
  ## pname
  ##   Specifies the single-valued material parameter of the face or faces that
  ##   is being updated. Must be glShininess.
  ## param
  ##   Specifies the value that parameter `glShininess` will be set to.


proc glMaterialfv*(face: GLenum; pname: GLenum; params: ptr GLfloat) {.importc.}
  ## Specify material parameters for the lighting model.
  ##
  ## face
  ##   Specifies which face or faces are being updated. Must be `glFrontAndBack`.
  ## pname
  ##   Specifies the material parameter of the face or faces that is being
  ##   updated. Must be one of `glAmbient`, `glDiffuse`, `glSpecular`,
  ##  `glEmission`, `glShininess`, or `glAmbientAndDiffuse`.
  ## params
  ##   Specifies a pointer to the value or values that `pname` will be set to.


proc glMultMatrixf*(m: ptr GLfloat) {.importc.}
  ## Multiply the current matrix with the specified matrix.
  ##
  ## m
  ##   Points to 16 consecutive values that are used as the elements of a 4x4
  ##   column-major matrix.


proc glMultiTexCoord4f*(target: GLenum; s: GLfloat; t: GLfloat; r: GLfloat;
  q: GLfloat) {.importc.}
  ## Set the current texture coordinates.
  ##
  ## target
  ##   Specifies the texture unit whose coordinates should be modified. The
  ##   number of texture units is implementation dependent, but must be at least
  ##   two. Symbolic constant must be one of `glTexture`i, where `i` ranges from
  ##   `0` to `glMaxTextureUnits - 1`, which is an implementation-dependent
  ##   value.
  ## s, t, r, q
  ##   Specify `s`, `t`, `r`, and `q` texture coordinates for target texture
  ##   unit.


proc glNormal3f*(nx: GLfloat; ny: GLfloat; nz: GLfloat) {.importc.}
  ## Set the current normal vector.
  ##
  ## nx, ny, nz
  ##   Specify the x, y, and z coordinates of the new current normal. The
  ##   initial value is `(0, 0, 1)`.


proc glOrthof*(left: GLfloat; right: GLfloat; bottom: GLfloat; top: GLfloat;
  zNear: GLfloat; zFar: GLfloat) {.importc.}
  ## Multiply the current matrix with an orthographic matrix.
  ##
  ## left, right
  ##   Specify the coordinates for the left and right vertical clipping planes.
  ## bottom, top
  ##   Specify the coordinates for the bottom and top horizontal clipping planes.
  ## near, far
  ##   Specify the distances to the nearer and farther depth clipping planes.
  ##   These values are negative if the plane is to be behind the viewer.


proc glPointParameterf*(pname: GLenum; param: GLfloat) {.importc.}
  ## Specify parameters for point rasterization.
  ##
  ## pname
  ##   Specifies the single-valued parameter to be updated. Can be either
  ##   `glPointSizeMin`, `glPointSizeMax`, or `glPointFadeThresholdSize`.
  ## param
  ##   Specifies the value that the parameter will be set to.


proc glPointParameterfv*(pname: GLenum; params: ptr GLfloat) {.importc.}
  ## Specify parameters for point rasterization.
  ##
  ## pname
  ##   Specifies the parameter to be updated. Can be either `glPointSizeMin`,
  ##   `glPointSizeMax`, `glPointFadeThresholdSize`, or
  ##   `glPointDistanceAttenuation`.
  ## params
  ##   Specifies a pointer to the value or values that pname will be set to.


proc glPointSize*(size: GLfloat) {.importc.}
  ## Specify the diameter of rasterized points.
  ##
  ## size
  ##   Specifies the diameter of rasterized points. The initial value is `1`.


proc glPolygonOffset*(factor: GLfloat; units: GLfloat) {.importc.}
  ## Set the scale and units used to calculate depth values.
  ##
  ## factor
  ##   Specifies a scale factor that is used to create a variable depth offset
  ##   for each polygon. The initial value is `0`.
  ## units
  ##   Is multiplied by an implementation-specific value to create a constant
  ##   depth offset. The initial value is `0`.


proc glRotatef*(angle: GLfloat; x: GLfloat; y: GLfloat; z: GLfloat) {.importc.}
  ## Multiply the current matrix by a rotation matrix.
  ##
  ## angle
  ##   Specifies the angle of rotation, in degrees.
  ## x, y, z
  ##   Specify the x, y, and z coordinates of a vector, respectively.


proc glScalef*(x: GLfloat; y: GLfloat; z: GLfloat) {.importc.}
  ## Multiply the current matrix by a general scaling matrix.
  ##
  ## x, y, z
  ##   Specify scale factors along the x, y, and z axes, respectively.


proc glTexEnvf*(target: GLenum; pname: GLenum; param: GLfloat) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `glTextureEnv` or
  ##   `glPointSpriteOes`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `glTextureEnvMode`, `glCombineRgb`,
  ##   `glCombineAlpha`, `glSrc0Rgb`, `glSrc1Rgb`, `glSrc2Rgb`, `glSrc0Alpha`,
  ##   `glSrc1Alpha`, `glSrc2Alpha`, `glOperand0Rgb`, `glOperand1Rgb`,
  ##   `glOperand2Rgb`, `glOperand0Alpha`, `glOperand1Alpha`, `glOperand2Alpha`,
  ##   `glRgbScale`, `glAlphaScale`, or `glCoordReplaceOes`.
  ## param
  ##   Specifies a single symbolic constant, one of `glAdd`, `glAddSigned`,
  ##   `glDot3Rgb`, `glDot3Rgba`, `glInterpolate`, `glModulate`, `glDecal`,
  ##   `glBlend`, `glReplace`, `glSubtract`, `glCombine`, `glTexture`,
  ##   `glConstant`, `glPrimaryColor`, `glPrevious`, `glSrcColor`,
  ##   `glOneMinusSrcColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, a single
  ##   boolean value for the point sprite texture coordinate replacement, or
  ##   `1.0`, `2.0`, or `4.0` when specifying the `glRgbScale` or
  ##   `glAlphaScale`.


proc glTexEnvfv*(target: GLenum; pname: GLenum; params: ptr GLfloat) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `glTextureEnv` or
  ##   `glPointSpriteOes`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `glTextureEnvMode`, `glTextureEnvColor`,
  ##   `glCombineRgb`, `glCombineAlpha`, `glSrc0Rgb`,`glSrc1Rgb`, `glSrc2Rgb`,
  ##   `glSrc0Alpha`, `glSrc1Alpha`, `glSrc2Alpha`, `glOperand0Rgb`,
  ##   `glOperand1Rgb`, `glOperand2Rgb`, `glOperand0Alpha`, `glOperand1Alpha`,
  ##   `glOperand2Alpha`, `glRgbScale`, `glAlphaScale`, or `glCoordReplaceOes`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `glAdd`, `glAddSigned`,
  ##   `glDot3Rgb`, `glDot3Rgba`, `glInterpolate`, `glModulate`, `glDecal`,
  ##   `glBlend`, `glReplace`, `glSubtract`, `glCombine`, `glTexture`,
  ##   `glConstant`, `glPrimaryColor`, `glPrevious`, `glSrcColor`,
  ##   `glOneMinusSrcColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, a single
  ##   boolean value for the point sprite texture coordinate replacement, or
  ##   `1.0`, `2.0`, or `4.0` when specifying the `glRgbScale` or
  ##   `glAlphaScale`.


proc glTexParameterf*(target: GLenum; pname: GLenum; param: GLfloat) {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `glTexture2d`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture parameter. Which
  ##   can be one of the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, `glTextureWrapT`, or `glGenerateMipmap`.
  ## param
  ##   Specifies the value of pname.


proc glTexParameterfv*(target: GLenum; pname: GLenum; params: ptr GLfloat)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `glTexture2d`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, `glTextureWrapT`, or `glGenerateMipmap`.
  ## params
  ##   Specifies a pointer to an array where the value or values of `pname` are
  ##   stored.


proc glTranslatef*(x: GLfloat; y: GLfloat; z: GLfloat) {.importc.}
  ## Multiply the current matrix by a translation matrix.
  ##
  ## x, y, z
  ##   Specify the x, y, and z coordinates of a translation vector.


# Available in both Common and Common-Lite profiles

proc glActiveTexture*(texture: GLenum) {.importc.}
  ## Select server-side active texture unit.
  ##
  ## texture
  ##   Specifies which texture unit to make active. The number of texture units
  ##   is implementation dependent, but must be at least two. `texture` must be
  ##   one of `glTexture`i, where `0 <= i < glMaxTextureUnits` , which is an
  ##   implementation-dependent value. The intial value is `glTexture0`.


proc glAlphaFuncx*(`func`: GLenum; `ref`: GLclampx) {.importc.}
  ## Specify the alpha test function.
  ##
  ## func
  ##   Specifies the alpha comparison function. Symbolic constants
  ##   `glNever`, `glLess`, `glEqual`, `glLequal`, `glGreater`, `glNotEqual`,
  ##   `glGequal`, and `glAlways` are accepted. The initial value is `glAlways`.
  ## ref
  ##   Specifies the reference value that incoming alpha values are compared to.
  ##   This value is clamped to the range `[0, 1]`, where `0` represents the
  ##   lowest possible alpha value and `1` the highest possible value. The
  ##   initial reference value is `0`.


proc glBindBuffer*(target: GLenum; buffer: GLuint) {.importc.}
  ## Bind a named buffer to a target.
  ##
  ## target
  ##   Specifies the target to which the buffer is bound. The symbolic constant
  ##   must be `glArrayBuffer` or `glElementArrayBuffer`.
  ## buffer
  ##   Specifies the name of a buffer object.


proc glBindTexture*(target: GLenum; texture: GLuint) {.importc.}
  ## Bind a named texture to a texturing target.
  ##
  ## target
  ##   Specifies the target to which the texture is bound. Must be
  ##   `glTexture2D`.
  ## texture
  ##   Specifies the name of a texture.


proc glBlendFunc*(sfactor: GLenum; dfactor: GLenum) {.importc.}
  ## Specify pixel arithmetic.
  ##
  ## sfactor
  ##   Specifies how the red, green, blue, and alpha source blending factors are
  ##   computed. The following symbolic constants are accepted: `glZero`,
  ##   `glOne`, `glDstColor`, `glOneMinusDstColor`, `glSrcAlpha`,
  ##   `glOneMinusSrcAlpha`, `glDstAlpha`, `glOneMinusDstAlpha`, and
  ##   `glSrcAlpha_SATURATE`. The initial value is `glOne`.
  ## dfactor
  ##   Specifies how the red, green, blue, and alpha destination blending
  ##   factors are computed. Eight symbolic constants are accepted: `glZero`,
  ##   `glOne`, `glSrcColor`, `glOneMinusSrcColor`, `glSrcAlpha`,
  ##   `glOneMinusSrcAlpha`, `glDstAlpha`, and `glOneMinusDstAlpha`. The initial
  ##   value is `glZero`.


proc glBufferData*(target: GLenum; size: GLsizeiptr; data: ptr GLvoid;
  usage: GLenum) {.importc.}
  ## Create and initializes a buffer object's data store.
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
  ##   constant must be `glStaticDraw` or `glDynamicDraw`.


proc glBufferSubData*(target: GLenum; offset: GLintptr; size: GLsizeiptr;
  data: ptr GLvoid) {.importc.}
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


proc glClear*(mask: GLbitfield) {.importc.}
  ## Clear buffers to preset values.
  ##
  ## mask
  ##   Bitwise OR of masks that indicate the buffers to be cleared. Valid masks
  ##   are `glColorBufferBit`, `glDepthBufferBit`, and `glStencilBufferBit`.


proc glClearColorx*(red: GLclampx; green: GLclampx; blue: GLclampx;
  alpha: GLclampx) {.importc.}
  ## Specify clear values for the color buffer.
  ##
  ## red, green, blue, alpha
  ##   Specify the red, green, blue, and alpha values used when the color buffer
  ##   is cleared. The initial values are all `0`.


proc glClearDepthx*(depth: GLclampx) {.importc.}
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


proc glClientActiveTexture*(texture: GLenum) {.importc.}


proc glClipPlanex*(plane: GLenum; equation: ptr GLfixed) {.importc.}
  ## Specify a plane against which all geometry is clipped.
  ##
  ## plane
  ##   Specifies which clipping plane is being positioned. Symbolic names of the
  ##   form `glClipPlane`i, where `i` is an integer between `0` and
  ##   `glMaxClipPlanes - 1`, are accepted.
  ## equation
  ##   Specifies the address of an array of four fixed-point or floating-point
  ##   values. These are the coefficients of a plane equation in object
  ##   coordinates: p1, p2, p3, and p4, in that order.


proc glColor4ub*(red: GLubyte; green: GLubyte; blue: GLubyte; alpha: GLubyte)
  {.importc.}
  ## Set the current color.
  ##
  ## red, green, blue, alpha
  ##   Specify new red, green, blue, and alpha values for the current color.


proc glColor4x*(red: GLfixed; green: GLfixed; blue: GLfixed; alpha: GLfixed)
  {.importc.}
  ## Set the current color.
  ##
  ## red, green, blue, alpha
  ##   Specify new red, green, blue, and alpha values for the current color.


proc glColorMask*(red: GLboolean; green: GLboolean; blue: GLboolean;
  alpha: GLboolean) {.importc.}
  ## Enable and disable writing of color buffer components.
  ##
  ## red, green, blue, alpha
  ##   Specify whether red, green, blue, and alpha can or cannot be written into
  ##   the color buffer. The initial values are all `glTrue`, indicating that
  ##   all color components can be written.


proc glColorPointer*(size: GLint; `type`: GLenum; stride: GLsizei;
  pointer: ptr GLvoid) {.importc.}
  ## Define an array of colors.
  ##
  ## size
  ##   Specifies the number of components per color. Must be `4`. The initial
  ##   value is `4`.
  ## type
  ##   Specifies the data type of each color component in the array. Symbolic
  ##   constants `glUnsignedByte` and `glFixed` are accepted. However, the
  ##   initial value is `glFloat`. The common profile accepts the symbolic
  ##   constant `glFloat` as well.
  ## stride
  ##   Specifies the byte offset between consecutive colors. If stride is `0`,
  ##   the colors are understood to be tightly packed in the array. The initial
  ##   value is `0`.
  ## pointer
  ##   Specifies a pointer to the first component of the first color element in
  ##   the array.


proc glCompressedTexImage2D*(target: GLenum; level: GLint;
  internalformat: GLenum; width: GLsizei; height: GLsizei; border: GLint;
  imageSize: GLsizei; data: ptr GLvoid) {.importc.}
  ## Specify a two-dimensional compressed texture image.
  ##
  ## target
  ##   Specifies the target texture. Must be `glTexture2D`.
  ## level
  ##   Specifies the level-of-detail number. For paletted formats, where all
  ##   mipmap levels are loaded at once, this parameter is overloaded to
  ##   represent the negative of the greatest mipmap level included in data.
  ## internalformat
  ##   Specifies the color components in the texture. The following symbolic
  ##   constants are accepted: `glPalette4Rgb8Oes`, `glPalette4Rgba8Oes`,
  ##   `glPalette4R5G6B5Oes`, `glPalette4Rgba4Oes`, `glPalette4Rgb5A1Oes`,
  ##   `glPalette8Rgb8Oes`, `glPalette8Rgba8Oes`, `glPalette8R5G6B5Oes`,
  ##   `glPalette8Rgba4Oes`, and `glPalette8Rgb5A1Oes`.
  ## width
  ##   Specifies the width of the texture image. Must be `2n` for some integer
  ##   `n`. All implementations support texture images that are at least 64
  ##   texels wide.
  ## height
  ##   Specifies the height of the texture image. Must be `2m` for some integer
  ##   `m`. All implementations support texture images that are at least 64
  ##   texels high.
  ## border
  ##   Specifies the width of the border. Must be `0`.
  ## imageSize
  ##   Specifies the size of the compressed image data in bytes.
  ## data
  ##   Specifies a pointer to the compressed image data in memory.


proc glCompressedTexSubImage2D*(target: GLenum; level: GLint; xoffset: GLint;
  yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum;
  imageSize: GLsizei; data: ptr GLvoid) {.importc.}
  ## Specify a two-dimensional compressed texture subimage.
  ##
  ## target
  ##   Specifies the target texture. Must be `glTexture2D`.
  ## level
  ##   Specifies the level-of-detail number.
  ## xoffset
  ##   Specifies a texel offset in the x direction within the texture array.
  ## yoffset
  ##   Specifies a texel offset in the y direction within the texture array.
  ## width
  ##   Specifies the width of the texture subimage.
  ## height
  ##   Specifies the height of the texture subimage.
  ## format
  ##   Specifies the format of the pixel data. Currently, there is no supported
  ##   format.
  ## imageSize
  ##   Specifies the size of the compressed pixel data in bytes.
  ## data
  ##   Specifies a pointer to the compressed image data in memory.


proc glCopyTexImage2D*(target: GLenum; level: GLint; internalformat: GLenum;
  x: GLint; y: GLint; width: GLsizei; height: GLsizei; border: GLint)
  {.importc.}
  ## Specify a two-dimensional texture image with pixels from the color buffer.
  ##
  ## target
  ##   Specifies the target texture. Must be `glTexture2D`.
  ## level
  ##   Specifies the level-of-detail number. Level `0` is the base image level.
  ##   Level `n` is the `n`th mipmap reduction image.
  ## internalformat
  ##    Specifies the color components of the texture. Must be one of the
  ##    following symbolic constants: `glAlpha`, `glLuminance`,
  ##    `glLuminanceAlpha`, `glRgb`, or `glRgbA`.
  ## x, y
  ##    Specify the window coordinates of the lower left corner of the
  ##    rectangular region of pixels to be copied.
  ## width
  ##   Specifies the width of the texture image. Must be `0` or `2n` for some
  ##   integer `n`.
  ## height
  ##   Specifies the height of the texture image. Must be `0` or `2m` for some
  ##   integer m.
  ## border
  ##   Specifies the width of the border. Must be `0`.


proc glCopyTexSubImage2D*(target: GLenum; level: GLint; xoffset: GLint;
  yoffset: GLint; x: GLint; y: GLint; width: GLsizei; height: GLsizei)
  {.importc.}
  ## Specify a two-dimensional texture subimage with pixels from the color
  ## buffer.
  ##
  ## target
  ##   Specifies the target texture. Must be `glTexture2D`.
  ## level
  ##   Specifies the level-of-detail number. Level `0` is the base image level.
  ##   Level `n` is the `n`th mipmap reduction image.
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


proc glCullFace*(mode: GLenum) {.importc.}
  ## Specify whether front- or back-facing polygons are culled.
  ##
  ## mode
  ##   Specifies whether front- or back-facing polygons are culled. Symbolic
  ##   constants `glFront`, `glBack`, and `glFrontAndBack` are accepted. The
  ##   initial value is `glBack`.


proc glDeleteBuffers*(n: GLsizei; buffers: ptr GLuint) {.importc.}
  ## Delete named buffer objects.
  ##
  ## n
  ##   Specifies the number of buffer objects to be deleted.
  ## buffers
  ##   Specifies an array of buffer object names to be deleted.


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
  ##   Specifies the depth comparison function. Symbolic constants `glNever`,
  ##   `glLess`, `glEqual`, `glLequal`, `glGreater`, `glNotequal`, `glGequal`,
  ##   and `glAlways` are accepted. The initial value is `glLess`.


proc glDepthMask*(flag: GLboolean) {.importc.}
  ## Enable or disable writing into the depth buffer.
  ##
  ## flag
  ##   Specifies whether the depth buffer is enabled for writing. If flag is
  ##   `glFalse`, depth buffer writing is disabled, otherwise it is enabled.
  ##   The initial value is `glTrue`.


proc glDepthRangex*(zNear: GLclampx; zFar: GLclampx) {.importc.}
  ## Specify mapping of depth values from normalized device coordinates to
  ## window coordinates.
  ##
  ## near
  ##   Specifies the mapping of the near clipping plane to window coordinates.
  ##   The initial value is `0`.
  ## far
  ##   Specifies the mapping of the far clipping plane to window coordinates.
  ##   The initial value is `1`.


proc glDisable*(cap: GLenum) {.importc.}
  ## Disable server-side GL capabilities.
  ##
  ## cap
  ##   Specifies a symbolic constant indicating a GL capability.


proc glDisableClientState*(array: GLenum) {.importc.}
  ## Disable client-side capability.
  ##
  ## array
  ##   Specifies the capability to disable. Symbolic constants `glColorArray`,
  ##   `glNormalArray`, `glPointSizeArrayOes`, `glTextureCoordArray`, and
  ##   `glVertexArray` are accepted.


proc glDrawArrays*(mode: GLenum; first: GLint; count: GLsizei) {.importc.}
  ## Render primitives from array data.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `glPoints`, `glLineStrip`, `glLineLoop`, `glLines`, `glTriangleStrip`,
  ##   `glTriangleFan, and `glTriangles` are accepted.
  ## first
  ##   Specifies the starting index in the enabled arrays.
  ## count
  ##   Specifies the number of indices to be rendered.


proc glDrawElements*(mode: GLenum; count: GLsizei; `type`: GLenum;
  indices: ptr GLvoid) {.importc.}
  ## Render primitives from array data.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `glPoints`, `glLineStrip`, `glLineLoop`, `glLines`, `glTriangleStrip`,
  ##   `glTriangleFan`, and `glTriangles` are accepted.
  ## count
  ##   Specifies the number of elements to be rendered.
  ## type
  ##   Specifies the type of the values in indices. Must be either
  ##   `glUnsignedByte` or `glUnsignedShort`.
  ## indices
  ##   Specifies a pointer to the location where the indices are stored.


proc glEnable*(cap: GLenum) {.importc.}
  ## Enable server-side GL capabilities.
  ##
  ## cap
  ##   Specifies a symbolic constant indicating a GL capability.


proc glEnableClientState*(array: GLenum) {.importc.}
  ## Enable client-side capability.
  ##
  ## array
  ##   Specifies the capability to enable. Symbolic constants `glColorArray`,
  ##   `glNormalArray`, `glPointSizeArrayOes`, `glTextureCoordArray`, and
  ##   `glVertexArray` are accepted.


proc glFinish*() {.importc.}
  ## Block until all GL execution is complete,


proc glFlush*() {.importc.}
  ## Force execution of GL commands in finite time.


proc glFogx*(pname: GLenum; param: GLfixed) {.importc.}
  ## Specify fog parameters.
  ##
  ## pname
  ##   Specifies a single-valued fog parameter. `glFogMode`, `glFogDensity`,
  ##   `glFogStart`, and `glFogEnd` are accepted.
  ## param
  ##   Specifies the value that pname will be set to.


proc glFogxv*(pname: GLenum; params: ptr GLfixed) {.importc.}
  ## Specify fog parameters.
  ##
  ## pname
  ##   Specifies a single-valued fog parameter. `glFogMode`, `glFogDensity`,
  ##   `glFogStart`, and `glFogEnd` are accepted.
  ## params
  ##   Specifies the value or values to be assigned to pname. `glFogColor`
  ##   requires an array of four values. All other parameters accept an array
  ##   containing only a single value.


proc glFrontFace*(mode: GLenum) {.importc.}
  ## Define front- and back-facing polygons.
  ##
  ## mode
  ##   Specifies the orientation of front-facing polygons. `glCw` and `glCcw`
  ##   are accepted. The initial value is `glCcw`.


proc glFrustumx*(left: GLfixed; right: GLfixed; bottom: GLfixed; top: GLfixed;
  zNear: GLfixed; zFar: GLfixed) {.importc.}
  ## Multiply the current matrix by a perspective matrix.
  ##
  ## left, right
  ##   Specify the coordinates for the left and right vertical clipping planes.
  ## bottom, top
  ##   Specify the coordinates for the bottom and top horizontal clipping planes.
  ## near, far
  ##   Specify the distances to the near and far depth clipping planes. Both
  ##   distances must be positive.


proc glGetBooleanv*(pname: GLenum; params: ptr GLboolean) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. The symbolic constants in
  ##   the list below are accepted.
  ## params
  ##   Returns the value or values of the specified parameter.


proc glGetBufferParameteriv*(target: GLenum; pname: GLenum; params: ptr GLint)
  {.importc.}
  ## Return parameters of a buffer object.`
  ##
  ## target
  ##   Specifies the target buffer object. The symbolic constant must be
  ##   `glArrayBuffer` or `glElementArrayBuffer`.
  ## pname
  ##   Specifies the symbolic name of a buffer object parameter. Accepted
  ##   values are `glBufferSize` or `glBufferUsage`.
  ## params
  ##   Returns the requested parameter.


proc glGetClipPlanex*(pname: GLenum; eqn: array[4, GLfixed]) {.importc.}
  ## Return the coefficients of the specified clipping plane.
  ##
  ## plane
  ##   Specifies a clipping plane. The number of clipping planes depends on the
  ##   implementation, but at least six clipping planes are supported. Symbolic
  ##   names of the form `glClipPlane`i, where `i` is an integer between `0` and
  ##   `glMaxClipPlanes - 1`, are accepted.
  ## equation
  ##   Returns four fixed-point or floating-point values that are the
  ##   coefficients of the plane equation of plane in eye coordinates in the
  ##   order p1, p2, p3, and p4. The initial value is `(0, 0, 0, 0)`.


proc glGenBuffers*(n: GLsizei; buffers: ptr GLuint) {.importc.}
  ## Generate buffer object names.
  ##
  ## n
  ##   Specifies the number of buffer object names to be generated.
  ## buffers
  ##   Specifies an array in which the generated buffer object names are stored.


proc glGenTextures*(n: GLsizei; textures: ptr GLuint) {.importc.}
  ## Generate texture names.
  ##
  ## n
  ##   Specifies the number of texture names to be generated.
  ## textures
  ##   Specifies an array in which the generated texture names are stored.


proc glGetError*(): GLenum {.importc.}
  ## Return error information.


proc glGetFixedv*(pname: GLenum; params: ptr GLfixed) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. The symbolic constants in
  ##   the list below are accepted.
  ## params
  ##   Returns the value or values of the specified parameter.


proc glGetIntegerv*(pname: GLenum; params: ptr GLint) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. The symbolic constants in
  ##   the list below are accepted.
  ## params
  ##   Returns the value or values of the specified parameter.


proc glGetLightxv*(light: GLenum; pname: GLenum; params: ptr GLfixed)
  {.importc.}
  ## Set light source parameters.
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `glLighti` where `0 <= i < glMaxLights`.
  ## pname
  ##   Specifies a light source parameter for light. `glAmbient`, `glDiffuse`,
  ##   `glSpecular`, `glPosition <#glPosition>`_, `glSpotCutoff`,
  ##   `glSpotDirection`, `glSpotExponent`, `glConstantAttenuation`,
  ##   `glLinearAttenuation`, and `glQuadraticAttenuation` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that parameter pname of light
  ##   source light will be set to.


proc glGetMaterialxv*(face: GLenum; pname: GLenum; params: ptr GLfixed)
  {.importc.}
  ## Return material parameters values.
  ##
  ## face
  ##   Specifies which of the two materials is being queried. `glFront` or
  ##   `glBack` are accepted, representing the front and back materials,
  ##   respectively.
  ## pname
  ##   Specifies the material parameter to return. Accepted symbolic names are
  ##   `glAmbient`, `glDiffuse`, `glSpecular`, `glEmission`, and `glShininess`.
  ## params
  ##   Returns the requested data.


proc glGetPointerv*(pname: GLenum; params: ptr ptr GLvoid) {.importc.}
  ## Return the address of the specified pointer.
  ##
  ## pname
  ##   Specifies the array or buffer pointer to be returned. Accepted symbolic
  ##   names are `glColorArrayPointer`, `glNormalArrayPointer`,
  ##   `glPointSizeArrayPointerOes`, `glTextureCoordArrayPointer`, and
  ##   `glVertexArrayPointer`.
  ## params
  ##   Returns the pointer value specified by `pname`.


proc glGetString*(name: GLenum): ptr GLubyte {.importc.}
  ## Return a string describing the current GL connection.
  ##
  ## name
  ##   Specifies a symbolic constant, one of `glVendor`, `glRenderer`,
  ##   `glVersion`, or `glExtensions`.


proc glGetTexEnviv*(env: GLenum; pname: GLenum; params: ptr GLint) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `glTextureEnv` or
  ##   `glPointSpriteOes`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `glTextureEnvMode`, `glTextureEnvColor`,
  ##   `glCombineRgb`, `glCombineAlpha`, `glSrc0Rgb`, `glSrc1Rgb`, `glSrc2Rgb`,
  ##   `glSrc0Alpha`, `glSrc1Alpha`, `glSrc2Alpha`, `glOperand0Rgb`,
  ##   `glOperand1Rgb`, `glOperand2Rgb`, `glOperand0Alpha`, `glOperand1Alpha`,
  ##   `glOperand2Alpha`, `glRgbScale`, `glAlphaScale`, or `glCoordReplaceOes`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `glAdd`, `glAddSigned`,
  ##   `glDot3Rgb`, `glDot3Rgba`, `glInterpolate`, `glModulate`, `glDecal`,
  ##   `glBlend`, `glReplace`, `glSubtract`, `glCombine`, `glTexture`,
  ##   `glConstant`, `glPrimaryColor`, `glPrevious`, `glSrcColor`,
  ##   `glOneMinusSrcColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, a single
  ##   boolean value for the point sprite texture coordinate replacement, or
  ##   `1.0`, `2.0`, or `4.0` when specifying the `glRgbScale` or `glAlphaScale`.


proc glGetTexEnvxv*(env: GLenum; pname: GLenum; params: ptr GLfixed) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `glTextureEnv` or
  ##   `glPointSpriteOes`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `glTextureEnvMode`, `glTextureEnvColor`,
  ##   `glCombineRgb`, `glCombineAlpha`, `glSrc0Rgb`, `glSrc1Rgb`, `glSrc2Rgb`,
  ##   `glSrc0Alpha`, `glSrc1Alpha`, `glSrc2Alpha`, `glOperand0Rgb`,
  ##   `glOperand1Rgb`, `glOperand2Rgb`, `glOperand0Alpha`, `glOperand1Alpha`,
  ##   `glOperand2Alpha`, `glRgbScale`, `glAlphaScale`, or `glCoordReplaceOes`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `glAdd`, `glAddSigned`,
  ##   `glDot3Rgb`, `glDot3Rgba`, `glInterpolate`, `glModulate`, `glDecal`,
  ##   `glBlend`, `glReplace`, `glSubtract`, `glCombine`, `glTexture`,
  ##   `glConstant`, `glPrimaryColor`, `glPrevious`, `glSrcColor`,
  ##   `glOneMinusSrcColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, a single
  ##   boolean value for the point sprite texture coordinate replacement, or
  ##   `1.0`, `2.0`, or `4.0` when specifying the `glRgbScale` or `glAlphaScale`.


proc glGetTexParameteriv*(target: GLenum; pname: GLenum; params: ptr GLint)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `glTexture2d`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, `glTextureWrapT`, or `glGenerateMipmap`.
  ## params
  ##   Specifies a pointer to an array where the value or values of pname are
  ##   stored.


proc glGetTexParameterxv*(target: GLenum; pname: GLenum; params: ptr GLfixed)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `glTexture2d`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, `glTextureWrapT`, or `glGenerateMipmap`.
  ## params
  ##   Specifies a pointer to an array where the value or values of pname are
  ##   stored.


proc glHint*(target: GLenum; mode: GLenum) {.importc.}
  ## Specify implementation-specific hints.
  ##
  ## target
  ##   Specifies a symbolic constant indicating the behavior to be controlled.
  ##   `glFogHint`, `glGenerateMipmapHint` , `glLineSMoothHint`,
  ##   `glPerspectiveCorrectionHint`, and `glPointSmoothHint` are accepted.
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


proc glIsTexture*(texture: GLuint): GLboolean {.importc.}
  ## Determine if a name corresponds to a texture.
  ##
  ## texture
  ##   Specifies a value that may be the name of a texture.


proc glLightModelx*(pname: GLenum; param: GLfixed) {.importc.}
  ## Set the lighting model parameters.
  ##
  ## pname
  ##   Specifies a single-valued lighting model parameter. Must be
  ##   `glLightModelTwoSide`.
  ## param
  ##   Specifies the value that param will be set to.


proc glLightModelxv*(pname: GLenum; params: ptr GLfixed) {.importc.}
  ## Set the lighting model parameters.
  ##
  ## pname
  ##   Specifies a lighting model parameter. `glLightModelAmbient` and
  ##   `glLightModelTwoSide` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that params will be set to.


proc glLightx*(light: GLenum; pname: GLenum; param: GLfixed) {.importc.}
  ## Set light source parameters.
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `glLight`i where `0 <= i < glMaxLights`.
  ## pname
  ##   Specifies a single-valued light source parameter for light.
  ##   `glSpotExponent`, `glSpotCutoff`, `glConstantAttenuation`,
  ##   `glLinearAttenuation`, and `glQuadraticAttenuation` are accepted.
  ## param
  ##   Specifies the value that parameter pname of light source light will be
  ##   set to.


proc glLightxv*(light: GLenum; pname: GLenum; params: ptr GLfixed) {.importc.}
  ## Set light source parameters.
  ##
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `glLight`i where `0 <= i < glMaxLights`.
  ## pname
  ##   Specifies a light source parameter for light. `glAmbient`, `glDiffuse`,
  ##   `glSpecular`, `glPosition`, `glSpotCutoff`, `glSpotDirection`,
  ##   `glSpotExponent`, `glConstantAttenuation`, `glLinearAttenuation`, and
  ##   `glQuadraticAttenuation` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that parameter `pname` of
  ##   light source light will be set to.


proc glLineWidthx*(width: GLfixed) {.importc.}
  ## Specify the width of rasterized lines.
  ##
  ## width
  ##   Specifies the width of rasterized lines. The initial value is 1.


proc glLoadIdentity*() {.importc.}
  ## Replace the current matrix with the identity matrix.


proc glLoadMatrixx*(m: ptr GLfixed) {.importc.}
  ## Replace the current matrix with the specified matrix.
  ##
  ## m
  ##   Specifies a pointer to 16 consecutive values, which are used as the
  ##   elements of a 4x4  column-major matrix.


proc glLogicOp*(opcode: GLenum) {.importc.}
  ## Specify a logical pixel operation.
  ##
  ## opcode
  ##   Specifies a symbolic constant that selects a logical operation. The
  ##   following symbols are accepted: `glClear`, `glSet`, `glCopy`,
  ##   `glCopyInverted`, `glNoop`, `glInvert`, `glAnd`, `glNand`, `glOr`,
  ##   `glNor`, `glXor`, `glEquiv`, `glAndReverse`, `glAndInverted`,
  ##   `glOrReverse`, and `glOrInverted`. The initial value is `glCopy`.


proc glMaterialx*(face: GLenum; pname: GLenum; param: GLfixed) {.importc.}
  ## Specify material parameters for the lighting model.
  ##
  ## face
  ##   Specifies which face or faces are being updated. Must be `glFrontAndBack`.
  ## pname
  ##   Specifies the single-valued material parameter of the face or faces that
  ##   is being updated. Must be glShininess.
  ## param
  ##   Specifies the value that parameter `glShininess` will be set to.


proc glMaterialxv*(face: GLenum; pname: GLenum; params: ptr GLfixed) {.importc.}
  ## Specify material parameters for the lighting model.
  ##
  ## face
  ##   Specifies which face or faces are being updated. Must be `glFrontAndBack`.
  ## pname
  ##   Specifies the material parameter of the face or faces that is being
  ##   updated. Must be one of `glAmbient`, `glDiffuse`, `glspecular`,
  ##   `glEmissions`, `glShininess`, or `glAmbientAndDiffuse`.
  ## params
  ##   Specifies a pointer to the value or values that pname will be set to.


proc glMatrixMode*(mode: GLenum) {.importc.}
  ## Specify which matrix is the current matrix.
  ##
  ## mode
  ##   Specifies which matrix stack is the target for subsequent matrix
  ##   operations. These values are accepted: `glModelView`, `glProjection`,
  ##   and `glTexture`. The initial value is `glModelView`.


proc glMultMatrixx*(m: ptr GLfixed) {.importc.}
  ## Multiply the current matrix with the specified matrix.
  ##
  ## m
  ##   Points to 16 consecutive values that are used as the elements of a 4x4
  ##   column-major matrix.


proc glMultiTexCoord4x*(target: GLenum; s: GLfixed; t: GLfixed; r: GLfixed;
  q: GLfixed) {.importc.}
  ## Set the current texture coordinates.
  ##
  ## target
  ##   Specifies the texture unit whose coordinates should be modified. The
  ##   number of texture units is implementation dependent, but must be at least
  ##   two. Symbolic constant must be one of `glTexture`i, where `i` ranges from
  ##   `0` to `glMaxTextureUnits - 1`, which is an implementation-dependent
  ##   value.
  ## s, t, r, q
  ##   Specify `s`, `t`, `r`, and `q` texture coordinates for target texture
  ##   unit.


proc glNormal3x*(nx: GLfixed; ny: GLfixed; nz: GLfixed) {.importc.}
  ## Set the current normal vector.
  ##
  ## nx, ny, nz
  ##   Specify the x, y, and z coordinates of the new current normal. The
  ##   initial value is `(0, 0, 1)`.


proc glNormalPointer*(`type`: GLenum; stride: GLsizei; pointer: ptr GLvoid)
  {.importc.}
  ## Define an array of normals.
  ##
  ## type
  ##   Specifies the data type of each coordinate in the array. Symbolic
  ##   constants `glByte`, `glShort`, and `glFixed` are accepted. However, the
  ##   initial value is `glFloat`. The common profile accepts the symbolic
  ##   constant glFloat as well.
  ## stride
  ##   Specifies the byte offset between consecutive normals. If stride is `0`,
  ##   the normals are understood to be tightly packed in the array. The
  ##   initial value is `0`.
  ## pointer
  ##   Specifies a pointer to the first coordinate of the first normal in the
  ##   array. The initial value is `0`.


proc glOrthox*(left: GLfixed; right: GLfixed; bottom: GLfixed; top: GLfixed;
  zNear: GLfixed; zFar: GLfixed) {.importc.}
  ## Multiply the current matrix with an orthographic matrix.
  ##
  ## left, right
  ##   Specify the coordinates for the left and right vertical clipping planes.
  ## bottom, top
  ##   Specify the coordinates for the bottom and top horizontal clipping planes.
  ## near, far
  ##   Specify the distances to the nearer and farther depth clipping planes.
  ##   These values are negative if the plane is to be behind the viewer.


proc glPixelStorei*(pname: GLenum; param: GLint) {.importc.}
  ## Set pixel storage modes.
  ##
  ## pname
  ##   Specifies the symbolic name of the parameter to be set. `glPackAlignment`
  ##   affects the packing of pixel data into memory. `glUnpackAlignment`
  ##   affects the unpacking of pixel data from memory.
  ## param
  ##   Specifies the value that `pname` is set to.


proc glPointParameterx*(pname: GLenum; param: GLfixed) {.importc.}
  ## Specify parameters for point rasterization.
  ##
  ## pname
  ##   Specifies the single-valued parameter to be updated. Can be either
  ##   `glPointSizeMin`, `glPointSizeMax`, or `glPointFadeThresholdSize`.
  ## param
  ##   Specifies the value that the parameter will be set to.


proc glPointParameterxv*(pname: GLenum; params: ptr GLfixed) {.importc.}
  ## Specify parameters for point rasterization.
  ##
  ## pname
  ##   Specifies the parameter to be updated. Can be either `glPointSizeMin`,
  ##   `glPointSizeMax`, `glPointFadeThresholdSize`, or
  ##   `glPointDistanceAttenuation`.
  ## params
  ##   Specifies a pointer to the value or values that pname will be set to.


proc glPointSizex*(size: GLfixed) {.importc.}
  ## Specify the diameter of rasterized points.
  ##
  ## size
  ##   Specifies the diameter of rasterized points. The initial value is `1`.


proc glPolygonOffsetx*(factor: GLfixed; units: GLfixed) {.importc.}
  ## Set the scale and units used to calculate depth values.
  ##
  ## factor
  ##   Specifies a scale factor that is used to create a variable depth offset
  ##   for each polygon. The initial value is `0`.
  ## units
  ##   Is multiplied by an implementation-specific value to create a constant
  ##   depth offset. The initial value is `0`.


proc glPopMatrix*() {.importc.}
  ## Pop the current matrix stack.


proc glPushMatrix*() {.importc.}
  ## Push the current matrix stack.


proc glReadPixels*(x: GLint; y: GLint; width: GLsizei; height: GLsizei;
  format: GLenum; `type`: GLenum; pixels: ptr GLvoid) {.importc.}
  ## Read a block of pixels from the color buffer.
  ##
  ## x, y
  ##   Specify the window coordinates of the first pixel that is read from the
  ##   color buffer. This location is the lower left corner of a rectangular
  ##   block of pixels.
  ## width, height
  ##   Specify the dimensions of the pixel rectangle. `width` and `height` of
  ##   one correspond to a single pixel.
  ## format
  ##   Specifies the format of the pixel data. Must be either `glRgbA <#glRgbA>`_
  ##   or the value of `glImplementationColorReadFormatOes`.
  ## type
  ##   Specifies the data type of the pixel data. Must be either
  ##   `glUnsignedByte` or the value of `glImplementationColorReadTypeOes`.
  ## pixels
  ##   Returns the pixel data.


proc glRotatex*(angle: GLfixed; x: GLfixed; y: GLfixed; z: GLfixed) {.importc.}
  ## Multiply the current matrix by a rotation matrix.
  ##
  ## angle
  ##   Specifies the angle of rotation, in degrees.
  ## x, y, z
  ##   Specify the x, y, and z coordinates of a vector, respectively.


proc glSampleCoverage*(value: GLclampf; invert: GLboolean) {.importc.}
  ## Specify mask to modify multisampled pixel fragments.
  ##
  ## value
  ##   Specifies the coverage of the modification mask. The value is clamped to
  ##   the range `[0, 1]`, where `0` represents no coverage and `1` full
  ##   coverage. The initial value is `1`.
  ## invert
  ##   Specifies whether the modification mask implied by value is inverted or
  ##   not. The initial value is `glFalse`.


proc glSampleCoveragex*(value: GLclampx; invert: GLboolean) {.importc.}
  ## Specify mask to modify multisampled pixel fragments.
  ##
  ## value
  ##   Specifies the coverage of the modification mask. The value is clamped to
  ##   the range `[0, 1]`, where `0` represents no coverage and `1` full
  ##   coverage. The initial value is `1`.
  ## invert
  ##   Specifies whether the modification mask implied by value is inverted or
  ##   not. The initial value is `glFalse`.


proc glScalex*(x: GLfixed; y: GLfixed; z: GLfixed) {.importc.}
  ## Multiply the current matrix by a general scaling matrix.
  ##
  ## x, y, z
  ##   Specify scale factors along the x, y, and z axes, respectively.


proc glScissor*(x: GLint; y: GLint; width: GLsizei; height: GLsizei) {.importc.}
  ## Define the scissor box.
  ##
  ## x, y
  ##   Specify the lower left corner of the scissor box, in pixels. The initial
  ##   value is `(0, 0)`.
  ## width, height
  ##   Specify the width and height of the scissor box. When a GL context is
  ##   first attached to a surface (e.g. window), `width` and `height` are set
  ##   to the dimensions of that surface.


proc glShadeModel*(mode: GLenum) {.importc.}
  ## Select flat or smooth shading.
  ##
  ## mode
  ##   Specifies a symbolic value representing a shading technique. Accepted
  ##   values are `glFlat` and `glSmooth`. The initial value is `glSmooth`.


proc glStencilFunc*(`func`: GLenum; `ref`: GLint; mask: GLuint) {.importc.}
  ## Set function and reference value for stencil testing.
  ##
  ## func
  ##   Specifies the test function. Eight tokens are valid: `glNever`_,
  ##   `glLess`, `glLequal`, `glGreater`, `glGequal`, `glEqual`, `glNotEqual`,
  ##   and `glAlways`. The initial value is `glAlways`.
  ## ref
  ##   Specifies the reference value for the stencil test. `ref` is clamped to
  ##   the range `[0 , 2n-1]`, where `n` is the number of bitplanes in the
  ##   stencil buffer. The initial value is `0`.
  ## mask
  ##   Specifies a mask that is ANDed with both the reference value and the
  ##   stored stencil value when the test is done. The initial value is all 1's.


proc glStencilMask*(mask: GLuint) {.importc.}
  ## Control the writing of individual bits in the stencil planes.
  ##
  ## mask
  ##   Specifies a bit mask to enable and disable writing of individual bits in
  ##   the stencil planes. The initial value is all 1's.


proc glStencilOp*(fail: GLenum; zfail: GLenum; zpass: GLenum) {.importc.}
  ## Set stencil test actions.
  ##
  ## fail
  ##   Specifies the action to take when the stencil test fails. Six symbolic
  ##   constants are accepted: `glKeep`, `glZero`, `glReplace`, `glIncr`,
  ##   `glDecr`, and `glInvert`. The initial value is `glKeep`.
  ## zfail
  ##   Specifies the stencil action when the stencil test passes, but the depth
  ##   test fails. `zfail` accepts the same symbolic constants as `fail.` The
  ##   initial value is `glKeep`.
  ## zpass
  ##   Specifies the stencil action when both the stencil test and the depth
  ##   test pass, or when the stencil test passes and either there is no depth
  ##   buffer or depth testing is not enabled. `zpass` accepts the same symbolic
  ##   constants as `fail`. The initial value is `glKeep`.


proc glTexCoordPointer*(size: GLint; `type`: GLenum; stride: GLsizei;
  pointer: ptr GLvoid) {.importc.}
  ## Define an array of texture coordinates.
  ##
  ## size
  ##   Specifies the number of coordinates per array element. Must be `2`, `3`
  ##   or `4`. The initial value is `4`.
  ## type
  ##   Specifies the data type of each texture coordinate. Symbolic constants
  ##   `glByte`, `glShort`, and `glFixed` are accepted. However, the initial
  ##   value is `glFloat`. The common profile accepts the symbolic constant
  ##   `glFloat` as well.
  ## stride
  ##   Specifies the byte offset between consecutive array elements. If `stride`
  ##   is `0`, the array elements are understood to be tightly packed. The
  ##   initial value is `0`.
  ## pointer
  ##   Specifies a pointer to the first coordinate of the first element in the
  ##   array. The initial value is `0`.


proc glTexEnvi*(target: GLenum; pname: GLenum; param: GLint) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `glTextureEnv` or
  ##   `glPointSpriteOes`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `glTextureEnvMode`, `glCombineRgb`,
  ##   `glCombineAlpha`, `glSrc0Rgb`, `glSrc1Rgb`, `glSrc2Rgb`, `glSrc0Alpha`,
  ##   `glSrc1Alpha`, `glSrc2Alpha`, `glOperand0Rgb`, `glOperand1Rgb`,
  ##   `glOperand2Rgb`, `glOperand0Alpha`, `glOperand1Alpha`, `glOperand2Alpha`,
  ##   `glRgbScale`, `glAlphaScale`, or `glCoordReplaceOes`.
  ## param
  ##   Specifies a single symbolic constant, one of `glAdd`, `glAddSigned`,
  ##   `glDot3Rgb`, `glDot3Rgba`, `glInterpolate`, `glModulate`, `glDecal`,
  ##   `glBlend`, `glReplace`, `glSubtract`, `glCombine`, `glTexture`,
  ##   `glConstant`, `glPrimaryColor`, `glPrevious`, `glSrcColor`,
  ##   `glOneMinusSrcColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, a single
  ##   boolean value for the point sprite texture coordinate replacement, or
  ##   `1.0`, `2.0`, or `4.0` when specifying the `glRgbScale` or `glAlphaScale`.


proc glTexEnvx*(target: GLenum; pname: GLenum; param: GLfixed) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `glTextureEnv` or
  ##   `glPointSpriteOes`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `glTextureEnvMode`, `glCombineRgb`,
  ##   `glCombineAlpha`, `glSrc0Rgb`, `glSrc1Rgb`, `glSrc2Rgb`, `glSrc0Alpha`,
  ##   `glSrc1Alpha`, `glSrc2Alpha`, `glOperand0Rgb`, `glOperand1Rgb`,
  ##   `glOperand2Rgb`, `glOperand0Alpha`, `glOperand1Alpha`, `glOperand2Alpha`,
  ##   `glRgbScale`, `glAlphaScale`, or `glCoordReplaceOes`.
  ## param
  ##   Specifies a single symbolic constant, one of `glAdd`,
  ##   `glAddSigned`, `glDot3Rgb`, `glDot3Rgba`, `glInterpolate`, `glModulate`,
  ##   `glDecal`, `glBlend`, `glReplace`, `glSubtract`, `glCombine`,
  ##   `glTexture`, `glConstant`, `glPrimaryColor`, `glPrevious`, `glSrcColor`,
  ##   `glOneMinusSrcColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, a single
  ##   boolean value for the point sprite texture coordinate replacement, or
  ##  `1.0`, `2.0`, or `4.0` when specifying the `glRgbScale` or `glAlphaScale`.


proc glTexEnviv*(target: GLenum; pname: GLenum; params: ptr GLint) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `glTextureEnv` or
  ##   `glPointSpriteOes`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `glTextureEnvMode`, `glTextureEnvColor`,
  ##   `glCombineRgb`, `glCombineAlpha`, `glSrc0Rgb`, `glSrc1Rgb`, `glSrc2Rgb`,
  ##   `glSrc0Alpha`, `glSrc1Alpha`, `glSrc2Alpha`, `glOperand0Rgb`,
  ##   `glOperand1Rgb`, `glOperand2Rgb`, `glOperand0Alpha`, `glOperand1Alpha`,
  ##   `glOperand2Alpha`, `glRgbScale`, `glAlphaScale`, or `glCoordReplaceOes`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `glAdd`, `glAddSigned`,
  ##   `glDot3Rgb`, `glDot3Rgba`, `glInterpolate`, `glModulate`, `glDecal`,
  ##   `glBlend`, `glReplace`, `glSubtract`, `glCombine`, `glTexture`,
  ##   `glConstant`, `glPrimaryColor`, `glPrevious`, `glSrcColor`,
  ##   `glOneMinusSrcColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, a single
  ##   boolean value for the point sprite texture coordinate replacement, or
  ##   `1.0`, `2.0`, or `4.0` when specifying the  `glRgbScale` or `glAlphaScale`.


proc glTexEnvxv*(target: GLenum; pname: GLenum; params: ptr GLfixed) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `glTextureEnv` or
  ##   `glPointSpriteOes`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `glTextureEnvMode`, `glTextureEnvColor`,
  ##   `glCombineRgb`, `glCombineAlpha`, `glSrc0Rgb`, `glSrc1Rgb`, `glSrc2Rgb`,
  ##   `glSrc0Alpha`, `glSrc1Alpha`, `glSrc2Alpha`, `glOperand0Rgb`,
  ##   `glOperand1Rgb`, `glOperand2Rgb`, `glOperand0Alpha`, `glOperand1Alpha`,
  ##   `glOperand2Alpha`, `glRgbScale`, `glAlphaScale`, or `glCoordReplaceOes`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `glAdd`, `glAddSigned`,
  ##   `glDot3Rgb`, `glDot3Rgba`, `glInterpolate`, `glModulate`, `glDecal`,
  ##   `glBlend`, `glReplace`, `glSubtract`, `glCombine`, `glTexture`,
  ##   `glConstant`, `glPrimaryColor`, `glPrevious`, `glSrcColor`,
  ##   `glOneMinusSrcColor`, `glSrcAlpha`, `glOneMinusSrcAlpha`, a single
  ##   boolean value for the point sprite texture coordinate replacement, or
  ##   `1.0`, `2.0`, or `4.0` when specifying the `glRgbScale` or
  ##   `glAlphaScale`.


proc glTexImage2D*(target: GLenum; level: GLint; internalformat: GLint;
  width: GLsizei; height: GLsizei; border: GLint; format: GLenum;
  `type`: GLenum; pixels: ptr GLvoid) {.importc.}
  ## Specify a two-dimensional texture image.
  ##
  ## target
  ##   Specifies the target texture. Must be `glTexture2D`.
  ## level
  ##   Specifies the level-of-detail number. Level `0` is the base image level.
  ##   Level `n` is the `n`th mipmap reduction image. Must be greater or equal
  ##   `0`.
  ## internalformat
  ##   Specifies the color components in the texture. Must be same as format.
  ##   The following symbolic values are accepted: `glAlpha`, `glRgb`, `glRgbA`,
  ##   `glLuminance`, or `glLuminanceAlpha`.
  ## width
  ##   Specifies the width of the texture image. Must be `2n` for some integer
  ##   `n`. All implementations support texture images that are at least `64`
  ##   texels wide.
  ## height
  ##   Specifies the height of the texture image. Must be `2m` for some integer
  ##   `m`. All implementations support texture images that are at least `64`
  ##   texels high.
  ## border
  ##   Specifies the width of the border. Must be `0`.
  ## format
  ##   Specifies the format of the pixel data. Must be same as `internalformat`.
  ##   The following symbolic values are accepted: `glAlpha`, `glRgb`, `glRgbA`,
  ##   `glLuminance`, and `glLuminanceAlpha`.
  ## type
  ##   Specifies the data type of the pixel data. The following symbolic values
  ##   are accepted: `glUnsignedByte`, `glUnsignedShort565`,
  ##   `glUnsignedShort4444`, and `glUnsignedShort5551`.
  ## pixels
  ##   Specifies a pointer to the image data in memory.


proc glTexParameteri*(target: GLenum; pname: GLenum; param: GLint) {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `glTexture2D`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture parameter. Which
  ##   can be one of the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, `glTextureWrapT`, or `glGenerateMipmap`.
  ## param
  ##   Specifies the value of pname.


proc glTexParameterx*(target: GLenum; pname: GLenum; param: GLfixed) {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `glTexture2D`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture parameter. Which
  ##   can be one of the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, `glTextureWrapT`, or `glGenerateMipmap`.
  ## param
  ##   Specifies the value of pname.


proc glTexParameteriv*(target: GLenum; pname: GLenum; params: ptr GLint)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `glTexture2D`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, `glTextureWrapT`, or `glGenerateMipmap`.
  ## params
  ##   Specifies a pointer to an array where the value or values of pname are
  ##   stored.


proc glTexParameterxv*(target: GLenum; pname: GLenum; params: ptr GLfixed)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `glTexture2D`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureWrapS`, `glTextureWrapT`, or `glGenerateMipmap`.
  ## params
  ##   Specifies a pointer to an array where the value or values of pname are
  ##   stored.


proc glTexSubImage2D*(target: GLenum; level: GLint; xoffset: GLint;
  yoffset: GLint; width: GLsizei; height: GLsizei; format: GLenum;
  `type`: GLenum; pixels: ptr GLvoid) {.importc.}
  ## Specify a two-dimensional texture subimage.
  ##
  ## target
  ##   Specifies the target texture. Must be `glTexture2D`.
  ## level
  ##   Specifies the level-of-detail number. Level `0` is the base image level.
  ##   Level `n` is the `n`th mipmap reduction image.
  ## xoffset
  ##   Specifies a texel offset in the x direction within the texture array.
  ## yoffset
  ##   Specifies a texel offset in the y direction within the texture array.
  ## width
  ##   Specifies the width of the texture subimage.
  ## height
  ##   Specifies the height of the texture subimage.
  ## format
  ##   Specifies the of the pixel data. The following symbolic values are
  ##   accepted: `glAlpha`, `glRgb`, `glRgbA`, `glLuminance`, and
  ##   `glLuminanceAlpha`.
  ## type
  ##   Specifies the data type of the pixel data. The following symbolic values
  ##   are accepted: `glUnsignedByte`, `glUnsignedShort565`,
  ##   `glUnsignedShort4444`, and `glUnsignedShort5551`.
  ## pixels
  ##   Specifies a pointer to the image data in memory.


proc glTranslatex*(x: GLfixed; y: GLfixed; z: GLfixed) {.importc.}
  ## Multiply the current matrix by a translation matrix.
  ##
  ## x, y, z
  ##   Specify the x, y, and z coordinates of a translation vector.


proc glVertexPointer*(size: GLint; `type`: GLenum; stride: GLsizei;
  pointer: ptr GLvoid) {.importc.}
  ## Define an array of vertex coordinates.
  ##
  ## size
  ##   Specifies the number of coordinates per vertex. Must be `2`, `3`, or `4`.
  ##   The initial value is `4`.
  ## type
  ##   Specifies the data type of each vertex coordinate in the array. Symbolic
  ##   constants `glByte`, `glShort`, and `glFixed`, are accepted. However, the
  ##   initial value is `glFloat`. The common profile accepts the symbolic
  ##   constant `glFloat` as well.
  ## stride
  ##   Specifies the byte offset between consecutive vertices. If stride is `0`,
  ##   the vertices are understood to be tightly packed in the array. The
  ##   initial value is `0`.
  ## pointer
  ##   Specifies a pointer to the first coordinate of the first vertex in the
  ##   array. The initial value is `0`.


proc glViewport*(x: GLint; y: GLint; width: GLsizei; height: GLsizei)
  {.importc.}
  ## Set the viewport.
  ##
  ## x, y
  ##   Specify the lower left corner of the viewport rectangle, in pixels. The
  ##   initial value is `(0, 0)`.
  ## width, height
  ##   Specify the width and height of the viewport. When a GL context is first
  ##   attached to a surface (e.g. window), `width` and `height` are set to the
  ##   dimensions of that surface.


# Required OES extension functions

when not defined(GL_OES_point_size_array):
  proc glPointSizePointerOES*(`type`: GLenum; stride: GLsizei;
    pointer: ptr GLvoid) {.importc.}
    ## Define an array of point sizes.
    ##
    ## type
    ##   Specifies the data type of each point size in the array. Symbolic
    ##   constant `glFixed` is accepted. However, the common profile also
    ##   accepts the symbolic constant `glFloat`. The initial value is `glFixed`
    ##   for the common lite profile, or `glFloat` for the common profile.
    ## stride
    ##   Specifies the byte offset between consecutive point sizes. If `stride`
    ##   is `0`, the point sizes are understood to be tightly packed in the
    ##   array. The initial value is `0`.
    ## pointer
    ##   Specifies a pointer to the point size of the first vertex in the array.
    ##   The initial value is `0`.

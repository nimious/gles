## *io-gles* - Nim bindings for OpenGL ES, the embedded 3D graphics library.
##
## This file is part of the `Nim I/O <http://nimio.us>`_ package collection.
## See the file LICENSE included in this distribution for licensing details.
## GitHub pull requests are encouraged. (c) 2015 Headcrash Industries LLC.

{.deadCodeElim: on.}


type
  GlVoid* = pointer
  GlChar* = char
  GlEnum* = cuint
  GlBoolean* = cuchar
  GlBitfield* = cuint
  GlByte* = cschar
  GlShort* = cshort
  GlInt* = cint
  GlSizei* = cint
  GlUbyte* = cuchar
  GlUshort* = cushort
  GlUint* = cuint
  GlFloat* = cfloat
  GlClampf* = cfloat
  GlFixed* = cint
  GlClampx* = cint
  GlIntptr* = clong
  GlSizeiptr* = clong


const # OpenGL ES core versions
  GL_VERSION_ES_CM_1_0* = 1
  GL_VERSION_ES_CL_1_0* = 1
  GL_VERSION_ES_CM_1_1* = 1
  GL_VERSION_ES_CL_1_1* = 1


const # ClearBufferMask
  GL_DEPTH_BUFFER_BIT* = 0x00000100
  GL_STENCIL_BUFFER_BIT* = 0x00000400
  GL_COLOR_BUFFER_BIT* = 0x00004000


const # Boolean
  GL_FALSE* = 0
  GL_TRUE* = 1


const # BeginMode
  GL_POINTS* = 0x00000000
  GL_LINES* = 0x00000001
  GL_LINE_LOOP* = 0x00000002
  GL_LINE_STRIP* = 0x00000003
  GL_TRIANGLES* = 0x00000004
  GL_TRIANGLE_STRIP* = 0x00000005
  GL_TRIANGLE_FAN* = 0x00000006


const # AlphaFunction
  GL_NEVER* = 0x00000200
  GL_LESS* = 0x00000201
  GL_EQUAL* = 0x00000202
  GL_LEQUAL* = 0x00000203
  GL_GREATER* = 0x00000204
  GL_NOTEQUAL* = 0x00000205
  GL_GEQUAL* = 0x00000206
  GL_ALWAYS* = 0x00000207


const # BlendingFactorDest
  GL_ZERO* = 0
  GL_ONE* = 1
  GL_SRC_COLOR* = 0x00000300
  GL_ONE_MINUS_SRC_COLOR* = 0x00000301
  GL_SRC_ALPHA* = 0x00000302
  GL_ONE_MINUS_SRC_ALPHA* = 0x00000303
  GL_DST_ALPHA* = 0x00000304
  GL_ONE_MINUS_DST_ALPHA* = 0x00000305


const # BlendingFactorSrc
# GL_ZERO
# GL_ONE
  GL_DST_COLOR* = 0x00000306
  GL_ONE_MINUS_DST_COLOR* = 0x00000307
  GL_SRC_ALPHA_SATURATE* = 0x00000308
# GL_SRC_ALPHA
# GL_ONE_MINUS_SRC_ALPHA
# GL_DST_ALPHA
# GL_ONE_MINUS_DST_ALPHA


const # ClipPlaneName
  GL_CLIP_PLANE0* = 0x00003000
  GL_CLIP_PLANE1* = 0x00003001
  GL_CLIP_PLANE2* = 0x00003002
  GL_CLIP_PLANE3* = 0x00003003
  GL_CLIP_PLANE4* = 0x00003004
  GL_CLIP_PLANE5* = 0x00003005


# ColorMaterialFace
# GL_FRONT_AND_BACK


# ColorMaterialParameter
# GL_AMBIENT_AND_DIFFUSE


# ColorPointertype
# GL_UNSIGNED_BYTE
# GL_FLOAT
# GL_FIXED


const # CullFaceMode
  GL_FRONT* = 0x00000404
  GL_BACK* = 0x00000405
  GL_FRONT_AND_BACK* = 0x00000408


# DepthFunction
# GL_NEVER
# GL_LESS
# GL_EQUAL
# GL_LEQUAL
# GL_GREATER
# GL_NOTEQUAL
# GL_GEQUAL
# GL_ALWAYS


const # EnableCap
  GL_FOG* = 0x00000B60
  GL_LIGHTING* = 0x00000B50
  GL_TEXTURE_2D* = 0x00000DE1
  GL_CULL_FACE* = 0x00000B44
  GL_ALPHA_TEST* = 0x00000BC0
  GL_BLEND* = 0x00000BE2
  GL_COLOR_LOGIC_OP* = 0x00000BF2
  GL_DITHER* = 0x00000BD0
  GL_STENCIL_TEST* = 0x00000B90
  GL_DEPTH_TEST* = 0x00000B71
# GL_LIGHT0
# GL_LIGHT1
# GL_LIGHT2
# GL_LIGHT3
# GL_LIGHT4
# GL_LIGHT5
# GL_LIGHT6
# GL_LIGHT7
  GL_POINT_SMOOTH* = 0x00000B10
  GL_LINE_SMOOTH* = 0x00000B20
  GL_SCISSOR_TEST* = 0x00000C11
  GL_COLOR_MATERIAL* = 0x00000B57
  GL_NORMALIZE* = 0x00000BA1
  GL_RESCALE_NORMAL* = 0x0000803A
  GL_POLYGON_OFFSET_FILL* = 0x00008037
  GL_VERTEX_ARRAY* = 0x00008074
  GL_NORMAL_ARRAY* = 0x00008075
  GL_COLOR_ARRAY* = 0x00008076
  GL_TEXTURE_COORD_ARRAY* = 0x00008078
  GL_MULTISAMPLE* = 0x0000809D
  GL_SAMPLE_ALPHA_TO_COVERAGE* = 0x0000809E
  GL_SAMPLE_ALPHA_TO_ONE* = 0x0000809F
  GL_SAMPLE_COVERAGE* = 0x000080A0


const # ErrorCode
  GL_NO_ERROR* = 0
  GL_INVALID_ENUM* = 0x00000500
  GL_INVALID_VALUE* = 0x00000501
  GL_INVALID_OPERATION* = 0x00000502
  GL_STACK_OVERFLOW* = 0x00000503
  GL_STACK_UNDERFLOW* = 0x00000504
  GL_OUT_OF_MEMORY* = 0x00000505


const # FogMode
# GL_LINEAR
  GL_EXP* = 0x00000800
  GL_EXP2* = 0x00000801


const # FogParameter
  GL_FOG_DENSITY* = 0x00000B62
  GL_FOG_START* = 0x00000B63
  GL_FOG_END* = 0x00000B64
  GL_FOG_MODE* = 0x00000B65
  GL_FOG_COLOR* = 0x00000B66


const # FrontFaceDirection
  GL_CW* = 0x00000900
  GL_CCW* = 0x00000901


const # GetPName
  GL_CURRENT_COLOR* = 0x00000B00
  GL_CURRENT_NORMAL* = 0x00000B02
  GL_CURRENT_TEXTURE_COORDS* = 0x00000B03
  GL_POINT_SIZE* = 0x00000B11
  GL_POINT_SIZE_MIN* = 0x00008126
  GL_POINT_SIZE_MAX* = 0x00008127
  GL_POINT_FADE_THRESHOLD_SIZE* = 0x00008128
  GL_POINT_DISTANCE_ATTENUATION* = 0x00008129
  GL_SMOOTH_POINT_SIZE_RANGE* = 0x00000B12
  GL_LINE_WIDTH* = 0x00000B21
  GL_SMOOTH_LINE_WIDTH_RANGE* = 0x00000B22
  GL_ALIASED_POINT_SIZE_RANGE* = 0x0000846D
  GL_ALIASED_LINE_WIDTH_RANGE* = 0x0000846E
  GL_CULL_FACE_MODE* = 0x00000B45
  GL_FRONT_FACE* = 0x00000B46
  GL_SHADE_MODEL* = 0x00000B54
  GL_DEPTH_RANGE* = 0x00000B70
  GL_DEPTH_WRITEMASK* = 0x00000B72
  GL_DEPTH_CLEAR_VALUE* = 0x00000B73
  GL_DEPTH_FUNC* = 0x00000B74
  GL_STENCIL_CLEAR_VALUE* = 0x00000B91
  GL_STENCIL_FUNC* = 0x00000B92
  GL_STENCIL_VALUE_MASK* = 0x00000B93
  GL_STENCIL_FAIL* = 0x00000B94
  GL_STENCIL_PASS_DEPTH_FAIL* = 0x00000B95
  GL_STENCIL_PASS_DEPTH_PASS* = 0x00000B96
  GL_STENCIL_REF* = 0x00000B97
  GL_STENCIL_WRITEMASK* = 0x00000B98
  GL_MATRIX_MODE* = 0x00000BA0
  GL_VIEWPORT* = 0x00000BA2
  GL_MODELVIEW_STACK_DEPTH* = 0x00000BA3
  GL_PROJECTION_STACK_DEPTH* = 0x00000BA4
  GL_TEXTURE_STACK_DEPTH* = 0x00000BA5
  GL_MODELVIEW_MATRIX* = 0x00000BA6
  GL_PROJECTION_MATRIX* = 0x00000BA7
  GL_TEXTURE_MATRIX* = 0x00000BA8
  GL_ALPHA_TEST_FUNC* = 0x00000BC1
  GL_ALPHA_TEST_REF* = 0x00000BC2
  GL_BLEND_DST* = 0x00000BE0
  GL_BLEND_SRC* = 0x00000BE1
  GL_LOGIC_OP_MODE* = 0x00000BF0
  GL_SCISSOR_BOX* = 0x00000C10
  #GL_SCISSOR_TEST* = 0x00000C11
  GL_COLOR_CLEAR_VALUE* = 0x00000C22
  GL_COLOR_WRITEMASK* = 0x00000C23
  #GL_UNPACK_ALIGNMENT* = 0x00000CF5
  #GL_PACK_ALIGNMENT* = 0x00000D05
  GL_MAX_LIGHTS* = 0x00000D31
  GL_MAX_CLIP_PLANES* = 0x00000D32
  GL_MAX_TEXTURE_SIZE* = 0x00000D33
  GL_MAX_MODELVIEW_STACK_DEPTH* = 0x00000D36
  GL_MAX_PROJECTION_STACK_DEPTH* = 0x00000D38
  GL_MAX_TEXTURE_STACK_DEPTH* = 0x00000D39
  GL_MAX_VIEWPORT_DIMS* = 0x00000D3A
  GL_MAX_TEXTURE_UNITS* = 0x000084E2
  GL_SUBPIXEL_BITS* = 0x00000D50
  GL_RED_BITS* = 0x00000D52
  GL_GREEN_BITS* = 0x00000D53
  GL_BLUE_BITS* = 0x00000D54
  GL_ALPHA_BITS* = 0x00000D55
  GL_DEPTH_BITS* = 0x00000D56
  GL_STENCIL_BITS* = 0x00000D57
  GL_POLYGON_OFFSET_UNITS* = 0x00002A00
  #GL_POLYGON_OFFSET_FILL* = 0x00008037
  GL_POLYGON_OFFSET_FACTOR* = 0x00008038
  GL_TEXTURE_BINDING_2D* = 0x00008069
  GL_VERTEX_ARRAY_SIZE* = 0x0000807A
  GL_VERTEX_ARRAY_TYPE* = 0x0000807B
  GL_VERTEX_ARRAY_STRIDE* = 0x0000807C
  GL_NORMAL_ARRAY_TYPE* = 0x0000807E
  GL_NORMAL_ARRAY_STRIDE* = 0x0000807F
  GL_COLOR_ARRAY_SIZE* = 0x00008081
  GL_COLOR_ARRAY_TYPE* = 0x00008082
  GL_COLOR_ARRAY_STRIDE* = 0x00008083
  GL_TEXTURE_COORD_ARRAY_SIZE* = 0x00008088
  GL_TEXTURE_COORD_ARRAY_TYPE* = 0x00008089
  GL_TEXTURE_COORD_ARRAY_STRIDE* = 0x0000808A
  GL_VERTEX_ARRAY_POINTER* = 0x0000808E
  GL_NORMAL_ARRAY_POINTER* = 0x0000808F
  GL_COLOR_ARRAY_POINTER* = 0x00008090
  GL_TEXTURE_COORD_ARRAY_POINTER* = 0x00008092
  GL_SAMPLE_BUFFERS* = 0x000080A8
  GL_SAMPLES* = 0x000080A9
  GL_SAMPLE_COVERAGE_VALUE* = 0x000080AA
  GL_SAMPLE_COVERAGE_INVERT* = 0x000080AB


# GetTextureParameter
# GL_TEXTURE_MAG_FILTER
# GL_TEXTURE_MIN_FILTER
# GL_TEXTURE_WRAP_S
# GL_TEXTURE_WRAP_T


const
  GL_NUM_COMPRESSED_TEXTURE_FORMATS* = 0x000086A2
  GL_COMPRESSED_TEXTURE_FORMATS* = 0x000086A3


const # HintMode
  GL_DONT_CARE* = 0x00001100
  GL_FASTEST* = 0x00001101
  GL_NICEST* = 0x00001102


const # HintTarget
  GL_PERSPECTIVE_CORRECTION_HINT* = 0x00000C50
  GL_POINT_SMOOTH_HINT* = 0x00000C51
  GL_LINE_SMOOTH_HINT* = 0x00000C52
  GL_FOG_HINT* = 0x00000C54
  GL_GENERATE_MIPMAP_HINT* = 0x00008192


const # LightModelParameter
  GL_LIGHT_MODEL_AMBIENT* = 0x00000B53
  GL_LIGHT_MODEL_TWO_SIDE* = 0x00000B52


const # LightParameter
  GL_AMBIENT* = 0x00001200
  GL_DIFFUSE* = 0x00001201
  GL_SPECULAR* = 0x00001202
  GL_POSITION* = 0x00001203
  GL_SPOT_DIRECTION* = 0x00001204
  GL_SPOT_EXPONENT* = 0x00001205
  GL_SPOT_CUTOFF* = 0x00001206
  GL_CONSTANT_ATTENUATION* = 0x00001207
  GL_LINEAR_ATTENUATION* = 0x00001208
  GL_QUADRATIC_ATTENUATION* = 0x00001209


const # Datatype
  #GL_BYTE* = 0x00001400
  GL_UNSIGNED_BYTE* = 0x00001401
  #GL_SHORT* = 0x00001402
  GL_UNSIGNED_SHORT* = 0x00001403
  #GL_FLOAT* = 0x00001406
  #GL_FIXED* = 0x0000140C


const # LogicOp
  GL_CLEAR* = 0x00001500
  GL_AND* = 0x00001501
  GL_AND_REVERSE* = 0x00001502
  GL_COPY* = 0x00001503
  GL_AND_INVERTED* = 0x00001504
  GL_NOOP* = 0x00001505
  GL_XOR* = 0x00001506
  GL_OR* = 0x00001507
  GL_NOR* = 0x00001508
  GL_EQUIV* = 0x00001509
  GL_INVERT* = 0x0000150A
  GL_OR_REVERSE* = 0x0000150B
  GL_COPY_INVERTED* = 0x0000150C
  GL_OR_INVERTED* = 0x0000150D
  GL_NAND* = 0x0000150E
  GL_SET* = 0x0000150F


# MaterialFace
# GL_FRONT_AND_BACK


const # MaterialParameter
  GL_EMISSION* = 0x00001600
  GL_SHININESS* = 0x00001601
  GL_AMBIENT_AND_DIFFUSE* = 0x00001602
# GL_AMBIENT
# GL_DIFFUSE
# GL_SPECULAR


const # MatrixMode
  GL_MODELVIEW* = 0x00001700
  GL_PROJECTION* = 0x00001701
  GL_TEXTURE* = 0x00001702


# NormalPointertype
# GL_BYTE
# GL_SHORT
# GL_FLOAT
# GL_FIXED


const # PixelFormat
  GL_ALPHA* = 0x00001906
  GL_RGB* = 0x00001907
  GL_RGBA* = 0x00001908
  GL_LUMINANCE* = 0x00001909
  GL_LUMINANCE_ALPHA* = 0x0000190A


const # PixelStoreParameter
  GL_UNPACK_ALIGNMENT* = 0x00000CF5
  GL_PACK_ALIGNMENT* = 0x00000D05


const # Pixeltype
# GL_UNSIGNED_BYTE
  GL_UNSIGNED_SHORT_4_4_4_4* = 0x00008033
  GL_UNSIGNED_SHORT_5_5_5_1* = 0x00008034
  GL_UNSIGNED_SHORT_5_6_5* = 0x00008363


const # ShadingModel
  GL_FLAT* = 0x00001D00
  GL_SMOOTH* = 0x00001D01


# StencilFunction
# GL_NEVER
# GL_LESS
# GL_EQUAL
# GL_LEQUAL
# GL_GREATER
# GL_NOTEQUAL
# GL_GEQUAL
# GL_ALWAYS


const # StencilOp
# GL_ZERO
  GL_KEEP* = 0x00001E00
  GL_REPLACE* = 0x00001E01
  GL_INCR* = 0x00001E02
  GL_DECR* = 0x00001E03
# GL_INVERT


const # StringName
  GL_VENDOR* = 0x00001F00
  GL_RENDERER* = 0x00001F01
  GL_VERSION* = 0x00001F02
  GL_EXTENSIONS* = 0x00001F03


# TexCoordPointertype
# GL_SHORT
# GL_FLOAT
# GL_FIXED
# GL_BYTE


const # TextureEnvMode
  GL_MODULATE* = 0x00002100
  GL_DECAL* = 0x00002101
# GL_BLEND
  GL_ADD* = 0x00000104
# GL_REPLACE


const # TextureEnvParameter
  GL_TEXTURE_ENV_MODE* = 0x00002200
  GL_TEXTURE_ENV_COLOR* = 0x00002201


const # TextureEnvTarget
  GL_TEXTURE_ENV* = 0x00002300


const # TextureMagFilter
  GL_NEAREST* = 0x00002600
  GL_LINEAR* = 0x00002601


const # TextureMinFilter
# GL_NEAREST
# GL_LINEAR
  GL_NEAREST_MIPMAP_NEAREST* = 0x00002700
  GL_LINEAR_MIPMAP_NEAREST* = 0x00002701
  GL_NEAREST_MIPMAP_LINEAR* = 0x00002702
  GL_LINEAR_MIPMAP_LINEAR* = 0x00002703


const # TextureParameterName
  GL_TEXTURE_MAG_FILTER* = 0x00002800
  GL_TEXTURE_MIN_FILTER* = 0x00002801
  GL_TEXTURE_WRAP_S* = 0x00002802
  GL_TEXTURE_WRAP_T* = 0x00002803
  GL_GENERATE_MIPMAP* = 0x00008191


# TextureTarget
# GL_TEXTURE_2D


const # TextureUnit
  GL_TEXTURE0* = 0x000084C0
  GL_TEXTURE1* = 0x000084C1
  GL_TEXTURE2* = 0x000084C2
  GL_TEXTURE3* = 0x000084C3
  GL_TEXTURE4* = 0x000084C4
  GL_TEXTURE5* = 0x000084C5
  GL_TEXTURE6* = 0x000084C6
  GL_TEXTURE7* = 0x000084C7
  GL_TEXTURE8* = 0x000084C8
  GL_TEXTURE9* = 0x000084C9
  GL_TEXTURE10* = 0x000084CA
  GL_TEXTURE11* = 0x000084CB
  GL_TEXTURE12* = 0x000084CC
  GL_TEXTURE13* = 0x000084CD
  GL_TEXTURE14* = 0x000084CE
  GL_TEXTURE15* = 0x000084CF
  GL_TEXTURE16* = 0x000084D0
  GL_TEXTURE17* = 0x000084D1
  GL_TEXTURE18* = 0x000084D2
  GL_TEXTURE19* = 0x000084D3
  GL_TEXTURE20* = 0x000084D4
  GL_TEXTURE21* = 0x000084D5
  GL_TEXTURE22* = 0x000084D6
  GL_TEXTURE23* = 0x000084D7
  GL_TEXTURE24* = 0x000084D8
  GL_TEXTURE25* = 0x000084D9
  GL_TEXTURE26* = 0x000084DA
  GL_TEXTURE27* = 0x000084DB
  GL_TEXTURE28* = 0x000084DC
  GL_TEXTURE29* = 0x000084DD
  GL_TEXTURE30* = 0x000084DE
  GL_TEXTURE31* = 0x000084DF
  GL_ACTIVE_TEXTURE* = 0x000084E0
  GL_CLIENT_ACTIVE_TEXTURE* = 0x000084E1


const # TextureWrapMode
  GL_REPEAT* = 0x00002901
  GL_CLAMP_TO_EDGE* = 0x0000812F


# VertexPointertype
# GL_SHORT
# GL_FLOAT
# GL_FIXED
# GL_BYTE


const # LightName
  GL_LIGHT0* = 0x00004000
  GL_LIGHT1* = 0x00004001
  GL_LIGHT2* = 0x00004002
  GL_LIGHT3* = 0x00004003
  GL_LIGHT4* = 0x00004004
  GL_LIGHT5* = 0x00004005
  GL_LIGHT6* = 0x00004006
  GL_LIGHT7* = 0x00004007


const # Buffer Objects
  GL_ARRAY_BUFFER* = 0x00008892
  GL_ELEMENT_ARRAY_BUFFER* = 0x00008893
  GL_ARRAY_BUFFER_BINDING* = 0x00008894
  GL_ELEMENT_ARRAY_BUFFER_BINDING* = 0x00008895
  GL_VERTEX_ARRAY_BUFFER_BINDING* = 0x00008896
  GL_NORMAL_ARRAY_BUFFER_BINDING* = 0x00008897
  GL_COLOR_ARRAY_BUFFER_BINDING* = 0x00008898
  GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING* = 0x0000889A
  GL_STATIC_DRAW* = 0x000088E4
  GL_DYNAMIC_DRAW* = 0x000088E8
  GL_BUFFER_SIZE* = 0x00008764
  GL_BUFFER_USAGE* = 0x00008765


const # Texture combine + dot3
  GL_SUBTRACT* = 0x000084E7
  GL_COMBINE* = 0x00008570
  GL_COMBINE_RGB* = 0x00008571
  GL_COMBINE_ALPHA* = 0x00008572
  GL_RGB_SCALE* = 0x00008573
  GL_ADD_SIGNED* = 0x00008574
  GL_INTERPOLATE* = 0x00008575
  GL_CONSTANT* = 0x00008576
  GL_PRIMARY_COLOR* = 0x00008577
  GL_PREVIOUS* = 0x00008578
  GL_OPERAND0_RGB* = 0x00008590
  GL_OPERAND1_RGB* = 0x00008591
  GL_OPERAND2_RGB* = 0x00008592
  GL_OPERAND0_ALPHA* = 0x00008598
  GL_OPERAND1_ALPHA* = 0x00008599
  GL_OPERAND2_ALPHA* = 0x0000859A
  GL_ALPHA_SCALE* = 0x00000D1C
  GL_SRC0_RGB* = 0x00008580
  GL_SRC1_RGB* = 0x00008581
  GL_SRC2_RGB* = 0x00008582
  GL_SRC0_ALPHA* = 0x00008588
  GL_SRC1_ALPHA* = 0x00008589
  GL_SRC2_ALPHA* = 0x0000858A
  GL_DOT3_RGB* = 0x000086AE
  GL_DOT3_RGBA* = 0x000086AF


# required OES extension tokens

when not defined(GL_OES_read_format):
  const
    GL_IMPLEMENTATION_COLOR_READ_TYPE_OES* = 0x00008B9A
    GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES* = 0x00008B9B


when not defined(GL_OES_compressed_paletted_texture):
  const
    GL_PALETTE4_RGB8_OES* = 0x00008B90
    GL_PALETTE4_RGBA8_OES* = 0x00008B91
    GL_PALETTE4_R5_G6_B5_OES* = 0x00008B92
    GL_PALETTE4_RGBA4_OES* = 0x00008B93
    GL_PALETTE4_RGB5_A1_OES* = 0x00008B94
    GL_PALETTE8_RGB8_OES* = 0x00008B95
    GL_PALETTE8_RGBA8_OES* = 0x00008B96
    GL_PALETTE8_R5_G6_B5_OES* = 0x00008B97
    GL_PALETTE8_RGBA4_OES* = 0x00008B98
    GL_PALETTE8_RGB5_A1_OES* = 0x00008B99


when not defined(GL_OES_point_size_array):
  const
    GL_POINT_SIZE_ARRAY_OES* = 0x00008B9C
    GL_POINT_SIZE_ARRAY_TYPE_OES* = 0x0000898A
    GL_POINT_SIZE_ARRAY_STRIDE_OES* = 0x0000898B
    GL_POINT_SIZE_ARRAY_POINTER_OES* = 0x0000898C
    GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES* = 0x00008B9F


when not defined(GL_OES_point_sprite):
  const
    GL_POINT_SPRITE_OES* = 0x00008861
    GL_COORD_REPLACE_OES* = 0x00008862


# Available only in Common profile

proc glAlphaFunc*(alphaFunc: GlEnum; reference: GlClampf) {.importc.}
  ## Specify the alpha test function.
  ##
  ## alphaFunc
  ##   Specifies the alpha comparison function. Symbolic constants
  ##   `GL_NEVER`, `GL_LESS`, `GL_EQUAL`, `GL_LEQUAL`, `GL_GREATER`,
  ##   `GL_NOTEQUAL`, `GL_GEQUAL`, and `GL_ALWAYS` are accepted. The initial
  ##   value is `GL_ALWAYS`.
  ## reference
  ##   Specifies the reference value that incoming alpha values are compared to.
  ##   This value is clamped to the range `[0, 1]`, where `0` represents the
  ##   lowest possible alpha value and `1` the highest possible value. The
  ##   initial reference value is `0`.


proc glClearColor*(red: GlClampf; green: GlClampf; blue: GlClampf;
  alpha: GlClampf) {.importc.}
  ## Specify clear values for the color buffer.
  ##
  ## red, green, blue, alpha
  ##   Specify the red, green, blue, and alpha values used when the color buffer
  ##   is cleared. The initial values are all `0`.


proc glClearDepthf*(depth: GlClampf) {.importc.}
  ## Specify the clear value for the depth buffer.
  ##
  ## depth
  ##   Specifies the depth value used when the depth buffer is cleared. The
  ##   initial value is `1`.


proc glClipPlanef*(plane: GlEnum; equation: ptr GlFloat) {.importc.}
  ## Specify a plane against which all geometry is clipped.
  ##
  ## plane
  ##   Specifies which clipping plane is being positioned. Symbolic names of the
  ##   form `GL_CLIP_PLANE`i, where `i` is an integer between `0` and
  ##   `GL_MAX_CLIP_PLANES - 1`, are accepted.
  ## equation
  ##   Specifies the address of an array of four fixed-point or floating-point
  ##   values. These are the coefficients of a plane equation in object
  ##   coordinates: p1, p2, p3, and p4, in that order.


proc glColor4f*(red: GlFloat; green: GlFloat; blue: GlFloat; alpha: GlFloat)
  {.importc.}
  ## Set the current color.
  ##
  ## red, green, blue, alpha
  ##   Specify new red, green, blue, and alpha values for the current color.


proc glDepthRangef*(zNear: GlClampf; zFar: GlClampf) {.importc.}
  ## Specify mapping of depth values from normalized device coordinates to
  ## window coordinates.
  ##
  ## near
  ##   Specifies the mapping of the near clipping plane to window coordinates.
  ##   The initial value is `0`.
  ## far
  ##   Specifies the mapping of the far clipping plane to window coordinates.
  ##   The initial value is `1`.


proc glFogf*(pname: GlEnum; param: GlFloat) {.importc.}
  ## Specify fog parameters.
  ##
  ## pname
  ##   Specifies a single-valued fog parameter. `GL_FOG_MODE`, `GL_FOG_DENSITY`,
  ##   `GL_FOG_START`, and `GL_FOG_END` are accepted.
  ## param
  ##   Specifies the value that pname will be set to.


proc glFogfv*(pname: GlEnum; params: ptr GlFloat) {.importc.}
  ## Specify fog parameters.
  ##
  ## pname
  ##   Specifies a single-valued fog parameter. `GL_FOG_MODE`, `GL_FOG_DENSITY`,
  ##   `GL_FOG_START`, and `GL_FOG_END` are accepted.
  ## params
  ##   Specifies the value or values to be assigned to pname. `GL_FOG_COLOR`
  ##   requires an array of four values. All other parameters accept an array
  ##   containing only a single value.


proc glFrustumf*(left: GlFloat; right: GlFloat; bottom: GlFloat; top: GlFloat;
  zNear: GlFloat; zFar: GlFloat) {.importc.}
  ## Multiply the current matrix by a perspective matrix.
  ##
  ## left, right
  ##   Specify the coordinates for the left and right vertical clipping planes.
  ## bottom, top
  ##   Specify the coordinates for the bottom and top horizontal clipping planes.
  ## near, far
  ##   Specify the distances to the near and far depth clipping planes. Both
  ##   distances must be positive.


proc glGetClipPlanef*(pname: GlEnum; eqn: array[4, GlFloat]) {.importc.}
  ## Return the coefficients of the specified clipping plane.
  ##
  ## plane
  ##   Specifies a clipping plane. The number of clipping planes depends on the
  ##   implementation, but at least six clipping planes are supported. Symbolic
  ##   names of the form `GL_CLIP_PLANE`i, where `i` is an integer between `0`
  ##   and `GL_MAX_CLIP_PLANES - 1`, are accepted.
  ## equation
  ##   Returns four fixed-point or floating-point values that are the
  ##   coefficients of the plane equation of plane in eye coordinates in the
  ##   order p1, p2, p3, and p4. The initial value is `(0, 0, 0, 0)`.


proc glGetFloatv*(pname: GlEnum; params: ptr GlFloat) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. The symbolic constants in
  ##   the list below are accepted.
  ## params
  ##   Returns the value or values of the specified parameter.


proc glGetLightfv*(light: GlEnum; pname: GlEnum; params: ptr GlFloat)
  {.importc.}
  ## Set light source parameters.
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `GL_LIGHTi` where `0 <= i < GL_MAX_LIGHTS`.
  ## pname
  ##   Specifies a light source parameter for light. `GL_AMBIENT`, `GL_DIFFUSE`,
  ##   `GL_SPECULAR`, `GL_POSITION`, `GL_SPOT_CUTOFF`, `GL_SPOT_DIRECTION`,
  ##   `GL_SPOT_EXPONENT`, `GL_CONSTANT_ATTENUATION`, `GL_LINEAR_ATTENUATION`,
  ##   and `GL_QUADRATIC_ATTENUATION` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that parameter pname of light
  ##   source light will be set to.


proc glGetMaterialfv*(face: GlEnum; pname: GlEnum; params: ptr GlFloat)
  {.importc.}
  ## Return material parameters values.
  ##
  ## face
  ##   Specifies which of the two materials is being queried. `GL_FRONT` or
  ##   `GL_BACK` are accepted, representing the front and back materials,
  ##   respectively.
  ## pname
  ##   Specifies the material parameter to return. Accepted symbolic names are
  ##   `GL_AMBIENT`, `GL_DIFFUSE`, `GL_SPECULAR`, `GL_EMISSION`, and
  ##   `GL_SHININESS`.
  ## params
  ##   Returns the requested data.


proc glGetTexEnvfv*(env: GlEnum; pname: GlEnum; params: ptr GlFloat) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `GL_TEXTURE_ENV` or
  ##   `GL_POINT_SPRITE_OES`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `GL_TEXTURE_ENV_MODE`, `GL_TEXTURE_ENV_COLOR`,
  ##   `GL_COMBINE_RGB`, `GL_COMBINE_ALPHA`, `GL_SRC0_RGB`, `GL_SRC1_RGB`,
  ##   `GL_SRC2_RGB`, `GL_SRC0_ALPHA`, `GL_SRC1_ALPHA`, `GL_SRC2_ALPHA`,
  ##   `GL_OPERAND0_RGB`, `GL_OPERAND1_RGB`, `GL_OPERAND2_RGB`,
  ##   `GL_OPERAND0_ALPHA`, `GL_OPERAND1_ALPHA`, `GL_OPERAND2_ALPHA`,
  ##   `GL_RGB_SCALE`, `GL_ALPHA_SCALE`, or `GL_COORD_REPLACE_OES`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `GL_ADD`, `GL_ADD_SIGNED`,
  ##   `GL_DOT3_RGB`, `GL_DOT3_RGBA`, `GL_INTERPOLATE`, `GL_MODULATE`,
  ##   `GL_DECAL`, `GL_BLEND`, `GL_REPLACE`, `GL_SUBTRACT`, `GL_COMBINE`,
  ##   `GL_TEXTURE`, `GL_CONSTANT`, `GL_PRIMARY_COLOR`, `GL_PREVIOUS`,
  ##   `GL_SRC_COLOR`, `GL_ONE_MINUS_SRC_COLOR`, `GL_SRC_ALPHA`,
  ##   `GL_ONE_MINUS_SRC_ALPHA`, a single boolean value for the point sprite
  ##   texture coordinate replacement, or `1.0`, `2.0`, or `4.0` when specifying
  ##   the `GL_RGB_SCALE` or `GL_ALPHA_SCALE`.


proc glGetTexParameterfv*(target: GlEnum; pname: GlEnum; params: ptr GlFloat)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `GL_TEXTURE_2D`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`, or `GL_GENERATE_MIPMAP`.
  ## params
  ##   Specifies a pointer to an array where the value or values of pname are
  ##   stored.


proc glLightModelf*(pname: GlEnum; param: GlFloat) {.importc.}
  ## Set the lighting model parameters.
  ##
  ## pname
  ##   Specifies a single-valued lighting model parameter. Must be
  ##   `GL_LIGHT_MODEL_TWO_SIDE`.
  ## param
  ##   Specifies the value that param will be set to.


proc glLightModelfv*(pname: GlEnum; params: ptr GlFloat) {.importc.}
  ## Set the lighting model parameters.
  ##
  ## pname
  ##   Specifies a lighting model parameter. `GL_LIGHT_MODEL_AMBIENT` and
  ##   `GL_LIGHT_MODEL_TWO_SIDE` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that params will be set to.


proc glLightf*(light: GlEnum; pname: GlEnum; param: GlFloat) {.importc.}
  ## Set light source parameters.
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `GL_LIGHT`i where `0 <= i < GL_MAX_LIGHTS`.
  ## pname
  ##   Specifies a single-valued light source parameter for light.
  ##   `GL_SPOT_EXPONENT`, `GL_SPOT_CUTOFF`, `GL_CONSTANT_ATTENUATION`,
  ##   `GL_LINEAR_ATTENUATION`, and `GL_QUADRATIC_ATTENUATION` are accepted.
  ## param
  ##   Specifies the value that parameter pname of light source light will be
  ##   set to.


proc glLightfv*(light: GlEnum; pname: GlEnum; params: ptr GlFloat) {.importc.}
  ## Set light source parameters.
  ##
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `GL_LIGHT`i where `0 <= i < GL_MAX_LIGHTS`.
  ## pname
  ##   Specifies a light source parameter for light. `GL_AMBIENT`, `GL_DIFFUSE`,
  ##   `GL_SPECULAR`, `GL_POSITION`, `GL_SPOT_CUTOFF`, `GL_SPOT_DIRECTION`,
  ##   `GL_SPOT_EXPONENT`, `GL_CONSTANT_ATTENUATION`, `GL_LINEAR_ATTENUATION`,
  ##   and `GL_QUADRATIC_ATTENUATION` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that parameter `pname` of
  ##   light source light will be set to.


proc glLineWidth*(width: GlFloat) {.importc.}
  ## Specify the width of rasterized lines.
  ##
  ## width
  ##   Specifies the width of rasterized lines. The initial value is 1.


proc glLoadMatrixf*(m: ptr GlFloat) {.importc.}
  ## Replace the current matrix with the specified matrix.
  ##
  ## m
  ##   Specifies a pointer to 16 consecutive values, which are used as the
  ##   elements of a 4x4  column-major matrix.


proc glMaterialf*(face: GlEnum; pname: GlEnum; param: GlFloat) {.importc.}
  ## Specify material parameters for the lighting model.
  ##
  ## face
  ##   Specifies which face or faces are being updated. Must be
  ##   `GL_FRONT_AND_BACK`.
  ## pname
  ##   Specifies the single-valued material parameter of the face or faces that
  ##   is being updated. Must be glShininess.
  ## param
  ##   Specifies the value that parameter `GL_SHININESS` will be set to.


proc glMaterialfv*(face: GlEnum; pname: GlEnum; params: ptr GlFloat) {.importc.}
  ## Specify material parameters for the lighting model.
  ##
  ## face
  ##   Specifies which face or faces are being updated. Must be
  ##   `GL_FRONT_AND_BACK`.
  ## pname
  ##   Specifies the material parameter of the face or faces that is being
  ##   updated. Must be one of `GL_AMBIENT`, `GL_DIFFUSE`, `GL_SPECULAR`,
  ##   `GL_EMISSION`, `GL_SHININESS`, or `GL_AMBIENT_AND_DIFFUSE`.
  ## params
  ##   Specifies a pointer to the value or values that `pname` will be set to.


proc glMultMatrixf*(m: ptr GlFloat) {.importc.}
  ## Multiply the current matrix with the specified matrix.
  ##
  ## m
  ##   Points to 16 consecutive values that are used as the elements of a 4x4
  ##   column-major matrix.


proc glMultiTexCoord4f*(target: GlEnum; s: GlFloat; t: GlFloat; r: GlFloat;
  q: GlFloat) {.importc.}
  ## Set the current texture coordinates.
  ##
  ## target
  ##   Specifies the texture unit whose coordinates should be modified. The
  ##   number of texture units is implementation-dependent, but must be at least
  ##   two. Symbolic constant must be one of `GL_TEXTURE`i, where `i` ranges
  ##   from `0` to `GL_MAX_TEXTURE_UNITS - 1`.
  ## s, t, r, q
  ##   Specify `s`, `t`, `r`, and `q` texture coordinates for target texture
  ##   unit.


proc glNormal3f*(nx: GlFloat; ny: GlFloat; nz: GlFloat) {.importc.}
  ## Set the current normal vector.
  ##
  ## nx, ny, nz
  ##   Specify the x, y, and z coordinates of the new current normal. The
  ##   initial value is `(0, 0, 1)`.


proc glOrthof*(left: GlFloat; right: GlFloat; bottom: GlFloat; top: GlFloat;
  zNear: GlFloat; zFar: GlFloat) {.importc.}
  ## Multiply the current matrix with an orthographic matrix.
  ##
  ## left, right
  ##   Specify the coordinates for the left and right vertical clipping planes.
  ## bottom, top
  ##   Specify the coordinates for the bottom and top horizontal clipping planes.
  ## near, far
  ##   Specify the distances to the nearer and farther depth clipping planes.
  ##   These values are negative if the plane is to be behind the viewer.


proc glPointParameterf*(pname: GlEnum; param: GlFloat) {.importc.}
  ## Specify parameters for point rasterization.
  ##
  ## pname
  ##   Specifies the single-valued parameter to be updated. Can be either
  ##   `GL_POINT_SIZE_MIN`, `GL_POINT_SIZE_MAX`, or
  ##   `GL_POINT_FADE_THRESHOLD_SIZE`.
  ## param
  ##   Specifies the value that the parameter will be set to.


proc glPointParameterfv*(pname: GlEnum; params: ptr GlFloat) {.importc.}
  ## Specify parameters for point rasterization.
  ##
  ## pname
  ##   Specifies the parameter to be updated. Can be either `GL_POINT_SIZE_MIN`,
  ##   `GL_POINT_SIZE_MAX`, `GL_POINT_FADE_THRESHOLD_SIZE`, or
  ##   `GL_POINT_DISTANCE_ATTENUATION`.
  ## params
  ##   Specifies a pointer to the value or values that pname will be set to.


proc glPointSize*(size: GlFloat) {.importc.}
  ## Specify the diameter of rasterized points.
  ##
  ## size
  ##   Specifies the diameter of rasterized points. The initial value is `1`.


proc glPolygonOffset*(factor: GlFloat; units: GlFloat) {.importc.}
  ## Set the scale and units used to calculate depth values.
  ##
  ## factor
  ##   Specifies a scale factor that is used to create a variable depth offset
  ##   for each polygon. The initial value is `0`.
  ## units
  ##   Is multiplied by an implementation-specific value to create a constant
  ##   depth offset. The initial value is `0`.


proc glRotatef*(angle: GlFloat; x: GlFloat; y: GlFloat; z: GlFloat) {.importc.}
  ## Multiply the current matrix by a rotation matrix.
  ##
  ## angle
  ##   Specifies the angle of rotation, in degrees.
  ## x, y, z
  ##   Specify the x, y, and z coordinates of a vector, respectively.


proc glScalef*(x: GlFloat; y: GlFloat; z: GlFloat) {.importc.}
  ## Multiply the current matrix by a general scaling matrix.
  ##
  ## x, y, z
  ##   Specify scale factors along the x, y, and z axes, respectively.


proc glTexEnvf*(target: GlEnum; pname: GlEnum; param: GlFloat) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `GL_TEXTURE_ENV` or
  ##   `GL_POINT_SPRITE_OES`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `GL_TEXTURE_ENV_MODE`, `GL_COMBINE_RGB`,
  ##   `GL_COMBINE_ALPHA`, `GL_SRC0_RGB`, `GL_SRC1_RGB`, `GL_SRC2_RGB`,
  ##   `GL_SRC0_ALPHA`, `GL_SRC1_ALPHA`, `GL_SRC2_ALPHA`, `GL_OPERAND0_RGB`,
  ##   `GL_OPERAND1_RGB`, `GL_OPERAND2_RGB`, `GL_OPERAND0_ALPHA`,
  ##   `GL_OPERAND1_ALPHA`, `GL_OPERAND2_ALPHA`, `GL_RGB_SCALE`,
  ##   `GL_ALPHA_SCALE`, or `GL_COORD_REPLACE_OES`.
  ## param
  ##   Specifies a single symbolic constant, one of `GL_ADD`, `GL_ADD_SIGNED`,
  ##   `GL_DOT3_RGB`, `GL_DOT3_RGBA`, `GL_INTERPOLATE`, `GL_MODULATE`,
  ##   `GL_DECAL`, `GL_BLEND`, `GL_REPLACE`, `GL_SUBTRACT`, `GL_COMBINE`,
  ##   `GL_TEXTURE`, `GL_CONSTANT`, `GL_PRIMARY_COLOR`, `GL_PREVIOUS`,
  ##   `GL_SRC_COLOR`, `GL_ONE_MINUS_SRC_COLOR`, `GL_SRC_ALPHA`,
  ##   `GL_ONE_MINUS_SRC_ALPHA`, a single boolean value for the point sprite
  ##   texture coordinate replacement, or `1.0`, `2.0`, or `4.0` when specifying
  ##   the `GL_RGB_SCALE` or `GL_ALPHA_SCALE`.


proc glTexEnvfv*(target: GlEnum; pname: GlEnum; params: ptr GlFloat) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `GL_TEXTURE_ENV` or
  ##   `GL_POINT_SPRITE_OES`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `GL_TEXTURE_ENV_MODE`, `GL_TEXTURE_ENV_COLOR`,
  ##   `GL_COMBINE_RGB`, `GL_COMBINE_ALPHA`, `GL_SRC0_RGB`,`GL_SRC1_RGB`,
  ##   `GL_SRC2_RGB`, `GL_SRC0_ALPHA`, `GL_SRC1_ALPHA`, `GL_SRC2_ALPHA`,
  ##   `GL_OPERAND0_RGB`, `GL_OPERAND1_RGB`, `GL_OPERAND2_RGB`,
  ##   `GL_OPERAND0_ALPHA`, `GL_OPERAND1_ALPHA`, `GL_OPERAND2_ALPHA`,
  ##   `GL_RGB_SCALE`, `GL_ALPHA_SCALE`, or `GL_COORD_REPLACE_OES`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `GL_ADD`, `GL_ADD_SIGNED`,
  ##   `GL_DOT3_RGB`, `GL_DOT3_RGBA`, `GL_INTERPOLATE`, `GL_MODULATE`,
  ##   `GL_DECAL`, `GL_BLEND`, `GL_REPLACE`, `GL_SUBTRACT`, `GL_COMBINE`,
  ##   `GL_TEXTURE`, `GL_CONSTANT`, `GL_PRIMARY_COLOR`, `GL_PREVIOUS`,
  ##   `GL_SRC_COLOR`, `GL_ONE_MINUS_SRC_COLOR`, `GL_SRC_ALPHA`,
  ##   `GL_ONE_MINUS_SRC_ALPHA`, a single boolean value for the point sprite
  ##   texture coordinate replacement, or `1.0`, `2.0`, or `4.0` when specifying
  ##   the `GL_RGB_SCALE` or `GL_ALPHA_SCALE`.


proc glTexParameterf*(target: GlEnum; pname: GlEnum; param: GlFloat) {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `GL_TEXTURE_2D`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture parameter. Can be
  ##   one of the following: `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`, or `GL_GENERATE_MIPMAP`.
  ## param
  ##   Specifies the value of pname.


proc glTexParameterfv*(target: GlEnum; pname: GlEnum; params: ptr GlFloat)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `GL_TEXTURE_2D`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`, or `GL_GENERATE_MIPMAP`.
  ## params
  ##   Specifies a pointer to an array where the value or values of `pname` are
  ##   stored.


proc glTranslatef*(x: GlFloat; y: GlFloat; z: GlFloat) {.importc.}
  ## Multiply the current matrix by a translation matrix.
  ##
  ## x, y, z
  ##   Specify the x, y, and z coordinates of a translation vector.


# Available in both Common and Common-Lite profiles

proc glActiveTexture*(texture: GlEnum) {.importc.}
  ## Select server-side active texture unit.
  ##
  ## texture
  ##   Specifies which texture unit to make active. The number of texture units
  ##   is implementation dependent, but must be at least two. `texture` must be
  ##   one of `GL_TEXTURE`i, where `0 <= i < GL_MAX_TEXTURE_UNITS` , which is an
  ##   implementation-dependent value. The intial value is `GL_TEXTURE0`.


proc glAlphaFuncx*(alphaFunc: GlEnum; reference: GlClampx) {.importc.}
  ## Specify the alpha test function.
  ##
  ## alphaFunc
  ##   Specifies the alpha comparison function. Symbolic constants
  ##   `GL_NEVER`, `GL_LESS`, `GL_EQUAL`, `GL_LEQUAL`, `GL_GREATER`,
  ##   `GL_NOTEQUAL`, `GL_GEQUAL`, and `GL_ALWAYS` are accepted. The initial
  ##   value is `GL_ALWAYS`.
  ## reference
  ##   Specifies the reference value that incoming alpha values are compared to.
  ##   This value is clamped to the range `[0, 1]`, where `0` represents the
  ##   lowest possible alpha value and `1` the highest possible value. The
  ##   initial reference value is `0`.


proc glBindBuffer*(target: GlEnum; buffer: GlUint) {.importc.}
  ## Bind a named buffer to a target.
  ##
  ## target
  ##   Specifies the target to which the buffer is bound. The symbolic constant
  ##   must be `GL_ARRAY_BUFFER` or `GL_ELEMENT_ARRAY_BUFFER`.
  ## buffer
  ##   Specifies the name of a buffer object.


proc glBindTexture*(target: GlEnum; texture: GlUint) {.importc.}
  ## Bind a named texture to a texturing target.
  ##
  ## target
  ##   Specifies the target to which the texture is bound.
  ##   Must be `GL_TEXTURE_2D`.
  ## texture
  ##   Specifies the name of a texture.


proc glBlendFunc*(sfactor: GlEnum; dfactor: GlEnum) {.importc.}
  ## Specify pixel arithmetic.
  ##
  ## sfactor
  ##   Specifies how the red, green, blue, and alpha source blending factors are
  ##   computed. The following symbolic constants are accepted: `GL_ZERO`,
  ##   `GL_ONE`, `GL_DST_COLOR`, `GL_ONE_MINUS_DST_COLOR`, `GL_SRC_ALPHA`,
  ##   `GL_ONE_MINUS_SRC_ALPHA`, `GL_DST_ALPHA`, `GL_ONE_MINUS_DST_ALPHA`, and
  ##   `GL_SRC_ALPHA_SATURATE`. The initial value is `GL_ONE`.
  ## dfactor
  ##   Specifies how the red, green, blue, and alpha destination blending
  ##   factors are computed. Eight symbolic constants are accepted: `GL_ZERO`,
  ##   `GL_ONE`, `GL_SRC_COLOR`, `GL_ONE_MINUS_SRC_COLOR`, `GL_SRC_ALPHA`,
  ##   `GL_ONE_MINUS_SRC_ALPHA`, `GL_DST_ALPHA`, and `GL_ONE_MINUS_DST_ALPHA`.
  ##   The initial value is `GL_ZERO`.


proc glBufferData*(target: GlEnum; size: GlSizeiptr; data: ptr GlVoid;
  usage: GlEnum) {.importc.}
  ## Create and initializes a buffer object's data store.
  ##
  ## target
  ##   Specifies the target buffer object. The symbolic constant must be
  ##   `GL_ARRAY_BUFFER` or `GL_ELEMENT_ARRAY_BUFFER`.
  ## size
  ##   Specifies the size in bytes of the buffer object's new data store.
  ## data
  ##   Specifies a pointer to data that will be copied into the data store for
  ##   initialization, or `nil` if no data is to be copied.
  ## usage
  ##   Specifies the expected usage pattern of the data store. The symbolic
  ##   constant must be `GL_STATIC_DRAW` or `GL_DYNAMIC_DRAW`.


proc glBufferSubData*(target: GlEnum; offset: GlIntptr; size: GlSizeiptr;
  data: ptr GlVoid) {.importc.}
  ## Update a subset of a buffer object's data store.
  ##
  ## target
  ##   Specifies the target buffer object. The symbolic constant must be
  ##   `GL_ARRAY_BUFFER` or `GL_ELEMENT_ARRAY_BUFFER`.
  ## offset
  ##   Specifies the offset into the buffer object's data store where data
  ##   replacement will begin, measured in bytes.
  ## size
  ##   Specifies the size in bytes of the data store region being replaced.
  ## data
  ##   Specifies a pointer to the new data that will be copied into the data
  ##   store.


proc glClear*(mask: GlBitfield) {.importc.}
  ## Clear buffers to preset values.
  ##
  ## mask
  ##   Bitwise OR of masks that indicate the buffers to be cleared. Valid masks
  ##   are `GL_COLOR_BUFFER_BIT`, `GL_DEPTH_BUFFER_BIT`, and
  ##   `GL_STENCIL_BUFFER_BIT`.


proc glClearColorx*(red: GlClampx; green: GlClampx; blue: GlClampx;
  alpha: GlClampx) {.importc.}
  ## Specify clear values for the color buffer.
  ##
  ## red, green, blue, alpha
  ##   Specify the red, green, blue, and alpha values used when the color buffer
  ##   is cleared. The initial values are all `0`.


proc glClearDepthx*(depth: GlClampx) {.importc.}
  ## Specify the clear value for the depth buffer.
  ##
  ## depth
  ##   Specifies the depth value used when the depth buffer is cleared. The
  ##   initial value is `1`.


proc glClearStencil*(s: GlInt) {.importc.}
  ## Specify the clear value for the stencil buffer.
  ##
  ## s
  ##   Specifies the index used when the stencil buffer is cleared. The initial
  ##   value is `0`.


proc glClientActiveTexture*(texture: GlEnum) {.importc.}
  ## Select client-side active texture unit.
  ##
  ## texture
  ##   Specifies which texture unit to make active. The number of texture units
  ##   is implementation dependent, but must be at least two. texture must be
  ##   one of `GL_TEXTURE`i, `0 <= i < GL_MAX_TEXTURE_UNITS` , which is an
  ##   implementation-dependent value. The initial value is `GL_TEXTURE0`.


proc glClipPlanex*(plane: GlEnum; equation: ptr GlFixed) {.importc.}
  ## Specify a plane against which all geometry is clipped.
  ##
  ## plane
  ##   Specifies which clipping plane is being positioned. Symbolic names of the
  ##   form `GL_CLIP_PLANE`i, where `i` is an integer between `0` and
  ##   `GL_MAX_CLIP_PLANES - 1`, are accepted.
  ## equation
  ##   Specifies the address of an array of four fixed-point or floating-point
  ##   values. These are the coefficients of a plane equation in object
  ##   coordinates: p1, p2, p3, and p4, in that order.


proc glColor4ub*(red: GlUbyte; green: GlUbyte; blue: GlUbyte; alpha: GlUbyte)
  {.importc.}
  ## Set the current color.
  ##
  ## red, green, blue, alpha
  ##   Specify new red, green, blue, and alpha values for the current color.


proc glColor4x*(red: GlFixed; green: GlFixed; blue: GlFixed; alpha: GlFixed)
  {.importc.}
  ## Set the current color.
  ##
  ## red, green, blue, alpha
  ##   Specify new red, green, blue, and alpha values for the current color.


proc glColorMask*(red: GlBoolean; green: GlBoolean; blue: GlBoolean;
  alpha: GlBoolean) {.importc.}
  ## Enable and disable writing of color buffer components.
  ##
  ## red, green, blue, alpha
  ##   Specify whether red, green, blue, and alpha can or cannot be written into
  ##   the color buffer. The initial values are all `GL_TRUE`, indicating that
  ##   all color components can be written.


proc glColorPointer*(size: GlInt; `type`: GlEnum; stride: GlSizei;
  pointer: ptr GlVoid) {.importc.}
  ## Define an array of colors.
  ##
  ## size
  ##   Specifies the number of components per color. Must be `4`. The initial
  ##   value is `4`.
  ## type
  ##   Specifies the data type of each color component in the array. Symbolic
  ##   constants `GL_UNSIGNED_BYTE` and `GL_FIXED` are accepted. However, the
  ##   initial value is `GL_FLOAT`. The common profile accepts the symbolic
  ##   constant `GL_FLOAT` as well.
  ## stride
  ##   Specifies the byte offset between consecutive colors. If stride is `0`,
  ##   the colors are understood to be tightly packed in the array. The initial
  ##   value is `0`.
  ## pointer
  ##   Specifies a pointer to the first component of the first color element in
  ##   the array.


proc glCompressedTexImage2D*(target: GlEnum; level: GlInt;
  internalformat: GlEnum; width: GlSizei; height: GlSizei; border: GlInt;
  imageSize: GlSizei; data: ptr GlVoid) {.importc.}
  ## Specify a two-dimensional compressed texture image.
  ##
  ## target
  ##   Specifies the target texture. Must be `GL_TEXTURE_2D`.
  ## level
  ##   Specifies the level-of-detail number. For paletted formats, where all
  ##   mipmap levels are loaded at once, this parameter is overloaded to
  ##   represent the negative of the greatest mipmap level included in data.
  ## internalformat
  ##   Specifies the color components in the texture. The following symbolic
  ##   constants are accepted: `GL_PALETTE4_RBG8_OES`, `GL_PALETTE4_RBGA8_OES`,
  ##   `GL_PALETTE4_R5G6B5_OES`, `GL_PALETTE4_RGBA4_OES`,
  ##   `GL_PALETTE4_RGB5A1_OES`, `GL_PALETTE8_RGB8_OES`,
  ##   `GL_PALETTE8_RGBA8_OES`, `GL_PALETTE8_R5G6B5_OES`,
  ##   `GL_PALETTE8_RGBA4_OES`, and `GL_PALETTE8_RGB5A1_OES`.
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


proc glCompressedTexSubImage2D*(target: GlEnum; level: GlInt; xoffset: GlInt;
  yoffset: GlInt; width: GlSizei; height: GlSizei; format: GlEnum;
  imageSize: GlSizei; data: ptr GlVoid) {.importc.}
  ## Specify a two-dimensional compressed texture subimage.
  ##
  ## target
  ##   Specifies the target texture. Must be `GL_TEXTURE_2D`.
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


proc glCopyTexImage2D*(target: GlEnum; level: GlInt; internalformat: GlEnum;
  x: GlInt; y: GlInt; width: GlSizei; height: GlSizei; border: GlInt)
  {.importc.}
  ## Specify a two-dimensional texture image with pixels from the color buffer.
  ##
  ## target
  ##   Specifies the target texture. Must be `GL_TEXTURE_2D`.
  ## level
  ##   Specifies the level-of-detail number. Level `0` is the base image level.
  ##   Level `n` is the `n`th mipmap reduction image.
  ## internalformat
  ##    Specifies the color components of the texture. Must be one of the
  ##    following symbolic constants: `GL_ALPHA`, `GL_LUMINANCE`,
  ##    `GL_LUMINANCE_ALPHA`, `GL_RGB`, or `GL_RGBA`.
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


proc glCopyTexSubImage2D*(target: GlEnum; level: GlInt; xoffset: GlInt;
  yoffset: GlInt; x: GlInt; y: GlInt; width: GlSizei; height: GlSizei)
  {.importc.}
  ## Specify a two-dimensional texture subimage with pixels from the color
  ## buffer.
  ##
  ## target
  ##   Specifies the target texture. Must be `GL_TEXTURE_2D`.
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


proc glCullFace*(mode: GlEnum) {.importc.}
  ## Specify whether front- or back-facing polygons are culled.
  ##
  ## mode
  ##   Specifies whether front- or back-facing polygons are culled. Symbolic
  ##   constants `GL_FRONT`, `GL_BACK`, and `GL_FRONT_AND_BACK` are accepted. The
  ##   initial value is `GL_BACK`.


proc glDeleteBuffers*(n: GlSizei; buffers: ptr GlUint) {.importc.}
  ## Delete named buffer objects.
  ##
  ## n
  ##   Specifies the number of buffer objects to be deleted.
  ## buffers
  ##   Specifies an array of buffer object names to be deleted.


proc glDeleteTextures*(n: GlSizei; textures: ptr GlUint) {.importc.}
  ## Delete named textures.
  ##
  ## n
  ##   Specifies the number of textures to be deleted.
  ## textures
  ##   Specifies an array of textures to be deleted.


proc glDepthFunc*(depthFunc: GlEnum) {.importc.}
  ## Specify the value used for depth buffer comparisons.
  ##
  ## depthFunc
  ##   Specifies the depth comparison function. Symbolic constants `GL_NEVER`,
  ##   `GL_LESS`, `GL_EQUAL`, `GL_LEQUAL`, `GL_GREATER`, `GL_NOTEQUAL`,
  ##   `GL_GEQUAL`, and `GL_ALWAYS` are accepted. The initial value is `GL_LESS`.


proc glDepthMask*(flag: GlBoolean) {.importc.}
  ## Enable or disable writing into the depth buffer.
  ##
  ## flag
  ##   Specifies whether the depth buffer is enabled for writing. If flag is
  ##   `GL_FALSE`, depth buffer writing is disabled, otherwise it is enabled.
  ##   The initial value is `GL_TRUE`.


proc glDepthRangex*(zNear: GlClampx; zFar: GlClampx) {.importc.}
  ## Specify mapping of depth values from normalized device coordinates to
  ## window coordinates.
  ##
  ## near
  ##   Specifies the mapping of the near clipping plane to window coordinates.
  ##   The initial value is `0`.
  ## far
  ##   Specifies the mapping of the far clipping plane to window coordinates.
  ##   The initial value is `1`.


proc glDisable*(cap: GlEnum) {.importc.}
  ## Disable server-side GL capabilities.
  ##
  ## cap
  ##   Specifies a symbolic constant indicating a GL capability.


proc glDisableClientState*(array: GlEnum) {.importc.}
  ## Disable client-side capability.
  ##
  ## array
  ##   Specifies the capability to disable. Symbolic constants `GL_COLOR_ARRAY`,
  ##   `GL_NORMAL_ARRAY`, `GL_POINT_SIZE_ARRAY_OES`, `GL_TEXTURE_COORD_ARRAY`,
  ##   and `GL_VERTEX_ARRAY` are accepted.


proc glDrawArrays*(mode: GlEnum; first: GlInt; count: GlSizei) {.importc.}
  ## Render primitives from array data.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `GL_POINTS`, `GL_LINE_STRIP`, `GL_LINE_LOOP`, `GL_LINES`,
  ##   `GL_TRIANGLE_STRIP`, `GL_TRIANGLE_FAN`, and `GL_TRIANGLES` are accepted.
  ## first
  ##   Specifies the starting index in the enabled arrays.
  ## count
  ##   Specifies the number of indices to be rendered.


proc glDrawElements*(mode: GlEnum; count: GlSizei; indexType: GlEnum;
  indices: ptr GlVoid) {.importc.}
  ## Render primitives from array data.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `GL_POINTS`, `GL_LINE_STRIP`, `GL_LINE_LOOP`, `GL_LINES`,
  ##   `GL_TRIANGLE_STRIP`, `GL_TRIANGLE_FAN`, and `GL_TRIANGLES` are accepted.
  ## count
  ##   Specifies the number of elements to be rendered.
  ## indexType
  ##   Specifies the type of the values in indices. Must be either
  ##   `GL_UNSIGNED_BYTE` or `GL_UNSIGNED_SHORT`.
  ## indices
  ##   Specifies a pointer to the location where the indices are stored.


proc glEnable*(cap: GlEnum) {.importc.}
  ## Enable server-side GL capabilities.
  ##
  ## cap
  ##   Specifies a symbolic constant indicating a GL capability.


proc glEnableClientState*(array: GlEnum) {.importc.}
  ## Enable client-side capability.
  ##
  ## array
  ##   Specifies the capability to enable. Symbolic constants `GL_COLOR_ARRAY`,
  ##   `GL_NORMAL_ARRAY`, `GL_POINT_SIZE_ARRAY_OES`, `GL_TEXTURE_COORD_ARRAY`,
  ##   and `GL_VERTEX_ARRAY` are accepted.


proc glFinish*() {.importc.}
  ## Block until all GL execution is complete,


proc glFlush*() {.importc.}
  ## Force execution of GL commands in finite time.


proc glFogx*(pname: GlEnum; param: GlFixed) {.importc.}
  ## Specify fog parameters.
  ##
  ## pname
  ##   Specifies a single-valued fog parameter. `GL_FOG_MODE`, `GL_FOG_DENSITY`,
  ##   `GL_FOG_START`, and `GL_FOG_END` are accepted.
  ## param
  ##   Specifies the value that pname will be set to.


proc glFogxv*(pname: GlEnum; params: ptr GlFixed) {.importc.}
  ## Specify fog parameters.
  ##
  ## pname
  ##   Specifies a single-valued fog parameter. `GL_FOG_MODE`, `GL_FOG_DENSITY`,
  ##   `GL_FOG_START`, and `GL_FOG_END` are accepted.
  ## params
  ##   Specifies the value or values to be assigned to pname. `GL_FOG_COLOR`
  ##   requires an array of four values. All other parameters accept an array
  ##   containing only a single value.


proc glFrontFace*(mode: GlEnum) {.importc.}
  ## Define front- and back-facing polygons.
  ##
  ## mode
  ##   Specifies the orientation of front-facing polygons. `GL_CW` and `GL_CCW`
  ##   are accepted. The initial value is `GL_CCW`.


proc glFrustumx*(left: GlFixed; right: GlFixed; bottom: GlFixed; top: GlFixed;
  zNear: GlFixed; zFar: GlFixed) {.importc.}
  ## Multiply the current matrix by a perspective matrix.
  ##
  ## left, right
  ##   Specify the coordinates for the left and right vertical clipping planes.
  ## bottom, top
  ##   Specify the coordinates for the bottom and top horizontal clipping planes.
  ## near, far
  ##   Specify the distances to the near and far depth clipping planes. Both
  ##   distances must be positive.


proc glGetBooleanv*(pname: GlEnum; params: ptr GlBoolean) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. The symbolic constants in
  ##   the list below are accepted.
  ## params
  ##   Returns the value or values of the specified parameter.


proc glGetBufferParameteriv*(target: GlEnum; pname: GlEnum; params: ptr GlInt)
  {.importc.}
  ## Return parameters of a buffer object.`
  ##
  ## target
  ##   Specifies the target buffer object. The symbolic constant must be
  ##   `GL_ARRAY_BUFFER` or `GL_ELEMENT_ARRAY_BUFFER`.
  ## pname
  ##   Specifies the symbolic name of a buffer object parameter. Accepted
  ##   values are `GL_BUFFER_SIZE` or `GL_BUFFER_USAGE`.
  ## params
  ##   Returns the requested parameter.


proc glGetClipPlanex*(pname: GlEnum; eqn: array[4, GlFixed]) {.importc.}
  ## Return the coefficients of the specified clipping plane.
  ##
  ## plane
  ##   Specifies a clipping plane. The number of clipping planes depends on the
  ##   implementation, but at least six clipping planes are supported. Symbolic
  ##   names of the form `GL_CLIP_PLANE`i, where `i` is an integer between `0`
  ##   and `GL_MAX_CLIP_PLANES - 1`, are accepted.
  ## equation
  ##   Returns four fixed-point or floating-point values that are the
  ##   coefficients of the plane equation of plane in eye coordinates in the
  ##   order p1, p2, p3, and p4. The initial value is `(0, 0, 0, 0)`.


proc glGenBuffers*(n: GlSizei; buffers: ptr GlUint) {.importc.}
  ## Generate buffer object names.
  ##
  ## n
  ##   Specifies the number of buffer object names to be generated.
  ## buffers
  ##   Specifies an array in which the generated buffer object names are stored.


proc glGenTextures*(n: GlSizei; textures: ptr GlUint) {.importc.}
  ## Generate texture names.
  ##
  ## n
  ##   Specifies the number of texture names to be generated.
  ## textures
  ##   Specifies an array in which the generated texture names are stored.


proc glGetError*(): GlEnum {.importc.}
  ## Return error information.


proc glGetFixedv*(pname: GlEnum; params: ptr GlFixed) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. The symbolic constants in
  ##   the list below are accepted.
  ## params
  ##   Returns the value or values of the specified parameter.


proc glGetIntegerv*(pname: GlEnum; params: ptr GlInt) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. The symbolic constants in
  ##   the list below are accepted.
  ## params
  ##   Returns the value or values of the specified parameter.


proc glGetLightxv*(light: GlEnum; pname: GlEnum; params: ptr GlFixed)
  {.importc.}
  ## Set light source parameters.
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `GL_LIGHT`i where `0 <= i < GL_MAX_LIGHTS`.
  ## pname
  ##   Specifies a light source parameter for light. `GL_AMBIENT`, `GL_DIFFUSE`,
  ##   `GL_SPECULAR`, `GL_POSITION`, `GL_SPOT_CUTOFF`, `GL_SPOT_DIRECTION`,
  ##   `GL_SPOT_EXPONENT`, `GL_CONSTANT_ATTENUATION`, `GL_LINEAR_ATTENUATION`,
  ##   and `GL_QUADRATIC_ATTENUATION` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that parameter pname of light
  ##   source light will be set to.


proc glGetMaterialxv*(face: GlEnum; pname: GlEnum; params: ptr GlFixed)
  {.importc.}
  ## Return material parameters values.
  ##
  ## face
  ##   Specifies which of the two materials is being queried. `GL_FRONT` or
  ##   `GL_BACK` are accepted, representing the front and back materials,
  ##   respectively.
  ## pname
  ##   Specifies the material parameter to return. Accepted symbolic names are
  ##   `GL_AMBIENT`, `GL_DIFFUSE`, `GL_SPECULAR`, `GL_EMISSION`, and
  ##   `GL_SHININESS`.
  ## params
  ##   Returns the requested data.


proc glGetPointerv*(pname: GlEnum; params: ptr ptr GlVoid) {.importc.}
  ## Return the address of the specified pointer.
  ##
  ## pname
  ##   Specifies the array or buffer pointer to be returned. Accepted symbolic
  ##   names are `GL_COLOR_ARRAY_POINTER`, `GL_NORMAL_ARRAY_POINTER`,
  ##   `GL_POINT_SIZE_ARRAY_POINTER_OES`, `GL_TEXTURE_COORD_ARRAY_POINTER`, and
  ##   `GL_VERTEX_ARRAY_POINTER`
  ## params
  ##   Returns the pointer value specified by `pname`.


proc glGetString*(name: GlEnum): ptr GlUbyte {.importc.}
  ## Return a string describing the current GL connection.
  ##
  ## name
  ##   Specifies a symbolic constant, one of `GL_VENDOR`, `GL_RENDERER`,
  ##   `GL_VERSION`, or `GL_EXTENSIONS`.


proc glGetTexEnviv*(env: GlEnum; pname: GlEnum; params: ptr GlInt) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `GL_TEXTURE_ENV` or
  ##   `GL_POINT_SPRITE_OES`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `GL_TEXTURE_ENV_MODE`, `GL_TEXTURE_ENV_COLOR`,
  ##   `GL_COMBINE_RGB`, `GL_COMBINE_ALPHA`, `GL_SRC0_RGB`, `GL_SRC1_RGB`,
  ##   `GL_SRC2_RGB`, `GL_SRC0_ALPHA`, `GL_SRC1_ALPHA`, `GL_SRC2_ALPHA`,
  ##   `GL_OPERAND0_RGB`, `GL_OPERAND1_RGB`, `GL_OPERAND2_RGB`,
  ##   `GL_OPERAND0_ALPHA`, `GL_OPERAND1_ALPHA`, `GL_OPERAND2_ALPHA`,
  ##   `GL_RGB_SCALE`, `GL_ALPHA_SCALE`, or `GL_COORD_REPLACE_OES`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `GL_ADD`, `GL_ADD_SIGNED`,
  ##   `GL_DOT3_RGB`, `GL_DOT3_RGBA`, `GL_INTERPOLATE`, `GL_MODULATE`,
  ##   `GL_DECAL`, `GL_BLEND`, `GL_REPLACE`, `GL_SUBTRACT`, `GL_COMBINE`,
  ##   `GL_TEXTURE`, `GL_CONSTANT`, `GL_PRIMARY_COLOR`, `GL_PREVIOUS`,
  ##   `GL_SRC_COLOR`, `GL_ONE_MINUS_SRC_COLOR`, `GL_SRC_ALPHA`,
  ##   `GL_ONE_MINUS_SRC_ALPHA`, a single boolean value for the point sprite
  ##   texture coordinate replacement, or `1.0`, `2.0`, or `4.0` when specifying
  ##   the `GL_RGB_SCALE` or `GL_ALPHA_SCALE`.


proc glGetTexEnvxv*(env: GlEnum; pname: GlEnum; params: ptr GlFixed) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `GL_TEXTURE_ENV` or
  ##   `GL_POINT_SPRITE_OES`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `GL_TEXTURE_ENV_MODE`, `GL_TEXTURE_ENV_COLOR`,
  ##   `GL_COMBINE_RGB`, `GL_COMBINE_ALPHA`, `GL_SRC0_RGB`, `GL_SRC1_RGB`,
  ##   `GL_SRC2_RGB`, `GL_SRC0_ALPHA`, `GL_SRC1_ALPHA`, `GL_SRC2_ALPHA`,
  ##   `GL_OPERAND0_RGB`, `GL_OPERAND1_RGB`, `GL_OPERAND2_RGB`,
  ##   `GL_OPERAND0_ALPHA`, `GL_OPERAND1_ALPHA`, `GL_OPERAND2_ALPHA`,
  ##   `GL_RGB_SCALE`, `GL_ALPHA_SCALE`, or `GL_COORD_REPLACE_OES`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `GL_ADD`, `GL_ADD_SIGNED`,
  ##   `GL_DOT3_RGB`, `GL_DOT3_RGBA`, `GL_INTERPOLATE`, `GL_MODULATE`,
  ##   `GL_DECAL`, `GL_BLEND`, `GL_REPLACE`, `GL_SUBTRACT`, `GL_COMBINE`,
  ##   `GL_TEXTURE`, `GL_CONSTANT`, `GL_PRIMARY_COLOR`, `GL_PREVIOUS`,
  ##   `GL_SRC_COLOR`, `GL_ONE_MINUS_SRC_COLOR`, `GL_SRC_ALPHA`,
  ##   `GL_ONE_MINUS_SRC_ALPHA`, a single boolean value for the point sprite
  ##   texture coordinate replacement, or `1.0`, `2.0`, or `4.0` when specifying
  ##   the `GL_RGB_SCALE` or `GL_ALPHA_SCALE`.


proc glGetTexParameteriv*(target: GlEnum; pname: GlEnum; params: ptr GlInt)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `GL_TEXTURE_2D`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`, or `GL_GENERATE_MIPMAP`.
  ## params
  ##   Specifies a pointer to an array where the value or values of pname are
  ##   stored.


proc glGetTexParameterxv*(target: GlEnum; pname: GlEnum; params: ptr GlFixed)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `GL_TEXTURE_2D`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`, or `GL_GENERATE_MIPMAP`.
  ## params
  ##   Specifies a pointer to an array where the value or values of pname are
  ##   stored.


proc glHint*(target: GlEnum; mode: GlEnum) {.importc.}
  ## Specify implementation-specific hints.
  ##
  ## target
  ##   Specifies a symbolic constant indicating the behavior to be controlled.
  ##   `GL_FOG_HINT`, `GL_GENERATE_MIPMAP_HINT`, `GL_LINE_SMOOTH_HINT`,
  ##   `GL_PERSPECTIVE_CORRECTION_HINT`, and `GL_POINT_SMOOTH_HINT` are accepted.
  ## mode
  ##   Specifies a symbolic constant indicating the desired behavior.
  ##   `GL_FASTEST`, `GL_NICEST`, and `GL_DONT_CARE` are accepted.


proc glIsBuffer*(buffer: GlUint): GlBoolean {.importc.}
  ## Determine if a name corresponds to a buffer object.
  ##
  ## buffer
  ##   Specifies a value that may be the name of a buffer object.


proc glIsEnabled*(cap: GlEnum): GlBoolean {.importc.}
  ## Test whether a capability is enabled.
  ##
  ## cap
  ##   Specifies a symbolic constant indicating a GL capability.


proc glIsTexture*(texture: GlUint): GlBoolean {.importc.}
  ## Determine if a name corresponds to a texture.
  ##
  ## texture
  ##   Specifies a value that may be the name of a texture.


proc glLightModelx*(pname: GlEnum; param: GlFixed) {.importc.}
  ## Set the lighting model parameters.
  ##
  ## pname
  ##   Specifies a single-valued lighting model parameter. Must be
  ##   `GL_LIGHT_MODEL_TWO_SIDE`.
  ## param
  ##   Specifies the value that param will be set to.


proc glLightModelxv*(pname: GlEnum; params: ptr GlFixed) {.importc.}
  ## Set the lighting model parameters.
  ##
  ## pname
  ##   Specifies a lighting model parameter. `GL_LIGHT_MODEL_AMBIENT` and
  ##   `GL_LIGHT_MODEL_TWO_SIDE` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that params will be set to.


proc glLightx*(light: GlEnum; pname: GlEnum; param: GlFixed) {.importc.}
  ## Set light source parameters.
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `GL_LIGHT`i where `0 <= i < GL_MAX_LIGHTS`.
  ## pname
  ##   Specifies a single-valued light source parameter for light.
  ##   `GL_SPOT_EXPONENT`, `GL_SPOT_CUTOFF`, `GL_CONSTANT_ATTENUATION`,
  ##   `GL_LINEAR_ATTENUATION`, and `GL_QUADRATIC_ATTENUATION` are accepted.
  ## param
  ##   Specifies the value that parameter pname of light source light will be
  ##   set to.


proc glLightxv*(light: GlEnum; pname: GlEnum; params: ptr GlFixed) {.importc.}
  ## Set light source parameters.
  ##
  ##
  ## light
  ##   Specifies a light. The number of lights depends on the implementation,
  ##   but at least eight lights are supported. They are identified by symbolic
  ##   names of the form `GL_LIGHT`i where `0 <= i < GL_MAX_LIGHTS`.
  ## pname
  ##   Specifies a light source parameter for light. `GL_AMBIENT`, `GL_DIFFUSE`,
  ##   `GL_SPECULAR`, `GL_POSITION`, `GL_SPOT_CUTOFF`, `GL_SPOT_DIRECTION`,
  ##   `GL_SPOT_EXPONENT`, `GL_CONSTANT_ATTENUATION`, `GL_LINEAR_ATTENUATION`,
  ##   and `GL_QUADRATIC_ATTENUATION` are accepted.
  ## params
  ##   Specifies a pointer to the value or values that parameter `pname` of
  ##   light source light will be set to.


proc glLineWidthx*(width: GlFixed) {.importc.}
  ## Specify the width of rasterized lines.
  ##
  ## width
  ##   Specifies the width of rasterized lines. The initial value is 1.


proc glLoadIdentity*() {.importc.}
  ## Replace the current matrix with the identity matrix.


proc glLoadMatrixx*(m: ptr GlFixed) {.importc.}
  ## Replace the current matrix with the specified matrix.
  ##
  ## m
  ##   Specifies a pointer to 16 consecutive values, which are used as the
  ##   elements of a 4x4  column-major matrix.


proc glLogicOp*(opcode: GlEnum) {.importc.}
  ## Specify a logical pixel operation.
  ##
  ## opcode
  ##   Specifies a symbolic constant that selects a logical operation. The
  ##   following symbols are accepted: `GL_CLEAR`, `GL_SET`, `GL_COPY`,
  ##   `GL_COPY_INVERTED`, `GL_NOOP`, `GL_INVERT`, `GL_AND`, `GL_NAND`, `GL_OR`,
  ##   `GL_NOR`, `GL_XOR`, `GL_EQUIV`, `GL_AND_REVERSE`, `GL_AND_INVERTED`,
  ##   `GL_OR_REVERSE`, and `GL_OR_INVERTED`. The initial value is `GL_COPY`.


proc glMaterialx*(face: GlEnum; pname: GlEnum; param: GlFixed) {.importc.}
  ## Specify material parameters for the lighting model.
  ##
  ## face
  ##   Specifies which face or faces are being updated.
  ##   Must be `GL_FRONT_AND_BACK`.
  ## pname
  ##   Specifies the single-valued material parameter of the face or faces that
  ##   is being updated. Must be `GL_SHININESS`.
  ## param
  ##   Specifies the value that parameter `GL_SHININESS` will be set to.


proc glMaterialxv*(face: GlEnum; pname: GlEnum; params: ptr GlFixed) {.importc.}
  ## Specify material parameters for the lighting model.
  ##
  ## face
  ##   Specifies which face or faces are being updated.
  ##   Must be `GL_FRONT_AND_BACK`.
  ## pname
  ##   Specifies the material parameter of the face or faces that is being
  ##   updated. Must be one of `GL_AMBIENT`, `GL_DIFFUSE`, `GL_SPECULAR`,
  ##   `GL_EMISSIONS`, `GL_SHININESS`, or `GL_AMBIENT_AND_DIFFUSE`.
  ## params
  ##   Specifies a pointer to the value or values that pname will be set to.


proc glMatrixMode*(mode: GlEnum) {.importc.}
  ## Specify which matrix is the current matrix.
  ##
  ## mode
  ##   Specifies which matrix stack is the target for subsequent matrix
  ##   operations. These values are accepted: `GL_MODEL_VIEW`, `GL_PROJECTION`,
  ##   and `GL_TEXTURE`. The initial value is `GL_MODEL_VIEW`.


proc glMultMatrixx*(m: ptr GlFixed) {.importc.}
  ## Multiply the current matrix with the specified matrix.
  ##
  ## m
  ##   Points to 16 consecutive values that are used as the elements of a 4x4
  ##   column-major matrix.


proc glMultiTexCoord4x*(target: GlEnum; s: GlFixed; t: GlFixed; r: GlFixed;
  q: GlFixed) {.importc.}
  ## Set the current texture coordinates.
  ##
  ## target
  ##   Specifies the texture unit whose coordinates should be modified. The
  ##   number of texture units is implementation dependent, but must be at least
  ##   two. Symbolic constant must be one of `GL_TEXTURE`i, where `i` ranges
  ##   from `0` to `GL_MAX_TEXTURE_UNITS - 1`, which is an
  ##   implementation-dependent value.
  ## s, t, r, q
  ##   Specify `s`, `t`, `r`, and `q` texture coordinates for target texture
  ##   unit.


proc glNormal3x*(nx: GlFixed; ny: GlFixed; nz: GlFixed) {.importc.}
  ## Set the current normal vector.
  ##
  ## nx, ny, nz
  ##   Specify the x, y, and z coordinates of the new current normal. The
  ##   initial value is `(0, 0, 1)`.


proc glNormalPointer*(coordType: GlEnum; stride: GlSizei; pointer: ptr GlVoid)
  {.importc.}
  ## Define an array of normals.
  ##
  ## coordType
  ##   Specifies the data type of each coordinate in the array. Symbolic
  ##   constants `GL_BYTE`, `GL_SHORT`, and `GL_FIXED` are accepted. However,
  ##   the initial value is `GL_FLOAT`. The common profile accepts the symbolic
  ##   constant `GL_FLOAT` as well.
  ## stride
  ##   Specifies the byte offset between consecutive normals. If stride is `0`,
  ##   the normals are understood to be tightly packed in the array. The
  ##   initial value is `0`.
  ## pointer
  ##   Specifies a pointer to the first coordinate of the first normal in the
  ##   array. The initial value is `0`.


proc glOrthox*(left: GlFixed; right: GlFixed; bottom: GlFixed; top: GlFixed;
  zNear: GlFixed; zFar: GlFixed) {.importc.}
  ## Multiply the current matrix with an orthographic matrix.
  ##
  ## left, right
  ##   Specify the coordinates for the left and right vertical clipping planes.
  ## bottom, top
  ##   Specify the coordinates for the bottom and top horizontal clipping planes.
  ## near, far
  ##   Specify the distances to the nearer and farther depth clipping planes.
  ##   These values are negative if the plane is to be behind the viewer.


proc glPixelStorei*(pname: GlEnum; param: GlInt) {.importc.}
  ## Set pixel storage modes.
  ##
  ## pname
  ##   Specifies the symbolic name of the parameter to be set.
  ##   `GL_PACK_ALIGNMENT` affects the packing of pixel data into memory.
  ##   `GL_UNPACK_ALIGNMENT` affects the unpacking of pixel data from memory.
  ## param
  ##   Specifies the value that `pname` is set to.


proc glPointParameterx*(pname: GlEnum; param: GlFixed) {.importc.}
  ## Specify parameters for point rasterization.
  ##
  ## pname
  ##   Specifies the single-valued parameter to be updated. Can be either
  ##   `GL_POINT_SIZE_MIN`, `GL_POINT_SIZE_MAX`, or
  ##   `GL_POINT_FADE_THRESHOLD_SIZE`.
  ## param
  ##   Specifies the value that the parameter will be set to.


proc glPointParameterxv*(pname: GlEnum; params: ptr GlFixed) {.importc.}
  ## Specify parameters for point rasterization.
  ##
  ## pname
  ##   Specifies the parameter to be updated. Can be either `GL_POINT_SIZE_MIN`,
  ##   `GL_POINT_SIZE_MAX`, `GL_POINT_FADE_THRESHOLD_SIZE`, or
  ##   `GL_POINT_DISTANCE_ATTENUATION`.
  ## params
  ##   Specifies a pointer to the value or values that `pname` will be set to.


proc glPointSizex*(size: GlFixed) {.importc.}
  ## Specify the diameter of rasterized points.
  ##
  ## size
  ##   Specifies the diameter of rasterized points. The initial value is `1`.


proc glPolygonOffsetx*(factor: GlFixed; units: GlFixed) {.importc.}
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


proc glReadPixels*(x: GlInt; y: GlInt; width: GlSizei; height: GlSizei;
  format: GlEnum; pixelType: GlEnum; pixels: ptr GlVoid) {.importc.}
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
  ##   Specifies the format of the pixel data. Must be either `GL_RGBA`
  ##   or the value of `GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES`.
  ## pixelType
  ##   Specifies the data type of the pixel data. Must be either
  ##   `GL_UNSIGNED_BYTE` or the value of
  ##   `GL_IMPLEMENTATION_COLOR_READ_TYPE_OES`.
  ## pixels
  ##   Returns the pixel data.


proc glRotatex*(angle: GlFixed; x: GlFixed; y: GlFixed; z: GlFixed) {.importc.}
  ## Multiply the current matrix by a rotation matrix.
  ##
  ## angle
  ##   Specifies the angle of rotation, in degrees.
  ## x, y, z
  ##   Specify the x, y, and z coordinates of a vector, respectively.


proc glSampleCoverage*(value: GlClampf; invert: GlBoolean) {.importc.}
  ## Specify mask to modify multisampled pixel fragments.
  ##
  ## value
  ##   Specifies the coverage of the modification mask. The value is clamped to
  ##   the range `[0, 1]`, where `0` represents no coverage and `1` full
  ##   coverage. The initial value is `1`.
  ## invert
  ##   Specifies whether the modification mask implied by value is inverted or
  ##   not. The initial value is `GL_FALSE`.


proc glSampleCoveragex*(value: GlClampx; invert: GlBoolean) {.importc.}
  ## Specify mask to modify multisampled pixel fragments.
  ##
  ## value
  ##   Specifies the coverage of the modification mask. The value is clamped to
  ##   the range `[0, 1]`, where `0` represents no coverage and `1` full
  ##   coverage. The initial value is `1`.
  ## invert
  ##   Specifies whether the modification mask implied by value is inverted or
  ##   not. The initial value is `GL_FALSE`.


proc glScalex*(x: GlFixed; y: GlFixed; z: GlFixed) {.importc.}
  ## Multiply the current matrix by a general scaling matrix.
  ##
  ## x, y, z
  ##   Specify scale factors along the x, y, and z axes, respectively.


proc glScissor*(x: GlInt; y: GlInt; width: GlSizei; height: GlSizei) {.importc.}
  ## Define the scissor box.
  ##
  ## x, y
  ##   Specify the lower left corner of the scissor box, in pixels. The initial
  ##   value is `(0, 0)`.
  ## width, height
  ##   Specify the width and height of the scissor box. When a GL context is
  ##   first attached to a surface (e.g. window), `width` and `height` are set
  ##   to the dimensions of that surface.


proc glShadeModel*(mode: GlEnum) {.importc.}
  ## Select flat or smooth shading.
  ##
  ## mode
  ##   Specifies a symbolic value representing a shading technique. Accepted
  ##   values are `GL_FLAT` and `GL_SMOOTH`. The initial value is `GL_SMOOTH`.


proc glStencilFunc*(stencilFunc: GlEnum; reference: GlInt; mask: GlUint)
  {.importc.}
  ## Set function and reference value for stencil testing.
  ##
  ## stencilFunc
  ##   Specifies the test function. Eight tokens are valid: `GL_NEVER`,
  ##   `GL_LESS`, `GL_LEQUAL`, `GL_GREATER`, `GL_GEQUAL`, `GL_EQUAL`,
  ##   `GL_NOTEQUAL`, and `GL_ALWAYS`. The initial value is `GL_ALWAYS`.
  ## reference
  ##   Specifies the reference value for the stencil test. `reference` is
  ##   clamped to the range `[0 , 2n-1]`, where `n` is the number of bitplanes
  ##   in the stencil buffer. The initial value is `0`.
  ## mask
  ##   Specifies a mask that is ANDed with both the reference value and the
  ##   stored stencil value when the test is done. The initial value is all 1's.


proc glStencilMask*(mask: GlUint) {.importc.}
  ## Control the writing of individual bits in the stencil planes.
  ##
  ## mask
  ##   Specifies a bit mask to enable and disable writing of individual bits in
  ##   the stencil planes. The initial value is all 1's.


proc glStencilOp*(fail: GlEnum; zfail: GlEnum; zpass: GlEnum) {.importc.}
  ## Set stencil test actions.
  ##
  ## fail
  ##   Specifies the action to take when the stencil test fails. Six symbolic
  ##   constants are accepted: `GL_KEEP`, `GL_ZERO`, `GL_REPLACE`, `GL_INCR`,
  ##   `GL_DECR`, and `GL_INVERT`. The initial value is `GL_KEEP`.
  ## zfail
  ##   Specifies the stencil action when the stencil test passes, but the depth
  ##   test fails. `zfail` accepts the same symbolic constants as `fail.` The
  ##   initial value is `GL_KEEP`.
  ## zpass
  ##   Specifies the stencil action when both the stencil test and the depth
  ##   test pass, or when the stencil test passes and either there is no depth
  ##   buffer or depth testing is not enabled. `zpass` accepts the same symbolic
  ##   constants as `fail`. The initial value is `GL_KEEP`.


proc glTexCoordPointer*(size: GlInt; coordType: GlEnum; stride: GlSizei;
  pointer: ptr GlVoid) {.importc.}
  ## Define an array of texture coordinates.
  ##
  ## size
  ##   Specifies the number of coordinates per array element. Must be `2`, `3`
  ##   or `4`. The initial value is `4`.
  ## coordType
  ##   Specifies the data type of each texture coordinate. Symbolic constants
  ##   `GL_BYTE`, `GL_SHORT`, and `GL_FIXED` are accepted. However, the initial
  ##   value is `GL_FLOAT`. The common profile accepts the symbolic constant
  ##   `GL_FLOAT` as well.
  ## stride
  ##   Specifies the byte offset between consecutive array elements. If `stride`
  ##   is `0`, the array elements are understood to be tightly packed. The
  ##   initial value is `0`.
  ## pointer
  ##   Specifies a pointer to the first coordinate of the first element in the
  ##   array. The initial value is `0`.


proc glTexEnvi*(target: GlEnum; pname: GlEnum; param: GlInt) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `GL_TEXTURE_ENV` or
  ##   `GL_POINT_SPRITE_OES`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `GL_TEXTURE_ENV_MODE`, `GL_COMBINE_RGB`,
  ##   `GL_COMBINE_ALPHA`, `GL_SRC0_RGB`, `GL_SRC1_RGB`, `GL_SRC2_RGB`,
  ##   `GL_SRC0_ALPHA`, `GL_SRC1_ALPHA`, `GL_SRC2_ALPHA`, `GL_OPERAND0_RGB`,
  ##   `GL_OPERAND1_RGB`, `GL_OPERAND2_RGB`, `GL_OPERAND0_ALPHA`,
  ##   `GL_OPERAND1_ALPHA`, `GL_OPERAND2_ALPHA`, `GL_RGB_SCALE`,
  ##   `GL_ALPHA_SCALE`, or `GL_COORD_REPLACE_OES`.
  ## param
  ##   Specifies a single symbolic constant, one of `GL_ADD`, `GL_ADD_SIGNED`,
  ##   `GL_DOT3_RGB`, `GL_DOT3_RGBA`, `GL_INTERPOLATE`, `GL_MODULATE`,
  ##   `GL_DECAL`, `GL_BLEND`, `GL_REPLACE`, `GL_SUBTRACT`, `GL_COMBINE`,
  ##   `GL_TEXTURE`, `GL_CONSTANT`, `GL_PRIMARY_COLOR`, `GL_PREVIOUS`,
  ##   `GL_SRC_COLOR`, `GL_ONE_MINUS_SRC_COLOR`, `GL_SRC_ALPHA`,
  ##   `GL_ONE_MINUS_SRC_ALPHA`, a single  boolean value for the point sprite
  ##   texture coordinate replacement, or `1.0`, `2.0`, or `4.0` when specifying
  ##   the `GL_RGB_SCALE` or `GL_ALPHA_SCALE`.


proc glTexEnvx*(target: GlEnum; pname: GlEnum; param: GlFixed) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `GL_TEXTURE_ENV` or
  ##   `GL_POINT_SPRITE_OES`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `GL_TEXTURE_ENV_MODE`, `GL_COMBINE_RGB`,
  ##   `GL_COMBINE_ALPHA`, `GL_SRC0_RGB`, `GL_SRC1_RGB`, `GL_SRC2_RGB`,
  ##   `GL_SRC0_ALPHA`, `GL_SRC1_ALPHA`, `GL_SRC2_ALPHA`, `GL_OPERAND0_RGB`,
  ##   `GL_OPERAND1_RGB`, `GL_OPERAND2_RGB`, `GL_OPERAND0_ALPHA`,
  ##   `GL_OPERAND1_ALPHA`, `GL_OPERAND2_ALPHA`, `GL_RGB_SCALE`,
  ##   `GL_ALPHA_SCALE`, or `GL_COORD_REPLACE_OES`.
  ## param
  ##   Specifies a single symbolic constant, one of `GL_ADD`,
  ##   `GL_ADD_SIGNED`, `GL_DOT3_RGB`, `GL_DOT3_RGBA`, `GL_INTERPOLATE`,
  ##   `GL_MODULATE`, `GL_DECAL`, `GL_BLEND`, `GL_REPLACE`, `GL_SUBTRACT`,
  ##   `GL_COMBINE`, `GL_TEXTURE`, `GL_CONSTANT`, `GL_PRIMARY_COLOR`,
  ##   `GL_PREVIOUS`, `GL_SRC_COLOR`, `GL_ONE_MINUS_SRC_COLOR`, `GL_SRC_ALPHA`,
  ##   `GL_ONE_MINUS_SRC_ALPHA`, a single boolean value for the point sprite
  ##   texture coordinate replacement, or `1.0`, `2.0`, or `4.0` when specifying
  ##   the `GL_RGB_SCALE` or `GL_ALPHA_SCALE`.


proc glTexEnviv*(target: GlEnum; pname: GlEnum; params: ptr GlInt) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `GL_TEXTURE_ENV` or
  ##   `GL_POINT_SPRITE_OES`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `GL_TEXTURE_ENV_MODE`, `GL_TEXTURE_ENV_COLOR`,
  ##   `GL_COMBINE_RGB`, `GL_COMBINE_ALPHA`, `GL_SRC0_RGB`, `GL_SRC1_RGB`,
  ##   `GL_SRC2_RGB`, `GL_SRC0_ALPHA`, `GL_SRC1_ALPHA`, `GL_SRC2_ALPHA`,
  ##   `GL_OPERAND0_RGB`, `GL_OPERAND1_RGB`, `GL_OPERAND2_RGB`,
  ##   `GL_OPERAND0_ALPHA`, `GL_OPERAND1_ALPHA`, `GL_OPERAND2_ALPHA`,
  ##   `GL_RGB_SCALE`, `GL_ALPHA_SCALE`, or `GL_COORD_REPLACE_OES`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `GL_ADD`, `GL_ADD_SIGNED`,
  ##   `GL_DOT3_RGB`, `GL_DOT3_RGBA`, `GL_INTERPOLATE`, `GL_MODULATE`,
  ##   `GL_DECAL`, `GL_BLEND`, `GL_REPLACE`, `GL_SUBTRACT`, `GL_COMBINE`,
  ##   `GL_TEXTURE`, `GL_CONSTANT`, `GL_PRIMARY_COLOR`, `GL_PREVIOUS`,
  ##   `GL_SRC_COLOR`, `GL_ONE_MINUS_SRC_COLOR`, `GL_SRC_ALPHA`,
  ##   `GL_ONE_MINUS_SRC_ALPHA`, a single boolean value for the point sprite
  ##   texture coordinate replacement, or `1.0`, `2.0`, or `4.0` when specifying
  ##   the  `GL_RGB_SCALE` or `GL_ALPHA_SCALE`.


proc glTexEnvxv*(target: GlEnum; pname: GlEnum; params: ptr GlFixed) {.importc.}
  ## Set texture environment parameters.
  ##
  ## target
  ##   Specifies a texture environment. May be `GL_TEXTURE_ENV` or
  ##   `GL_POINT_SPRITE_OES`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture environment
  ##   parameter. May be either `GL_TEXTURE_ENV_MODE`, `GL_TEXTURE_ENV_COLOR`,
  ##   `GL_COMBINE_RGB`, `GL_COMBINE_ALPHA`, `GL_SRC0_RGB`, `GL_SRC1_RGB`,
  ##   `GL_SRC2_RGB`, `GL_SRC0_ALPHA`, `GL_SRC1_ALPHA`, `GL_SRC2_ALPHA`,
  ##   `GL_OPERAND0_RGB`, `GL_OPERAND1_RGB`, `GL_OPERAND2_RGB`,
  ##   `GL_OPERAND0_ALPHA`, `GL_OPERAND1_ALPHA`, `GL_OPERAND2_ALPHA`,
  ##   `GL_RGB_SCALE`, `GL_ALPHA_SCALE`, or `GL_COORD_REPLACE_OES`.
  ## params
  ##   Specifies a pointer to a parameter array that contains either an RGBA
  ##   color, a single symbolic constant, one of `GL_ADD`, `GL_ADD_SIGNED`,
  ##   `GL_DOT3_RGB`, `GL_DOT3_RGBA`, `GL_INTERPOLATE`, `GL_MODULATE`,
  ##   `GL_DECAL`, `GL_BLEND`, `GL_REPLACE`, `GL_SUBTRACT`, `GL_COMBINE`,
  ##   `GL_TEXTURE`, `GL_CONSTANT`, `GL_PRIMARY_COLOR`, `GL_PREVIOUS`,
  ##   `GL_SRC_COLOR`, `GL_ONE_MINUS_SRC_COLOR`, `GL_SRC_ALPHA`,
  ##   `GL_ONE_MINUS_SRC_ALPHA`, a single boolean value for the point sprite
  ##   texture coordinate replacement, or `1.0`, `2.0`, or `4.0` when specifying
  ##   the `GL_RGB_SCALE` or `GL_ALPHA_SCALE`.


proc glTexImage2D*(target: GlEnum; level: GlInt; internalformat: GlInt;
  width: GlSizei; height: GlSizei; border: GlInt; format: GlEnum;
  pixelType: GlEnum; pixels: ptr GlVoid) {.importc.}
  ## Specify a two-dimensional texture image.
  ##
  ## target
  ##   Specifies the target texture. Must be `GL_TEXTURE_2D`.
  ## level
  ##   Specifies the level-of-detail number. Level `0` is the base image level.
  ##   Level `n` is the `n`th mipmap reduction image. Must be greater or equal
  ##   `0`.
  ## internalformat
  ##   Specifies the color components in the texture. Must be same as format.
  ##   The following symbolic values are accepted: `GL_ALPHA`, `GL_RGB`,
  ##   `GL_RGBA`, `GL_LUMINANCE`, or `GL_LUMINANCE_ALPHA`.
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
  ##   The following symbolic values are accepted: `GL_ALPHA`, `GL_RGB`,
  ##   `GL_RGBA`, `GL_LUMINANCE`, and `GL_LUMINANCE_ALPHA`.
  ## pixelType
  ##   Specifies the data type of the pixel data. The following symbolic values
  ##   are accepted: `GL_UNSIGNED_BYTE`, `GL_UNSIGNED_SHORT565`,
  ##   `GL_UNSIGNED_SHORT4444`, and `GL_UNSIGNED_SHORT5551`.
  ## pixels
  ##   Specifies a pointer to the image data in memory.


proc glTexParameteri*(target: GlEnum; pname: GlEnum; param: GlInt) {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `GL_TEXTURE_2D`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture parameter. It can
  ##   be one of the following: `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`, or `GL_GENERATE_MIPMAP`.
  ## param
  ##   Specifies the value of pname.


proc glTexParameterx*(target: GlEnum; pname: GlEnum; param: GlFixed) {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `GL_TEXTURE_2D`.
  ## pname
  ##   Specifies the symbolic name of a single-valued texture parameter. It can
  ##   be one of the following: `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`, or `GL_GENERATE_MIPMAP`.
  ## param
  ##   Specifies the value of pname.


proc glTexParameteriv*(target: GlEnum; pname: GlEnum; params: ptr GlInt)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `GL_TEXTURE_2D`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`, or `GL_GENERATE_MIPMAP`.
  ## params
  ##   Specifies a pointer to an array where the value or values of pname are
  ##   stored.


proc glTexParameterxv*(target: GlEnum; pname: GlEnum; params: ptr GlFixed)
  {.importc.}
  ## Set texture parameters.
  ##
  ## target
  ##   Specifies the target texture, which must be `GL_TEXTURE_2D`.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. Which can be one of
  ##   the following: `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`, or `GL_GENERATE_MIPMAP`.
  ## params
  ##   Specifies a pointer to an array where the value or values of pname are
  ##   stored.


proc glTexSubImage2D*(target: GlEnum; level: GlInt; xoffset: GlInt;
  yoffset: GlInt; width: GlSizei; height: GlSizei; format: GlEnum;
  pixelType: GlEnum; pixels: ptr GlVoid) {.importc.}
  ## Specify a two-dimensional texture subimage.
  ##
  ## target
  ##   Specifies the target texture. Must be `GL_TEXTURE_2D`.
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
  ##   accepted: `GL_ALPHA`, `GL_RGB`, `GL_RGBA`, `GL_LUMINANCE`, and
  ##   `GL_LUMINANCE_ALPHA`.
  ## pixelType
  ##   Specifies the data type of the pixel data. The following symbolic values
  ##   are accepted: `GL_UNSIGNED_BYTE`, `GL_UNSIGNED_SHORT565`,
  ##   `GL_UNSIGNED_SHORT4444`, and `GL_UNSIGNED_SHORT5551`.
  ## pixels
  ##   Specifies a pointer to the image data in memory.


proc glTranslatex*(x: GlFixed; y: GlFixed; z: GlFixed) {.importc.}
  ## Multiply the current matrix by a translation matrix.
  ##
  ## x, y, z
  ##   Specify the x, y, and z coordinates of a translation vector.


proc glVertexPointer*(size: GlInt; vertexType: GlEnum; stride: GlSizei;
  pointer: ptr GlVoid) {.importc.}
  ## Define an array of vertex coordinates.
  ##
  ## size
  ##   Specifies the number of coordinates per vertex. Must be `2`, `3`, or `4`.
  ##   The initial value is `4`.
  ## vertexType
  ##   Specifies the data type of each vertex coordinate in the array. Symbolic
  ##   constants `GL_BYTE`, `GL_SHORT`, and `GL_FIXED`, are accepted. However,
  ##   the initial value is `GL_FLOAT`. The common profile accepts the symbolic
  ##   constant `GL_FLOAT` as well.
  ## stride
  ##   Specifies the byte offset between consecutive vertices. If stride is `0`,
  ##   the vertices are understood to be tightly packed in the array. The
  ##   initial value is `0`.
  ## pointer
  ##   Specifies a pointer to the first coordinate of the first vertex in the
  ##   array. The initial value is `0`.


proc glViewport*(x: GlInt; y: GlInt; width: GlSizei; height: GlSizei)
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
  proc glPointSizePointerOES*(pointType: GlEnum; stride: GlSizei;
    pointer: ptr GlVoid) {.importc.}
    ## Define an array of point sizes.
    ##
    ## pointType
    ##   Specifies the data type of each point size in the array. Symbolic
    ##   constant `GL_FIXED` is accepted. However, the common profile also
    ##   accepts the symbolic constant `GL_FLOAT`. The initial value is
    ##   `GL_FIXED` for the common lite profile, or `GL_FLOAT` for the common
    ##   profile.
    ## stride
    ##   Specifies the byte offset between consecutive point sizes. If `stride`
    ##   is `0`, the point sizes are understood to be tightly packed in the
    ##   array. The initial value is `0`.
    ## pointer
    ##   Specifies a pointer to the point size of the first vertex in the array.
    ##   The initial value is `0`.

## *gles* - Nim bindings for OpenGL ES, the embedded 3D graphics library.
##
## This file is part of the `Nim I/O <http://nimio.us>`_ package collection.
## See the file LICENSE included in this distribution for licensing details.
## GitHub pull requests are encouraged. (c) 2015 Headcrash Industries LLC.

{.deadCodeElim: on.}


include gles2/gl2


type
  GlHalf* = cushort


const
  GL_READ_BUFFER* = 0x00000C02
  GL_UNPACK_ROW_LENGTH* = 0x00000CF2
  GL_UNPACK_SKIP_ROWS* = 0x00000CF3
  GL_UNPACK_SKIP_PIXELS* = 0x00000CF4
  GL_PACK_ROW_LENGTH* = 0x00000D02
  GL_PACK_SKIP_ROWS* = 0x00000D03
  GL_PACK_SKIP_PIXELS* = 0x00000D04
  GL_COLOR* = 0x00001800
  GL_DEPTH* = 0x00001801
  GL_STENCIL* = 0x00001802
  GL_RED* = 0x00001903
  GL_RGB8* = 0x00008051
  GL_RGBA8* = 0x00008058
  GL_RGB10_A2* = 0x00008059
  GL_TEXTURE_BINDING_3D* = 0x0000806A
  GL_UNPACK_SKIP_IMAGES* = 0x0000806D
  GL_UNPACK_IMAGE_HEIGHT* = 0x0000806E
  GL_TEXTURE_3D* = 0x0000806F
  GL_TEXTURE_WRAP_R* = 0x00008072
  GL_MAX_3D_TEXTURE_SIZE* = 0x00008073
  GL_UNSIGNED_INT_2_10_10_10_REV* = 0x00008368
  GL_MAX_ELEMENTS_VERTICES* = 0x000080E8
  GL_MAX_ELEMENTS_INDICES* = 0x000080E9
  GL_TEXTURE_MIN_LOD* = 0x0000813A
  GL_TEXTURE_MAX_LOD* = 0x0000813B
  GL_TEXTURE_BASE_LEVEL* = 0x0000813C
  GL_TEXTURE_MAX_LEVEL* = 0x0000813D
  GL_MIN* = 0x00008007
  GL_MAX* = 0x00008008
  GL_DEPTH_COMPONENT24* = 0x000081A6
  GL_MAX_TEXTURE_LOD_BIAS* = 0x000084FD
  GL_TEXTURE_COMPARE_MODE* = 0x0000884C
  GL_TEXTURE_COMPARE_FUNC* = 0x0000884D
  GL_CURRENT_QUERY* = 0x00008865
  GL_QUERY_RESULT* = 0x00008866
  GL_QUERY_RESULT_AVAILABLE* = 0x00008867
  GL_BUFFER_MAPPED* = 0x000088BC
  GL_BUFFER_MAP_POINTER* = 0x000088BD
  GL_STREAM_READ* = 0x000088E1
  GL_STREAM_COPY* = 0x000088E2
  GL_STATIC_READ* = 0x000088E5
  GL_STATIC_COPY* = 0x000088E6
  GL_DYNAMIC_READ* = 0x000088E9
  GL_DYNAMIC_COPY* = 0x000088EA
  GL_MAX_DRAW_BUFFERS* = 0x00008824
  GL_DRAW_BUFFER0* = 0x00008825
  GL_DRAW_BUFFER1* = 0x00008826
  GL_DRAW_BUFFER2* = 0x00008827
  GL_DRAW_BUFFER3* = 0x00008828
  GL_DRAW_BUFFER4* = 0x00008829
  GL_DRAW_BUFFER5* = 0x0000882A
  GL_DRAW_BUFFER6* = 0x0000882B
  GL_DRAW_BUFFER7* = 0x0000882C
  GL_DRAW_BUFFER8* = 0x0000882D
  GL_DRAW_BUFFER9* = 0x0000882E
  GL_DRAW_BUFFER10* = 0x0000882F
  GL_DRAW_BUFFER11* = 0x00008830
  GL_DRAW_BUFFER12* = 0x00008831
  GL_DRAW_BUFFER13* = 0x00008832
  GL_DRAW_BUFFER14* = 0x00008833
  GL_DRAW_BUFFER15* = 0x00008834
  GL_MAX_FRAGMENT_UNIFORM_COMPONENTS* = 0x00008B49
  GL_MAX_VERTEX_UNIFORM_COMPONENTS* = 0x00008B4A
  GL_SAMPLER_3D* = 0x00008B5F
  GL_SAMPLER_2D_SHADOW* = 0x00008B62
  GL_FRAGMENT_SHADER_DERIVATIVE_HINT* = 0x00008B8B
  GL_PIXEL_PACK_BUFFER* = 0x000088EB
  GL_PIXEL_UNPACK_BUFFER* = 0x000088EC
  GL_PIXEL_PACK_BUFFER_BINDING* = 0x000088ED
  GL_PIXEL_UNPACK_BUFFER_BINDING* = 0x000088EF
  cGL_FLOAT_MAT2x3* = 0x00008B65
  cGL_FLOAT_MAT2x4* = 0x00008B66
  cGL_FLOAT_MAT3x2* = 0x00008B67
  cGL_FLOAT_MAT3x4* = 0x00008B68
  cGL_FLOAT_MAT4x2* = 0x00008B69
  cGL_FLOAT_MAT4x3* = 0x00008B6A
  GL_SRGB* = 0x00008C40
  GL_SRGB8* = 0x00008C41
  GL_SRGB8_ALPHA8* = 0x00008C43
  GL_COMPARE_REF_TO_TEXTURE* = 0x0000884E
  GL_MAJOR_VERSION* = 0x0000821B
  GL_MINOR_VERSION* = 0x0000821C
  GL_NUM_EXTENSIONS* = 0x0000821D
  GL_RGBA32F* = 0x00008814
  GL_RGB32F* = 0x00008815
  GL_RGBA16F* = 0x0000881A
  GL_RGB16F* = 0x0000881B
  GL_VERTEX_ATTRIB_ARRAY_INTEGER* = 0x000088FD
  GL_MAX_ARRAY_TEXTURE_LAYERS* = 0x000088FF
  GL_MIN_PROGRAM_TEXEL_OFFSET* = 0x00008904
  GL_MAX_PROGRAM_TEXEL_OFFSET* = 0x00008905
  GL_MAX_VARYING_COMPONENTS* = 0x00008B4B
  GL_TEXTURE_2D_ARRAY* = 0x00008C1A
  GL_TEXTURE_BINDING_2D_ARRAY* = 0x00008C1D
  GL_R11F_G11F_B10F* = 0x00008C3A
  GL_UNSIGNED_INT_10F_11F_11F_REV* = 0x00008C3B
  GL_RGB9_E5* = 0x00008C3D
  GL_UNSIGNED_INT_5_9_9_9_REV* = 0x00008C3E
  GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH* = 0x00008C76
  GL_TRANSFORM_FEEDBACK_BUFFER_MODE* = 0x00008C7F
  GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS* = 0x00008C80
  GL_TRANSFORM_FEEDBACK_VARYINGS* = 0x00008C83
  GL_TRANSFORM_FEEDBACK_BUFFER_START* = 0x00008C84
  GL_TRANSFORM_FEEDBACK_BUFFER_SIZE* = 0x00008C85
  GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN* = 0x00008C88
  GL_RASTERIZER_DISCARD* = 0x00008C89
  GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS* = 0x00008C8A
  GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS* = 0x00008C8B
  cGL_INTERLEAVED_ATTRIBS* = 0x00008C8C
  GL_SEPARATE_ATTRIBS* = 0x00008C8D
  GL_TRANSFORM_FEEDBACK_BUFFER* = 0x00008C8E
  GL_TRANSFORM_FEEDBACK_BUFFER_BINDING* = 0x00008C8F
  GL_RGBA32UI* = 0x00008D70
  GL_RGB32UI* = 0x00008D71
  GL_RGBA16UI* = 0x00008D76
  GL_RGB16UI* = 0x00008D77
  GL_RGBA8UI* = 0x00008D7C
  GL_RGB8UI* = 0x00008D7D
  GL_RGBA32I* = 0x00008D82
  GL_RGB32I* = 0x00008D83
  GL_RGBA16I* = 0x00008D88
  GL_RGB16I* = 0x00008D89
  GL_RGBA8I* = 0x00008D8E
  GL_RGB8I* = 0x00008D8F
  GL_RED_INTEGER* = 0x00008D94
  GL_RGB_INTEGER* = 0x00008D98
  GL_RGBA_INTEGER* = 0x00008D99
  GL_SAMPLER_2D_ARRAY* = 0x00008DC1
  GL_SAMPLER_2D_ARRAY_SHADOW* = 0x00008DC4
  GL_SAMPLER_CUBE_SHADOW* = 0x00008DC5
  GL_UNSIGNED_INT_VEC2* = 0x00008DC6
  GL_UNSIGNED_INT_VEC3* = 0x00008DC7
  GL_UNSIGNED_INT_VEC4* = 0x00008DC8
  cGL_INT_SAMPLER_2D* = 0x00008DCA
  cGL_INT_SAMPLER_3D* = 0x00008DCB
  cGL_INT_SAMPLER_CUBE* = 0x00008DCC
  cGL_INT_SAMPLER_2D_ARRAY* = 0x00008DCF
  GL_UNSIGNED_INT_SAMPLER_2D* = 0x00008DD2
  GL_UNSIGNED_INT_SAMPLER_3D* = 0x00008DD3
  GL_UNSIGNED_INT_SAMPLER_CUBE* = 0x00008DD4
  GL_UNSIGNED_INT_SAMPLER_2D_ARRAY* = 0x00008DD7
  GL_BUFFER_ACCESS_FLAGS* = 0x0000911F
  GL_BUFFER_MAP_LENGTH* = 0x00009120
  GL_BUFFER_MAP_OFFSET* = 0x00009121
  GL_DEPTH_COMPONENT32F* = 0x00008CAC
  GL_DEPTH32F_STENCIL8* = 0x00008CAD
  cGL_FLOAT_32_UNSIGNED_INT_24_8_REV* = 0x00008DAD
  GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING* = 0x00008210
  GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE* = 0x00008211
  GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE* = 0x00008212
  GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE* = 0x00008213
  GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE* = 0x00008214
  GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE* = 0x00008215
  GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE* = 0x00008216
  GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE* = 0x00008217
  GL_FRAMEBUFFER_DEFAULT* = 0x00008218
  GL_FRAMEBUFFER_UNDEFINED* = 0x00008219
  GL_DEPTH_STENCIL_ATTACHMENT* = 0x0000821A
  GL_DEPTH_STENCIL* = 0x000084F9
  GL_UNSIGNED_INT_24_8* = 0x000084FA
  GL_DEPTH24_STENCIL8* = 0x000088F0
  GL_UNSIGNED_NORMALIZED* = 0x00008C17
  GL_DRAW_FRAMEBUFFER_BINDING* = 0x00008CA6
  GL_READ_FRAMEBUFFER* = 0x00008CA8
  GL_DRAW_FRAMEBUFFER* = 0x00008CA9
  GL_READ_FRAMEBUFFER_BINDING* = 0x00008CAA
  GL_RENDERBUFFER_SAMPLES* = 0x00008CAB
  GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER* = 0x00008CD4
  GL_MAX_COLOR_ATTACHMENTS* = 0x00008CDF
  GL_COLOR_ATTACHMENT1* = 0x00008CE1
  GL_COLOR_ATTACHMENT2* = 0x00008CE2
  GL_COLOR_ATTACHMENT3* = 0x00008CE3
  GL_COLOR_ATTACHMENT4* = 0x00008CE4
  GL_COLOR_ATTACHMENT5* = 0x00008CE5
  GL_COLOR_ATTACHMENT6* = 0x00008CE6
  GL_COLOR_ATTACHMENT7* = 0x00008CE7
  GL_COLOR_ATTACHMENT8* = 0x00008CE8
  GL_COLOR_ATTACHMENT9* = 0x00008CE9
  GL_COLOR_ATTACHMENT10* = 0x00008CEA
  GL_COLOR_ATTACHMENT11* = 0x00008CEB
  GL_COLOR_ATTACHMENT12* = 0x00008CEC
  GL_COLOR_ATTACHMENT13* = 0x00008CED
  GL_COLOR_ATTACHMENT14* = 0x00008CEE
  GL_COLOR_ATTACHMENT15* = 0x00008CEF
  GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE* = 0x00008D56
  GL_MAX_SAMPLES* = 0x00008D57
  GL_HALF_FLOAT* = 0x0000140B
  GL_MAP_READ_BIT* = 0x00000001
  GL_MAP_WRITE_BIT* = 0x00000002
  GL_MAP_INVALIDATE_RANGE_BIT* = 0x00000004
  GL_MAP_INVALIDATE_BUFFER_BIT* = 0x00000008
  GL_MAP_FLUSH_EXPLICIT_BIT* = 0x00000010
  GL_MAP_UNSYNCHRONIZED_BIT* = 0x00000020
  GL_RG* = 0x00008227
  GL_RG_INTEGER* = 0x00008228
  GL_R8* = 0x00008229
  GL_RG8* = 0x0000822B
  GL_R16F* = 0x0000822D
  GL_R32F* = 0x0000822E
  GL_RG16F* = 0x0000822F
  GL_RG32F* = 0x00008230
  GL_R8I* = 0x00008231
  GL_R8UI* = 0x00008232
  GL_R16I* = 0x00008233
  GL_R16UI* = 0x00008234
  GL_R32I* = 0x00008235
  GL_R32UI* = 0x00008236
  GL_RG8I* = 0x00008237
  GL_RG8UI* = 0x00008238
  GL_RG16I* = 0x00008239
  GL_RG16UI* = 0x0000823A
  GL_RG32I* = 0x0000823B
  GL_RG32UI* = 0x0000823C
  GL_VERTEX_ARRAY_BINDING* = 0x000085B5
  GL_R8_SNORM* = 0x00008F94
  GL_RG8_SNORM* = 0x00008F95
  GL_RGB8_SNORM* = 0x00008F96
  GL_RGBA8_SNORM* = 0x00008F97
  GL_SIGNED_NORMALIZED* = 0x00008F9C
  GL_PRIMITIVE_RESTART_FIXED_INDEX* = 0x00008D69
  GL_COPY_READ_BUFFER* = 0x00008F36
  GL_COPY_WRITE_BUFFER* = 0x00008F37
  GL_COPY_READ_BUFFER_BINDING* = 0x00008F36
  GL_COPY_WRITE_BUFFER_BINDING* = 0x00008F37
  GL_UNIFORM_BUFFER* = 0x00008A11
  GL_UNIFORM_BUFFER_BINDING* = 0x00008A28
  GL_UNIFORM_BUFFER_START* = 0x00008A29
  GL_UNIFORM_BUFFER_SIZE* = 0x00008A2A
  GL_MAX_VERTEX_UNIFORM_BLOCKS* = 0x00008A2B
  GL_MAX_FRAGMENT_UNIFORM_BLOCKS* = 0x00008A2D
  GL_MAX_COMBINED_UNIFORM_BLOCKS* = 0x00008A2E
  GL_MAX_UNIFORM_BUFFER_BINDINGS* = 0x00008A2F
  GL_MAX_UNIFORM_BLOCK_SIZE* = 0x00008A30
  GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS* = 0x00008A31
  GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS* = 0x00008A33
  GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT* = 0x00008A34
  GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH* = 0x00008A35
  GL_ACTIVE_UNIFORM_BLOCKS* = 0x00008A36
  GL_UNIFORM_TYPE* = 0x00008A37
  GL_UNIFORM_SIZE* = 0x00008A38
  GL_UNIFORM_NAME_LENGTH* = 0x00008A39
  GL_UNIFORM_BLOCK_INDEX* = 0x00008A3A
  GL_UNIFORM_OFFSET* = 0x00008A3B
  GL_UNIFORM_ARRAY_STRIDE* = 0x00008A3C
  GL_UNIFORM_MATRIX_STRIDE* = 0x00008A3D
  GL_UNIFORM_IS_ROW_MAJOR* = 0x00008A3E
  GL_UNIFORM_BLOCK_BINDING* = 0x00008A3F
  GL_UNIFORM_BLOCK_DATA_SIZE* = 0x00008A40
  GL_UNIFORM_BLOCK_NAME_LENGTH* = 0x00008A41
  GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS* = 0x00008A42
  GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES* = 0x00008A43
  GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER* = 0x00008A44
  GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER* = 0x00008A46
  GL_INVALID_INDEX* = 0xFFFFFFFF
  GL_MAX_VERTEX_OUTPUT_COMPONENTS* = 0x00009122
  GL_MAX_FRAGMENT_INPUT_COMPONENTS* = 0x00009125
  GL_MAX_SERVER_WAIT_TIMEOUT* = 0x00009111
  GL_OBJECT_TYPE* = 0x00009112
  GL_SYNC_CONDITION* = 0x00009113
  GL_SYNC_STATUS* = 0x00009114
  GL_SYNC_FLAGS* = 0x00009115
  GL_SYNC_FENCE* = 0x00009116
  GL_SYNC_GPU_COMMANDS_COMPLETE* = 0x00009117
  GL_UNSIGNALED* = 0x00009118
  GL_SIGNALED* = 0x00009119
  GL_ALREADY_SIGNALED* = 0x0000911A
  GL_TIMEOUT_EXPIRED* = 0x0000911B
  GL_CONDITION_SATISFIED* = 0x0000911C
  GL_WAIT_FAILED* = 0x0000911D
  GL_SYNC_FLUSH_COMMANDS_BIT* = 0x00000001
  GL_TIMEOUT_IGNORED* = 0xFFFFFFFFFFFFFFFF'i64
  GL_VERTEX_ATTRIB_ARRAY_DIVISOR* = 0x000088FE
  GL_ANY_SAMPLES_PASSED* = 0x00008C2F
  GL_ANY_SAMPLES_PASSED_CONSERVATIVE* = 0x00008D6A
  GL_SAMPLER_BINDING* = 0x00008919
  GL_RGB10_A2UI* = 0x0000906F
  GL_TEXTURE_SWIZZLE_R* = 0x00008E42
  GL_TEXTURE_SWIZZLE_G* = 0x00008E43
  GL_TEXTURE_SWIZZLE_B* = 0x00008E44
  GL_TEXTURE_SWIZZLE_A* = 0x00008E45
  GL_GREEN* = 0x00001904
  GL_BLUE* = 0x00001905
  cGL_INT_2_10_10_10_REV* = 0x00008D9F
  GL_TRANSFORM_FEEDBACK* = 0x00008E22
  GL_TRANSFORM_FEEDBACK_PAUSED* = 0x00008E23
  GL_TRANSFORM_FEEDBACK_ACTIVE* = 0x00008E24
  GL_TRANSFORM_FEEDBACK_BINDING* = 0x00008E25
  GL_PROGRAM_BINARY_RETRIEVABLE_HINT* = 0x00008257
  GL_PROGRAM_BINARY_LENGTH* = 0x00008741
  GL_NUM_PROGRAM_BINARY_FORMATS* = 0x000087FE
  GL_PROGRAM_BINARY_FORMATS* = 0x000087FF
  GL_COMPRESSED_R11_EAC* = 0x00009270
  GL_COMPRESSED_SIGNED_R11_EAC* = 0x00009271
  GL_COMPRESSED_RG11_EAC* = 0x00009272
  GL_COMPRESSED_SIGNED_RG11_EAC* = 0x00009273
  GL_COMPRESSED_RGB8_ETC2* = 0x00009274
  GL_COMPRESSED_SRGB8_ETC2* = 0x00009275
  GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2* = 0x00009276
  GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2* = 0x00009277
  GL_COMPRESSED_RGBA8_ETC2_EAC* = 0x00009278
  GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC* = 0x00009279
  GL_TEXTURE_IMMUTABLE_FORMAT* = 0x0000912F
  GL_MAX_ELEMENT_INDEX* = 0x00008D6B
  GL_NUM_SAMPLE_COUNTS* = 0x00009380
  GL_TEXTURE_IMMUTABLE_LEVELS* = 0x000082DF


proc glReadBuffer*(src: GlEnum) {.importc.}
  ## Select a color buffer source for pixels.
  ##
  ## src
  ##   Specifies a color buffer. Accepted values are `GL_BACK`, `GL_NONE`, and
  ##   `GL_COLOR_ATTACHMENT`i.


proc glDrawRangeElements*(mode: GlEnum; start: GlUint; `end`: GlUint;
  count: GlSizei; indexType: GlEnum; indices: pointer)  {.importc.}
  ## Render primitives from array data.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `GL_POINTS`, `GL_LINE_STRIP`, `GL_LINE_LOOP`, `GL_LINES`,
  ##   `GL_TRIANGLE_STRIP`, `GL_TRIANGLE_FAN` and `GL_TRIANGLES` are accepted.
  ## start
  ##   Specifies the minimum array index contained in indices.
  ## end
  ##   Specifies the maximum array index contained in indices.
  ## count
  ##   Specifies the number of elements to be rendered.
  ## indexType
  ##   Specifies the type of the values in indices. Must be one of
  ##   `GL_UNSIGNED_BYTE`, `GL_UNSIGNED_SHORT`, or `GL_UNSIGNED_INT`.
  ## indices
  ##   Specifies a byte offset (cast to a pointer type) into the buffer bound to
  ##   `GL_ELEMENT_ARRAY_BUFFER` to start reading indices from. If no buffer is
  ##   bound, specifies a pointer to the location where the indices are stored.


proc glTexImage3D*(target: GlEnum; level: GlInt; internalformat: GlInt;
  width: GlSizei; height: GlSizei; depth: GlSizei; border: GlInt;
  format: GlEnum; pixelType: GlEnum; pixels: pointer) {.importc.}
  ## Specify a three-dimensional texture image.
  ##
  ## target
  ##   Specifies the target texture. Must be one of `GL_TEXTURE3D` or
  ##   `GL_TEXTURE_2D_ARRAY`.
  ## level
  ##   Specifies the level-of-detail number. Level 0 is the base image level.
  ##   Level n is the `n`th mipmap reduction image.
  ## internalFormat
  ##   Specifies the number of color components in the texture. Must be one of
  ##   base internal formats, or one of the sized internal formats (see the
  ##   official OpenGL ES 3 documentation for details).
  ## width
  ##   Specifies the width of the texture image. All implementations support 3D
  ##   texture images that are at least 256 texels wide.
  ## height
  ##   Specifies the height of the texture image. All implementations support 3D
  ##   texture images that are at least 256 texels high.
  ## depth
  ##   Specifies the depth of the texture image, or the number of layers in a
  ##   texture array. All implementations support 3D texture images that are at
  ##   least 256 texels deep, and texture arrays that are at least 256 layers
  ##   deep.
  ## border
  ##   This value must be `0`.
  ## format
  ##   Specifies the format of the pixel data. The following symbolic values are
  ##   accepted: `GL_RED`, `GL_RED_INTEGER`, `GL_RG`, `GL_RG_INTEGER`, `GL_RGB`,
  ##   `GL_RGB_INTEGER`, `GL_RGBA`, `GL_RGBA_INTEGER`, `GL_DEPTH_COMPONENT`,
  ##   `GL_DEPTH_STENCIL`, `GL_LUMINANCE_ALPHA`, `GL_LUMINANCE`, and `GL_ALPHA`.
  ## pixelType
  ##   Specifies the data type of the pixel data. The following symbolic values
  ##   are accepted: `GL_UNSIGNED_BYTE`, `cGL_BYTE`, `GL_UNSIGNED_SHORT`,
  ##   `cGL_SHORT`, `GL_UNSIGNED_INT`, `cGL_INT`, `GL_HALF_FLOAT`, `cGL_FLOAT`,
  ##   `GL_UNSIGNED_SHORT_5_6_5`, `GL_UNSIGNED_SHORT_4_4_4_4`,
  ##   `GL_UNSIGNED_SHORT_5_5_5_1`, `GL_UNSIGNED_INT_2_10_10_10_REV`,
  ##   `GL_UNSIGNED_INT_10F_11F_11F_REV`, `GL_UNSIGNED_INT_5_9_9_9_REV`,
  ##   `GL_UNSIGNED_INT_24_8` and `cGL_FLOAT_32_UNSIGNED_INT_24_8_REV`.
  ## data
  ##   Specifies a pointer to the image data in memory.


proc glTexSubImage3D*(target: GlEnum; level: GlInt; xoffset: GlInt;
  yoffset: GlInt; zoffset: GlInt; width: GlSizei; height: GlSizei;
  depth: GlSizei; format: GlEnum; pixelType: GlEnum; pixels: pointer)
  {.importc.}
  ## Specify a three-dimensional texture subimage.
  ##
  ## target
  ##   Specifies the target texture. Must be `GL_TEXTURE3D` or
  ##   `GL_TEXTURE_2D_ARRAY`.
  ## level
  ##   Specifies the level-of-detail number. Level 0 is the base image level.
  ##   Level n is the `n`th mipmap reduction image.
  ## xoffset
  ##   Specifies a texel offset in the x direction within the texture array.
  ## yoffset
  ##   Specifies a texel offset in the y direction within the texture array.
  ## zoffset
  ##   Specifies a texel offset in the z direction within the texture array.
  ## width
  ##   Specifies the width of the texture subimage.
  ## height
  ##   Specifies the height of the texture subimage.
  ## depth
  ##   Specifies the depth of the texture subimage.
  ## format
  ##   Specifies the format of the pixel data. The following symbolic values are
  ##   accepted: `GL_RED`, `GL_RED_INTEGER`, `GL_RG`, `GL_RG_INTEGER`, `GL_RGB`,
  ##   `GL_RGB_INTEGER`, `GL_RGBA`, `GL_RGBA_INTEGER`, `GL_DEPTH_COMPONENT`,
  ##   `GL_DEPTH_STENCIL`, `GL_LUMINANCE_ALPHA`, `GL_LUMINANCE`, and `GL_ALPHA`.
  ## pixelType
  ##   Specifies the data type of the pixel data. The following symbolic values
  ##   are accepted: `GL_UNSIGNED_BYTE`, `cGL_BYTE`, `GL_UNSIGNED_SHORT`,
  ##   `cGL_SHORT`, `GL_UNSIGNED_INT`, `cGL_INT`, `GL_HALF_FLOAT`, `cGL_FLOAT`,
  ##   `GL_UNSIGNED_SHORT_5_6_5`, `GL_UNSIGNED_SHORT_4_4_4_4`,
  ##   `GL_UNSIGNED_SHORT_5_5_5_1`, `GL_UNSIGNED_INT_2_10_10_10_REV`,
  ##   `GL_UNSIGNED_INT_10F_11F_11F_REV`, `GL_UNSIGNED_INT_5_9_9_9_REV`,
  ##   `GL_UNSIGNED_INT_24_8`, and `cGL_FLOAT_32_UNSIGNED_INT_24_8_REV`.
  ## data
  ##   Specifies a pointer to the image data in memory.

proc glCopyTexSubImage3D*(target: GlEnum; level: GlInt; xoffset: GlInt;
  yoffset: GlInt; zoffset: GlInt; x: GlInt; y: GlInt; width: GlSizei;
  height: GlSizei) {.importc.}
  ## Copy a three-dimensional texture subimage.
  ##
  ## target
  ##   Specifies the target texture. Must be `GL_TEXTURE3D` or
  ##   `GL_TEXTURE_2D_ARRAY`.
  ## level
  ##   Specifies the level-of-detail number. Level 0 is the base image level.
  ##   Level n is the nth mipmap reduction image.
  ## xoffset
  ##   Specifies a texel offset in the x direction within the texture array.
  ## yoffset
  ##   Specifies a texel offset in the y direction within the texture array.
  ## zoffset
  ##   Specifies a texel offset in the z direction within the texture array.
  ## x, y
  ##   Specify the window coordinates of the lower left corner of the
  ##   rectangular region of pixels to be copied.
  ## width
  ##   Specifies the width of the texture subimage.
  ## height
  ##   Specifies the height of the texture subimage.


proc glCompressedTexImage3D*(target: GlEnum; level: GlInt;
  internalformat: GlEnum; width: GlSizei; height: GlSizei; depth: GlSizei;
  border: GlInt; imageSize: GlSizei; data: pointer) {.importc.}
  ## Specify a three-dimensional texture image in a compressed format.
  ##
  ## target
  ##   Specifies the target texture. Must be `GL_TEXTURE3D` or
  ##   `GL_TEXTURE_2D_ARRAY`.
  ## level
  ##   Specifies the level-of-detail number. Level 0 is the base image level.
  ##   Level n is the `n`th mipmap reduction image.
  ## internalformat
  ##   Specifies the format of the compressed image data stored at address data.
  ## width
  ##   Specifies the width of the texture image.
  ## height
  ##   Specifies the height of the texture image.
  ## depth
  ##   Specifies the depth of the texture image.
  ## border
  ##   This value must be `0`.
  ## imageSize
  ##   Specifies the number of unsigned bytes of image data starting at the
  ##   address specified by data.
  ## data
  ##   Specifies a pointer to the compressed image data in memory.


proc glCompressedTexSubImage3D*(target: GlEnum; level: GlInt; xoffset: GlInt;
  yoffset: GlInt; zoffset: GlInt; width: GlSizei; height: GlSizei;
  depth: GlSizei; format: GlEnum; imageSize: GlSizei; data: pointer) {.importc.}
  ## Specify a three-dimensional texture subimage in a compressed format.
  ##
  ## target
  ##   Specifies the target texture. Must be `GL_TEXTURE3D` or
  ##   `GL_TEXTURE_2D_ARRAY`.
  ## level
  ##   Specifies the level-of-detail number. Level 0 is the base image level.
  ##   Level n is the `n`th mipmap reduction image.
  ## xoffset
  ##   Specifies a texel offset in the x direction within the texture array.
  ## yoffset
  ##   Specifies a texel offset in the y direction within the texture array.
  ## zoffset
  ##   Specifies a texel offset in the z direction within the texture array.
  ## width
  ##   Specifies the width of the texture subimage.
  ## height
  ##   Specifies the height of the texture subimage.
  ## depth
  ##   Specifies the depth of the texture subimage.
  ## format
  ##   Specifies the format of the compressed image data stored at address data.
  ## imageSize
  ##   Specifies the number of unsigned bytes of image data starting at the
  ##   address specified by data.
  ## data
  ##   Specifies a pointer to the compressed image data in memory.


proc glGenQueries*(n: GlSizei; ids: ptr GlUint) {.importc.}
  ## Generate query object names.
  ##
  ## n
  ##   Specifies the number of query object names to be generated.
  ## ids
  ##   Specifies an array in which the generated query object names are stored.


proc glDeleteQueries*(n: GlSizei; ids: ptr GlUint) {.importc.}
  ## Delete named query objects.
  ##
  ## n
  ##   Specifies the number of query objects to be deleted.
  ## ids
  ##   Specifies an array of query objects to be deleted.


proc glIsQuery*(id: GlUint): GlBoolean {.importc.}
  ## Determine if a name corresponds to a query object.
  ##
  ## id
  ##   Specifies a value that may be the name of a query object.


proc glBeginQuery*(target: GlEnum; id: GlUint) {.importc.}
  ## Delimit the boundaries of a query object.
  ##
  ## target
  ##   Specifies the target type of query object established between
  ##   `glBeginQuery <#glBeginQuery>`_ and the subsequent
  ##   `glEndQuery <#glEndQuery>`_. The symbolic constant must be one of
  ##   `GL_ANY_SAMPLES_PASSED`, `GL_ANY_SAMPLES_PASSED_CONSERVATIVE`, or
  ##   `GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN`.
  ## id
  ##   Specifies the name of a query object.


proc glEndQuery*(target: GlEnum) {.importc.}
  ## Delimit the boundaries of a query object.
  ##
  ## target
  ##   Specifies the target type of query object established between
  ##   `glBeginQuery <#glBeginQuery>`_ and the subsequent
  ##   `glEndQuery <#glEndQuery>`_. The symbolic constant must be one of
  ##   `GL_ANY_SAMPLES_PASSED`, `GL_ANY_SAMPLES_PASSED_CONSERVATIVE`, or
  ##   `GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN`.
  ## id
  ##   Specifies the name of a query object.


proc glGetQueryiv*(target: GlEnum; pname: GlEnum; params: ptr GlInt) {.importc.}
  ## Return parameters of a query object target.
  ##
  ## target
  ##   Specifies a query object target. Must be `GL_ANY_SAMPLES_PASSED`,
  ##   `GL_ANY_SAMPLES_PASSED_CONSERVATIVE` or
  ##   `GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN`.
  ## pname
  ##   Specifies the symbolic name of a query object target parameter. Must be
  ##   `GL_CURRENT_QUERY`.
  ## params
  ##   Returns the requested data.


proc glGetQueryObjectuiv*(id: GlUint; pname: GlEnum; params: ptr GlUint)
  {.importc.}
  ## Return parameters of a query object.
  ##
  ## id
  ##   Specifies the name of a query object.
  ## pname
  ##   Specifies the symbolic name of a query object parameter. Accepted values
  ##   are `GL_QUERY_RESULT` or `GL_QUERY_RESULT_AVAILABLE`.
  ## params
  ##   Returns the requested data.


proc glUnmapBuffer*(target: GlEnum): GlBoolean {.importc.}
  ## Unmap a buffer object's data store.
  ##
  ## target
  ##   Specifies a binding to which the target buffer is bound.


proc glGetBufferPointerv*(target: GlEnum; pname: GlEnum; params: ptr pointer)
  {.importc.}
  ## Return the pointer to a mapped buffer object's data store.
  ##
  ## target
  ##   Specifies the target buffer object. The symbolic constant must be
  ##   `GL_ARRAY_BUFFER`, `GL_COPY_READ_BUFFER`, `GL_COPY_WRITE_BUFFER`,
  ##   `GL_ELEMENT_ARRAY_BUFFER`, `GL_PIXEL_PACK_BUFFER`,
  ##   `GL_PIXEL_UNPACK_BUFFER`, `GL_TRANSFORM_FEEDBACK_BUFFER`, or
  ##   `GL_UNIFORM_BUFFER`.
  ## pname
  ##   Specifies the pointer to be returned. The symbolic constant must be
  ##   `GL_BUFFER_MAP_POINTER`.
  ## params
  ##   Returns the pointer value specified by pname.


proc glDrawBuffers*(n: GlSizei; bufs: ptr GlEnum) {.importc.}
  ## Specifies a list of color buffers to be drawn into.
  ##
  ## n
  ##   Specifies the number of buffers in bufs.
  ## bufs
  ##   Points to an array of symbolic constants specifying the buffers into
  ##   which fragment colors or data values will be written.


proc glUniformMatrix2x3fv*(location: GlInt; count: GlSizei;
  transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glUniformMatrix3x2fv*(location: GlInt; count: GlSizei;
  transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glUniformMatrix2x4fv*(location: GlInt; count: GlSizei;
  transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glUniformMatrix4x2fv*(location: GlInt; count: GlSizei;
  transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glUniformMatrix3x4fv*(location: GlInt; count: GlSizei;
  transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glUniformMatrix4x3fv*(location: GlInt; count: GlSizei;
  transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glBlitFramebuffer*(srcX0: GlInt; srcY0: GlInt; srcX1: GlInt; srcY1: GlInt;
  dstX0: GlInt; dstY0: GlInt; dstX1: GlInt; dstY1: GlInt; mask: GlBitfield;
  filter: GlEnum) {.importc.}
  ## Copy a block of pixels from the read framebuffer to the draw framebuffer.
  ##
  ## srcX0, srcY0, srcX1, srcY1
  ##   Specify the bounds of the source rectangle within the read buffer of the
  ##   read framebuffer.
  ## dstX0, dstY0, dstX1, dstY1
  ##   Specify the bounds of the destination rectangle within the write buffer
  ##   of the write framebuffer.
  ## mask
  ##   The bitwise OR of the flags indicating which buffers are to be copied.
  ##   The allowed flags are `GL_COLOR_BUFFER_BIT`, `GL_DEPTH_BUFFER_BIT` and
  ##   `GL_STENCIL_BUFFER_BIT`.
  ## filter
  ##   Specifies the interpolation to be applied if the image is stretched. Must
  ##   be `GL_NEAREST` or `GL_LINEAR`.


proc glRenderbufferStorageMultisample*(target: GlEnum; samples: GlSizei;
  internalformat: GlEnum; width: GlSizei; height: GlSizei) {.importc.}
  ## Establish data storage, format, dimensions and sample count of a
  ## renderbuffer object's image.
  ##
  ## target
  ##   Specifies a binding to which the target of the allocation and must be
  ##   `GL_RENDERBUFFER`.
  ## samples
  ##   Specifies the number of samples to be used for the renderbuffer object's
  ##   storage.
  ## internalformat
  ##   Specifies the internal format to use for the renderbuffer object's image.
  ## width
  ##   Specifies the width of the renderbuffer, in pixels.
  ## height
  ##   Specifies the height of the renderbuffer, in pixels.


proc glFramebufferTextureLayer*(target: GlEnum; attachment: GlEnum;
  texture: GlUint; level: GlInt; layer: GlInt) {.importc.}
  ## Attach a single layer of a texture to a framebuffer.
  ##
  ## target
  ##   Specifies the framebuffer target. target must be `GL_DRAW_FRAMEBUFFER`,
  ##   `GL_READ_FRAMEBUFFER`, or `GL_FRAMEBUFFER`. `GL_FRAMEBUFFER` is
  ##   equivalent to `GL_DRAW_FRAMEBUFFER`.
  ## attachment
  ##   Specifies the attachment point of the framebuffer. `attachment` must be
  ##   `GL_COLOR_ATTACHMENT`i, `GL_DEPTH_ATTACHMENT`, `GL_STENCIL_ATTACHMENT` or
  ##   `GL_DEPTH_STENCIL_ATTACHMENT`.
  ## texture
  ##   Specifies the texture object to attach to the framebuffer attachment
  ##   point named by attachment.
  ## level
  ##   Specifies the mipmap level of texture to attach.
  ## layer
  ##   Specifies the layer of texture to attach.


proc glMapBufferRange*(target: GlEnum; offset: GlIntptr; length: GlSizeiptr;
  access: GlBitfield): pointer {.importc.}
  ## Map a section of a buffer object's data store.
  ##
  ## target
  ##   Specifies a binding to which the target buffer is bound.
  ## offset
  ##   Specifies the starting offset within the buffer of the range to be mapped.
  ## length
  ##   Specifies the length of the range to be mapped.
  ## access
  ##   Specifies a combination of access flags indicating the desired access to
  ##   the range.


proc glFlushMappedBufferRange*(target: GlEnum; offset: GlIntptr;
  length: GlSizeiptr) {.importc.}
  ## Indicate modifications to a range of a mapped buffer.
  ##
  ## target
  ##   Specifies the target of the flush operation. target must be
  ##   `GL_ARRAY_BUFFER`, `GL_COPY_READ_BUFFER`, `GL_COPY_WRITE_BUFFER`,
  ##   `GL_ELEMENT_ARRAY_BUFFER`, `GL_PIXEL_PACK_BUFFER`,
  ##   `GL_PIXEL_UNPACK_BUFFER`, `GL_TRANSFORM_FEEDBACK_BUFFER`, or
  ##   `GL_UNIFORM_BUFFER`.
  ## offset
  ##   Specifies the start of the buffer subrange, in basic machine units.
  ## length
  ##   Specifies the length of the buffer subrange, in basic machine units.


proc glBindVertexArray*(array: GlUint) {.importc.}
  ## Bind a vertex array object.
  ##
  ## array
  ##   Specifies the name of the vertex array to bind.


proc glDeleteVertexArrays*(n: GlSizei; arrays: ptr GlUint) {.importc.}
  ## Delete vertex array objects.
  ##
  ## n
  ##   Specifies the number of vertex array objects to be deleted.
  ## arrays
  ##   Specifies the address of an array containing the n names of the objects
  ##   to be deleted.


proc glGenVertexArrays*(n: GlSizei; arrays: ptr GlUint) {.importc.}
  ## Generate vertex array object names.
  ##
  ## n
  ##   Specifies the number of vertex array object names to generate.
  ## arrays
  ##   Specifies an array in which the generated vertex array object names are
  ##   stored.


proc glIsVertexArray*(array: GlUint): GlBoolean {.importc.}
  ## Determine if a name corresponds to a vertex array object.
  ##
  ## array
  ##   Specifies a value that may be the name of a vertex array object.


proc glGetIntegeriv*(target: GlEnum; index: GlUint; data: ptr GlInt)
  {.importc: "glGetIntegeri_v".}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. The symbolic constants in
  ##   the list below are accepted.
  ## target
  ##   Specifies the parameter value to be returned for indexed versions of
  ##   `glGet`. See the official OpenGL ES 3.0 documentation for alist of
  ##   accepted symbolic constants.
  ## index
  ##   Specifies the index of the particular element being queried.
  ## data
  ##   Returns the value or values of the specified parameter.


proc glBeginTransformFeedback*(primitiveMode: GlEnum) {.importc.}
  ## Start transform feedback operation.
  ##
  ## primitiveMode
  ##   Specify the output type of the primitives that will be recorded into the
  ##   buffer objects that are bound for transform feedback.


proc glEndTransformFeedback*() {.importc.}
  ## End transform feedback operation.


proc glBindBufferRange*(target: GlEnum; index: GlUint; buffer: GlUint;
  offset: GlIntptr; size: GlSizeiptr) {.importc.}
  ## Bind a range within a buffer object to an indexed buffer target.
  ##
  ## target
  ##   Specify the target of the bind operation. `target` must be either
  ##   `GL_TRANSFORM_FEEDBACK_BUFFER` or `GL_UNIFORM_BUFFER`.
  ## index
  ##   Specify the index of the binding point within the array specified by
  ##   target.
  ## buffer
  ##   The name of a buffer object to bind to the specified binding point.
  ## offset
  ##   The starting offset in basic machine units into the buffer object buffer.
  ## size
  ##   The amount of data in machine units that can be read from the buffet
  ##   object while used as an indexed target.


proc glBindBufferBase*(target: GlEnum; index: GlUint; buffer: GlUint)
  {.importc.}
  ## Bind a buffer object to an indexed buffer target.
  ##
  ## target
  ##   Specify the target of the bind operation. `target` must be either
  ##   `GL_TRANSFORM_FEEDBACK_BUFFER` or `GL_UNIFORM_BUFFER`.
  ## index
  ##   Specify the index of the binding point within the array specified by
  ##   `target`.
  ## buffer
  ##   The name of a buffer object to bind to the specified binding point.


proc glTransformFeedbackVaryings*(program: GlUint; count: GlSizei;
  varyings: ptr ptr GLchar; bufferMode: GlEnum) {.importc.}
  ## Specify values to record in transform feedback buffers.
  ##
  ## program
  ##   The name of the target program object.
  ## count
  ##   The number of varying variables used for transform feedback.
  ## varyings
  ##   An array of count zero-terminated strings specifying the names of the
  ##   varying variables to use for transform feedback.
  ## bufferMode
  ##    Identifies the mode used to capture the varying variables when transform
  ##    feedback is active. bufferMode must be `cGL_INTERLEAVED_ATTRIBS` or
  ##    `GL_SEPARATE_ATTRIBS`.


proc glGetTransformFeedbackVarying*(program: GlUint; index: GlUint;
  bufSize: GlSizei; length: ptr GlSizei; size: ptr GlSizei;
  varyingTypePtr: ptr GlEnum; name: ptr GLchar) {.importc.}
  ## Retrieve information about varying variables selected for transform
  ## feedback.
  ##
  ## program
  ##   The name of the target program object.
  ## index
  ##   The index of the varying variable whose information to retrieve.
  ## bufSize
  ##   The maximum number of characters, including the null terminator, that may
  ##   be written into name.
  ## length
  ##   The address of a variable which will receive the number of characters
  ##   written into name, excluding the null-terminator. If `length` is `nil`,
  ##   no length is returned.
  ## size
  ##   The address of a variable that will receive the size of the varying.
  ## varyingTypePtr
  ##   The address of a variable that will recieve the type of the varying.
  ## name
  ##   The address of a buffer into which will be written the name of the
  ##   varying.


proc glVertexAttribIPointer*(index: GlUint; size: GlInt; componentType: GlEnum;
  stride: GlSizei; pointer: pointer) {.importc.}
  ## Define an array of generic vertex attribute data.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## size
  ##   Specifies the number of components per generic vertex attribute. Must be
  ##   `1`, `2`, `3`, `4`. The initial value is `4`.
  ## componentType
  ##   Specifies the data type of each component in the array. The symbolic
  ##   constants `cGL_BYTE`, `GL_UNSIGNED_BYTE`, `cGL_SHORT`,
  ##   `GL_UNSIGNED_SHORT`, `cGL_INT`, and `GL_UNSIGNED_INT` are accepted by
  ##   both functions. Additionally `GL_HALF_FLOAT`, `cGL_FLOAT`, `cGL_FIXED`,
  ##   `cGL_INT_2_10_10_10_REV`, and `GL_UNSIGNED_INT_2_10_10_10_REV` are
  ##   accepted by `glVertexAttribPointer`. The initial value is `cGL_FLOAT`.
  ## normalized
  ##   For `glVertexAttribPointer`, specifies whether fixed-point data values
  ##   should be normalized (`GL_TRUE`) or converted directly as fixed-point
  ##   values (`GL_FALSE`) when they are accessed. This parameter is ignored if
  ##   `componentType` is `cGL_FIXED`.
  ## stride
  ##   Specifies the byte offset between consecutive generic vertex attributes.
  ##   If stride is `0`, the generic vertex attributes are understood to be
  ##   tightly packed in the array. The initial value is `0`.
  ## pointer
  ##   Specifies a pointer to the first generic vertex attribute in the array.
  ##   If a non-zero buffer is currently bound to the `GL_ARRAY_BUFFER` target,
  ##   pointer specifies an offset of into the array in the data store of that
  ##   buffer. The initial value is `0`.


proc glGetVertexAttribIiv*(index: GlUint; pname: GlEnum; params: ptr GlInt)
  {.importc.}
  ## Return a generic vertex attribute parameter.
  ##
  ## index
  ##   Specifies the generic vertex attribute parameter to be queried.
  ## pname
  ##   Specifies the symbolic name of the vertex attribute parameter to be
  ##   queried. Accepted values are `GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING`,
  ##   `GL_VERTEX_ATTRIB_ARRAY_ENABLED`, `GL_VERTEX_ATTRIB_ARRAY_SIZE`,
  ##   `GL_VERTEX_ATTRIB_ARRAY_STRIDE`, `GL_VERTEX_ATTRIB_ARRAY_TYPE`,
  ##   `GL_VERTEX_ATTRIB_ARRAY_NORMALIZED`, `GL_VERTEX_ATTRIB_ARRAY_INTEGER`,
  ##   `GL_VERTEX_ATTRIB_ARRAY_DIVISOR`, or `GL_CURRENT_VERTEX_ATTRIB`.
  ## params
  ##   Returns the requested data.


proc glGetVertexAttribIuiv*(index: GlUint; pname: GlEnum; params: ptr GlUint)
  {.importc.}
  ## Return a generic vertex attribute parameter.
  ##
  ## index
  ##   Specifies the generic vertex attribute parameter to be queried.
  ## pname
  ##   Specifies the symbolic name of the vertex attribute parameter to be
  ##   queried. Accepted values are `GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING`,
  ##   `GL_VERTEX_ATTRIB_ARRAY_ENABLED`, `GL_VERTEX_ATTRIB_ARRAY_SIZE`,
  ##   `GL_VERTEX_ATTRIB_ARRAY_STRIDE`, `GL_VERTEX_ATTRIB_ARRAY_TYPE`,
  ##   `GL_VERTEX_ATTRIB_ARRAY_NORMALIZED`, `GL_VERTEX_ATTRIB_ARRAY_INTEGER`,
  ##   `GL_VERTEX_ATTRIB_ARRAY_DIVISOR`, or `GL_CURRENT_VERTEX_ATTRIB`.
  ## params
  ##   Returns the requested data.


proc glVertexAttribI4i*(index: GlUint; x: GlInt; y: GlInt; z: GlInt; w: GlInt)
  {.importc.}
  ## Specifies the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified vertex attribute.
  ## v
  ##   For the vector commands (`glVertexAttrib*v`), specifies a pointer to an
  ##   array of values to be used for the generic vertex attribute.


proc glVertexAttribI4ui*(index: GlUint; x: GlUint; y: GlUint; z: GlUint;
  w: GlUint) {.importc.}
  ## Specifies the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified vertex attribute.
  ## v
  ##   For the vector commands (`glVertexAttrib*v`), specifies a pointer to an
  ##   array of values to be used for the generic vertex attribute.


proc glVertexAttribI4iv*(index: GlUint; v: ptr GlInt) {.importc.}
  ## Specifies the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified vertex attribute.
  ## v
  ##   For the vector commands (`glVertexAttrib*v`), specifies a pointer to an
  ##   array of values to be used for the generic vertex attribute.


proc glVertexAttribI4uiv*(index: GlUint; v: ptr GlUint) {.importc.}
  ## Specifies the value of a generic vertex attribute.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified vertex attribute.
  ## v
  ##   For the vector commands (`glVertexAttrib*v`), specifies a pointer to an
  ##   array of values to be used for the generic vertex attribute.


proc glGetUniformuiv*(program: GlUint; location: GlInt; params: ptr GlUint)
  {.importc.}
  ## Returns the value of a uniform variable.
  ##
  ## program
  ##   Specifies the program object to be queried.
  ## location
  ##   Specifies the location of the uniform variable to be queried.
  ## params
  ##   Returns the value of the specified uniform variable.


proc glGetFragDataLocation*(program: GlUint; name: ptr GLchar): GlInt
  {.importc.}
  ## Query the bindings of color numbers to user-defined varying out variables.
  ##
  ## program
  ##   The name of the program containing varying out variable whose binding to
  ##   query.
  ## name
  ##   The name of the user-defined varying out variable whose binding to query.


proc glUniform1ui*(location: GlInt; v0: GlUint) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   count values that will be used to update the specified uniform variable.


proc glUniform2ui*(location: GlInt; v0: GlUint; v1: GlUint) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   count values that will be used to update the specified uniform variable.


proc glUniform3ui*(location: GlInt; v0: GlUint; v1: GlUint; v2: GlUint)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   count values that will be used to update the specified uniform variable.


proc glUniform4ui*(location: GlInt; v0: GlUint; v1: GlUint; v2: GlUint;
  v3: GlUint) {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   count values that will be used to update the specified uniform variable.


proc glUniform1uiv*(location: GlInt; count: GlSizei; value: ptr GlUint)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   count values that will be used to update the specified uniform variable.


proc glUniform2uiv*(location: GlInt; count: GlSizei; value: ptr GlUint)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   count values that will be used to update the specified uniform variable.


proc glUniform3uiv*(location: GlInt; count: GlSizei; value: ptr GlUint)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   count values that will be used to update the specified uniform variable.


proc glUniform4uiv*(location: GlInt; count: GlSizei; value: ptr GlUint)
  {.importc.}
  ## Specify the value of a uniform variable for the current program object.
  ##
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector (`glUniform*v`) commands, specifies the number of elements
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array, and `1` or more if it is an array. For the
  ##   matrix (`glUniformMatrix*`) commands, specifies the number of matrices
  ##   that are to be modified. This should be `1` if the targeted uniform
  ##   variable is not an array of matrices, and `1` or more if it is an array
  ##   of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   count values that will be used to update the specified uniform variable.


proc glClearBufferiv*(buffer: GlEnum; drawbuffer: GlInt; value: ptr GlInt)
  {.importc.}
  ## Clear individual buffers of the currently bound draw framebuffer.
  ##
  ## buffer
  ##   Specify the buffer to clear.
  ## drawBuffer
  ##   Specify a particular draw buffer to clear.
  ## value
  ##   For color buffers, a pointer to a four-element vector specifying R, G, B
  ##   and A values to clear the buffer to. For depth buffers, a pointer to a
  ##   single depth value to clear the buffer to. For stencil buffers, a pointer
  ##   to a single stencil value to clear the buffer to.
  ## depth
  ##   The value to clear a depth render buffer to.
  ## stencil
  ##   The value to clear a stencil render buffer to.


proc glClearBufferuiv*(buffer: GlEnum; drawbuffer: GlInt; value: ptr GlUint)
  {.importc.}
  ## Clear individual buffers of the currently bound draw framebuffer.
  ##
  ## buffer
  ##   Specify the buffer to clear.
  ## drawBuffer
  ##   Specify a particular draw buffer to clear.
  ## value
  ##   For color buffers, a pointer to a four-element vector specifying R, G, B
  ##   and A values to clear the buffer to. For depth buffers, a pointer to a
  ##   single depth value to clear the buffer to. For stencil buffers, a pointer
  ##   to a single stencil value to clear the buffer to.
  ## depth
  ##   The value to clear a depth render buffer to.
  ## stencil
  ##   The value to clear a stencil render buffer to.


proc glClearBufferfv*(buffer: GlEnum; drawbuffer: GlInt; value: ptr GlFloat)
  {.importc.}
  ## Clear individual buffers of the currently bound draw framebuffer.
  ##
  ## buffer
  ##   Specify the buffer to clear.
  ## drawBuffer
  ##   Specify a particular draw buffer to clear.
  ## value
  ##   For color buffers, a pointer to a four-element vector specifying R, G, B
  ##   and A values to clear the buffer to. For depth buffers, a pointer to a
  ##   single depth value to clear the buffer to. For stencil buffers, a pointer
  ##   to a single stencil value to clear the buffer to.
  ## depth
  ##   The value to clear a depth render buffer to.
  ## stencil
  ##   The value to clear a stencil render buffer to.


proc glClearBufferfi*(buffer: GlEnum; drawbuffer: GlInt; depth: GlFloat;
  stencil: GlInt) {.importc.}


proc glGetStringi*(name: GlEnum; index: GlUint): ptr GlUbyte {.importc.}
  ## Return a string describing the current GL connection.
  ##
  ## name
  ##   Specifies a symbolic constant (accepts only the `GL_EXTENSIONS` token).
  ## index
  ##   Specifies the index of the string to return.


proc glCopyBufferSubData*(readTarget: GlEnum; writeTarget: GlEnum;
  readOffset: GlIntptr; writeOffset: GlIntptr; size: GlSizeiptr) {.importc.}
  ## Copy part of the data store of a buffer object to the data store of another
  ## buffer object.
  ##
  ## readtarget
  ##   Specifies the target from whose data store data should be read.
  ## writetarget
  ##   Specifies the target to whose data store data should be written.
  ## readoffset
  ##   Specifies the offset, in basic machine units, within the data store of
  ##   `readtarget` from which data should be read.
  ## writeoffset
  ##   Specifies the offset, in basic machine units, within the data store of
  ##   `writetarget` to which data should be written.
  ## size
  ##   Specifies the size, in basic machine units, of the data to be copied from
  ##   `readtarget` to `writetarget`.


proc glGetUniformIndices*(program: GlUint; uniformCount: GlSizei;
  uniformNames: ptr ptr GLchar; uniformIndices: ptr GlUint) {.importc.}
  ## Retrieve the index of a named uniform block.
  ##
  ## program
  ##   Specifies the name of a program containing uniforms whose indices to
  ##   query.
  ## uniformCount
  ##   Specifies the number of uniforms whose indices to query.
  ## uniformNames
  ##   Specifies the address of an array of pointers to buffers containing the
  ##   names of the queried uniforms.
  ## uniformIndices
  ##   Specifies the address of an array that will receive the indices of the
  ##   uniforms.


proc glGetActiveUniformsiv*(program: GlUint; uniformCount: GlSizei;
  uniformIndices: ptr GlUint; pname: GlEnum; params: ptr GlInt) {.importc.}
  ## Returns information about several active uniform variables for the
  ## specified program object.
  ##
  ## program
  ##   Specifies the program object to be queried.
  ## uniformCount
  ##   Specifies both the number of elements in the array of indices
  ##   `uniformIndices` and the number of parameters written to `params` upon
  ##   successful return.
  ## uniformIndices
  ##   Specifies the address of an array of `uniformCount` integers containing
  ##   the indices of uniforms within program whose parameter pname should be
  ##   queried.
  ## pname
  ##   Specifies the property of each uniform in `uniformIndices` that should be
  ##   written into the corresponding element of params.
  ## params
  ##   Specifies the address of an array of `uniformCount` integers which are to
  ##   receive the value of pname for each uniform in `uniformIndices`.


proc glGetUniformBlockIndex*(program: GlUint; uniformBlockName: ptr GLchar):
  GlUint {.importc.}
  ## Retrieve the index of a named uniform block.
  ##
  ## program
  ##   Specifies the name of a program containing the uniform block.
  ## uniformBlockName
  ##   Specifies the address an array of characters containing the name of the
  ##   uniform block whose index to retrieve.


proc glGetActiveUniformBlockiv*(program: GlUint; uniformBlockIndex: GlUint;
  pname: GlEnum; params: ptr GlInt) {.importc.}
  ## Retrieve the name of an active uniform block.
  ##
  ## program
  ##   Specifies the name of a program containing the uniform block.
  ## uniformBlockIndex
  ##   Specifies the index of the uniform block within program.
  ## bufSize
  ##   Specifies the size of the buffer addressed by `uniformBlockName`.
  ## length
  ##   Specifies the address of a variable to receive the number of characters
  ##   that were written to `uniformBlockName`.
  ## uniformBlockName
  ##   Specifies the address an array of characters to receive the name of the
  ##   uniform block at `uniformBlockIndex`.


proc glGetActiveUniformBlockName*(program: GlUint; uniformBlockIndex: GlUint;
  bufSize: GlSizei; length: ptr GlSizei; uniformBlockName: ptr GLchar)
  {.importc.}


proc glUniformBlockBinding*(program: GlUint; uniformBlockIndex: GlUint;
  uniformBlockBinding: GlUint) {.importc.}
  ## Assign a binding point to an active uniform block.
  ##
  ## program
  ##   The name of a program object containing the active uniform block whose
  ##   binding to assign.
  ## uniformBlockIndex
  ##   The index of the active uniform block within program whose binding to
  ##   assign.
  ## uniformBlockBinding
  ##   Specifies the binding point to which to bind the uniform block with index
  ##   uniformBlockIndex within program.


proc glDrawArraysInstanced*(mode: GlEnum; first: GlInt; count: GlSizei;
  instancecount: GlSizei) {.importc.}
  ## Draw multiple instances of a range of elements.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `GL_POINTS`, `GL_LINE_STRIP`, `GL_LINE_LOOP`, `GL_LINES`,
  ##   `GL_TRIANGLE_STRIP`, `GL_TRIANGLE_FAN` and `GL_TRIANGLES` are accepted.
  ## first
  ##   Specifies the starting index in the enabled arrays.
  ## count
  ##   Specifies the number of indices to be rendered.
  ## primcount
  ##   Specifies the number of instances of the specified range of indices to be
  ##   rendered.


proc glDrawElementsInstanced*(mode: GlEnum; count: GlSizei; indexType: GlEnum;
  indices: pointer; instancecount: GlSizei) {.importc.}
  ## Draw multiple instances of a set of elements.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `GL_POINTS`, `GL_LINE_STRIP`, `GL_LINE_LOOP`, `GL_LINES`,
  ##   `GL_TRIANGLE_STRIP`, `GL_TRIANGLE_FAN` and `GL_TRIANGLES` are accepted.
  ## count
  ##   Specifies the number of elements to be rendered.
  ## indexType
  ##   Specifies the type of the values in indices. Must be one of
  ##   `GL_UNSIGNED_BYTE`, `GL_UNSIGNED_SHORT`, or `GL_UNSIGNED_INT`.
  ## indices
  ##   Specifies a byte offset (cast to a pointer type) into the buffer bound to
  ##   `GL_ELEMENT_ARRAY_BUFFER` to start reading indices from. If no buffer is
  ##   bound, specifies a pointer to the location where the indices are stored.
  ## primcount
  ##   Specifies the number of instances of the specified range of indices to be
  ##   rendered.


proc glFenceSync*(condition: GlEnum; flags: GlBitfield): GlSync {.importc.}
  ## Create a new sync object and insert it into the GL command stream.
  ##
  ## condition
  ##   Specifies the condition that must be met to set the sync object's state
  ##   to signaled (must be `GL_SYNC_GPU_COMMANDS_COMPLETE`).
  ## flags
  ##   Specifies a bitwise combination of flags controlling the behavior of the
  ##   sync object. No flags are presently defined for this operation and
  ##   `flags` must be zero.


proc glIsSync*(sync: GlSync): GlBoolean {.importc.}
  ## Determine if a name corresponds to a sync object.
  ##
  ## sync
  ##   Specifies a value that may be the name of a sync object.


proc glDeleteSync*(sync: GlSync) {.importc.}
  ## Delete a sync object.
  ##
  ## sync
  ##   The sync object to be deleted.


proc glClientWaitSync*(sync: GlSync; flags: GlBitfield; timeout: GlUint64):
  GlEnum {.importc.}
  ## Block and wait for a sync object to become signaled.
  ##
  ## sync
  ##   The sync object whose status to wait on.
  ## flags
  ##   A bitfield controlling the command flushing behavior. `flags` may be
  ##   `GL_SYNC_FLUSH_COMMANDS_BIT`.
  ## timeout
  ##   The timeout, specified in nanoseconds, for which the implementation
  ##   should wait for sync to become signaled.


proc glWaitSync*(sync: GlSync; flags: GlBitfield; timeout: GlUint64) {.importc.}
  ## Instruct the GL server to block until the specified sync object becomes
  ## signaled.
  ##
  ## sync
  ##   Specifies the sync object whose status to wait on.
  ## flags
  ##   A bitfield controlling the command flushing behavior (must be zero).
  ## timeout
  ##   Specifies the timeout that the server should wait before continuing (must
  ##   `GL_TIMEOUT_IGNORED`).


proc glGetInteger64v*(pname: GlEnum; data: ptr GlInt64) {.importc.}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. See the official OpenGL ES
  ##   3.0 documentation for a list of accepted symbolic constants.
  ## target
  ##   Specifies the parameter value to be returned for indexed versions of
  ##   `glGet`. See the official OpenGL ES 3.0 documentation for a list of
  ##   accepted symbolic constants.
  ## index
  ##   Specifies the index of the particular element being queried.
  ## data
  ##   Returns the value or values of the specified parameter.


proc glGetSynciv*(sync: GlSync; pname: GlEnum; bufSize: GlSizei;
  length: ptr GlSizei; values: ptr GlInt) {.importc.}
  ## Query the properties of a sync object.
  ##
  ## sync
  ##   Specifies the sync object whose properties to query.
  ## pname
  ##   Specifies the parameter whose value to retrieve from the sync object
  ##   specified in sync.
  ## bufSize
  ##   Specifies the size of the buffer whose address is given in values.
  ## length
  ##   Specifies the address of an variable to receive the number of integers
  ##   placed in values.
  ## values
  ##   Specifies the address of an array to receive the values of the queried
  ##   parameter.


proc glGetInteger64iv*(target: GlEnum; index: GlUint; data: ptr GlInt64)
  {.importc: "glGetInteger64i_v".}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. The symbolic constants in
  ##   the list below are accepted.
  ## target
  ##   Specifies the parameter value to be returned for indexed versions of
  ##   `glGet`. See the official OpenGL ES 3.0 documentation for a list of
  ##   accepted symbolic constants.
  ## index
  ##   Specifies the index of the particular element being queried.
  ## data
  ##   Returns the value or values of the specified parameter.


proc glGetBufferParameteri64v*(target: GlEnum; pname: GlEnum;
  params: ptr GlInt64) {.importc.}
  ## Return parameters of a buffer object.
  ##
  ## target
  ##   Specifies the target buffer object. The symbolic constant must be
  ##   `GL_ARRAY_BUFFER`, `GL_COPY_READ_BUFFER`, `GL_COPY_WRITE_BUFFER`,
  ##   `GL_ELEMENT_ARRAY_BUFFER`, `GL_PIXEL_PACK_BUFFER`,
  ##   `GL_PIXEL_UNPACK_BUFFER`, `GL_TRANSFORM_FEEDBACK_BUFFER`, or
  ##   `GL_UNIFORM_BUFFER`.
  ## value
  ##   Specifies the symbolic name of a buffer object parameter. Accepted values
  ##   are `GL_BUFFER_ACCESS_FLAGS`, `GL_BUFFER_MAPPED`, `GL_BUFFER_MAP_LENGTH`,
  ##   `GL_BUFFER_MAP_OFFSET`, `GL_BUFFER_SIZE`, or `GL_BUFFER_USAGE`.
  ## data
  ##   Returns the requested parameter.


proc glGenSamplers*(count: GlSizei; samplers: ptr GlUint) {.importc.}
  ## Generate sampler object names.
  ##
  ## n
  ##   Specifies the number of sampler object names to generate.
  ## samplers
  ##   Specifies an array in which the generated sampler object names are stored.


proc glDeleteSamplers*(count: GlSizei; samplers: ptr GlUint) {.importc.}
  ## Delete named sampler objects.
  ##
  ## n
  ##   Specifies the number of sampler objects to be deleted.
  ## samplers
  ##   Specifies an array of sampler objects to be deleted.


proc glIsSampler*(sampler: GlUint): GlBoolean {.importc.}
  ## Determine if a name corresponds to a sampler object.
  ##
  ## id
  ##   Specifies a value that may be the name of a sampler object.


proc glBindSampler*(unit: GlUint; sampler: GlUint) {.importc.}
  ## Bind a named sampler to a texturing target.
  ##
  ## unit
  ##   Specifies the index of the texture unit to which the sampler is bound.
  ## sampler
  ##   Specifies the name of a sampler.


proc glSamplerParameteri*(sampler: GlUint; pname: GlEnum; param: GlInt)
  {.importc.}
  ## Set sampler parameters.
  ##
  ## sampler
  ##   Specifies the sampler object whose parameter to modify.
  ## pname
  ##   Specifies the symbolic name of a single-valued sampler parameter. `pname`
  ##   can be one of the following: `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`,
  ##   `GL_TEXTURE_WRAP_R`, `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_MIN_LOD`, `GL_TEXTURE_MAX_LOD`, `GL_TEXTURE_COMPARE_MODE`, or
  ##   `GL_TEXTURE_COMPARE_FUNC`.
  ## param
  ##   For the scalar commands, specifies the value of `pname`.
  ## params
  ##   For the vector commands (`glSamplerParameter*v`), specifies a pointer to
  ##   an array where the value or values of pname are stored.


proc glSamplerParameteriv*(sampler: GlUint; pname: GlEnum; param: ptr GlInt)
  {.importc.}
  ## Set sampler parameters.
  ##
  ## sampler
  ##   Specifies the sampler object whose parameter to modify.
  ## pname
  ##   Specifies the symbolic name of a single-valued sampler parameter. `pname`
  ##   can be one of the following: `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`,
  ##   `GL_TEXTURE_WRAP_R`, `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_MIN_LOD`, `GL_TEXTURE_MAX_LOD`, `GL_TEXTURE_COMPARE_MODE`, or
  ##   `GL_TEXTURE_COMPARE_FUNC`.
  ## param
  ##   For the scalar commands, specifies the value of `pname`.
  ## params
  ##   For the vector commands (`glSamplerParameter*v`), specifies a pointer to
  ##   an array where the value or values of pname are stored.


proc glSamplerParameterf*(sampler: GlUint; pname: GlEnum; param: GlFloat)
  {.importc.}
  ## Set sampler parameters.
  ##
  ## sampler
  ##   Specifies the sampler object whose parameter to modify.
  ## pname
  ##   Specifies the symbolic name of a single-valued sampler parameter. `pname`
  ##   can be one of the following: `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`,
  ##   `GL_TEXTURE_WRAP_R`, `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_MIN_LOD`, `GL_TEXTURE_MAX_LOD`, `GL_TEXTURE_COMPARE_MODE`, or
  ##   `GL_TEXTURE_COMPARE_FUNC`.
  ## param
  ##   For the scalar commands, specifies the value of `pname`.
  ## params
  ##   For the vector commands (`glSamplerParameter*v`), specifies a pointer to
  ##   an array where the value or values of pname are stored.


proc glSamplerParameterfv*(sampler: GlUint; pname: GlEnum; param: ptr GlFloat)
  {.importc.}
  ## Set sampler parameters.
  ##
  ## sampler
  ##   Specifies the sampler object whose parameter to modify.
  ## pname
  ##   Specifies the symbolic name of a single-valued sampler parameter. `pname`
  ##   can be one of the following: `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`,
  ##   `GL_TEXTURE_WRAP_R`, `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MAG_FILTER`,
  ##   `GL_TEXTURE_MIN_LOD`, `GL_TEXTURE_MAX_LOD`, `GL_TEXTURE_COMPARE_MODE`, or
  ##   `GL_TEXTURE_COMPARE_FUNC`.
  ## param
  ##   For the scalar commands, specifies the value of `pname`.
  ## params
  ##   For the vector commands (`glSamplerParameter*v`), specifies a pointer to
  ##   an array where the value or values of pname are stored.


proc glGetSamplerParameteriv*(sampler: GlUint; pname: GlEnum;
                              params: ptr GlInt) {.importc.}
  ## Return sampler parameter values.
  ##
  ## sampler
  ##   Specifies name of the sampler object from which to retrieve parameters.
  ## pname
  ##   Specifies the symbolic name of a sampler parameter.
  ##   `GL_TEXTURE_MAG_FILTER`, `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MIN_LOD`,
  ##   `GL_TEXTURE_MAX_LOD`, `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`,
  ##   `GL_TEXTURE_WRAP_R`, `GL_TEXTURE_COMPARE_MODE`, and
  ##   `GL_TEXTURE_COMPARE_FUNC` are accepted.
  ## params
  ##   Returns the sampler parameters.


proc glGetSamplerParameterfv*(sampler: GlUint; pname: GlEnum;
                              params: ptr GlFloat) {.importc.}
  ## Return sampler parameter values.
  ##
  ## sampler
  ##   Specifies name of the sampler object from which to retrieve parameters.
  ## pname
  ##   Specifies the symbolic name of a sampler parameter.
  ##   `GL_TEXTURE_MAG_FILTER`, `GL_TEXTURE_MIN_FILTER`, `GL_TEXTURE_MIN_LOD`,
  ##   `GL_TEXTURE_MAX_LOD`, `GL_TEXTURE_WRAP_S`, `GL_TEXTURE_WRAP_T`,
  ##   `GL_TEXTURE_WRAP_R`, `GL_TEXTURE_COMPARE_MODE`, and
  ##   `GL_TEXTURE_COMPARE_FUNC` are accepted.
  ## params
  ##   Returns the sampler parameters.


proc glVertexAttribDivisor*(index: GlUint; divisor: GlUint) {.importc.}
  ## Modify the rate at which generic vertex attributes advance during instanced
  ## rendering.
  ##
  ## index
  ##   Specify the index of the generic vertex attribute.
  ## divisor
  ##   Specify the number of instances that will pass between updates of the
  ##   generic attribute at slot `index`.


proc glBindTransformFeedback*(target: GlEnum; id: GlUint) {.importc.}
  ## Bind a transform feedback object.
  ##
  ## target
  ##   Specifies the target to which to bind the transform feedback object id
  ##   (must be `GL_TRANSFORM_FEEDBACK`).
  ## id
  ##  Specifies the name of a transform feedback object reserved by
  ##  `glGenTransformFeedbacks <#glGenTransformFeedbacks>`_.


proc glDeleteTransformFeedbacks*(n: GlSizei; ids: ptr GlUint) {.importc.}
  ## Delete transform feedback objects.
  ##
  ## n
  ##   Specifies the number of transform feedback objects to delete.
  ## ids
  ##   Specifies an array of names of transform feedback objects to delete.


proc glGenTransformFeedbacks*(n: GlSizei; ids: ptr GlUint) {.importc.}
  ## Reserve transform feedback object names.
  ##
  ## n
  ##   Specifies the number of transform feedback object names to reserve.
  ## ids
  ##   Specifies an array of into which the reserved names will be written.


proc glIsTransformFeedback*(id: GlUint): GlBoolean {.importc.}
  ## Determine if a name corresponds to a transform feedback object.
  ##
  ## id
  ##   Specifies a value that may be the name of a transform feedback object.


proc glPauseTransformFeedback*() {.importc.}
  ## Pause transform feedback operations.


proc glResumeTransformFeedback*() {.importc.}
  ## Resume transform feedback operations.


proc glGetProgramBinary*(program: GlUint; bufSize: GlSizei; length: ptr GlSizei;
  binaryFormat: ptr GlEnum; binary: pointer) {.importc.}
  ## Return a binary representation of a program object's compiled and linked
  ## executable source.
  ##
  ## program
  ##   Specifies the name of a program object whose binary representation to
  ##   retrieve.
  ## bufSize
  ##   Specifies the size of the buffer whose address is given by binary.
  ## length
  ##   Specifies the address of a variable to receive the number of bytes
  ##   written into binary.
  ## binaryFormat
  ##   Specifies the address of a variable to receive a token indicating the
  ##   format of the binary data returned by the GL.
  ## binary
  ##   Specifies the address an array into which the GL will return program's
  ##   binary representation.


proc glProgramBinary*(program: GlUint; binaryFormat: GlEnum; binary: pointer;
  length: GlSizei) {.importc.}
  ## Load a program object with a program binary.
  ##
  ## program
  ##   Specifies the name of a program object into which to load a program
  ##   binary.
  ## binaryFormat
  ##   Specifies the format of the binary data in binary.
  ## binary
  ##   Specifies the address of an array containing the binary to be loaded into
  ##   program.
  ## length
  ##   Specifies the number of bytes contained in binary.


proc glProgramParameteri*(program: GlUint; pname: GlEnum; value: GlInt)
  {.importc.}
  ## Specify a parameter for a program object.
  ##
  ## program
  ##   Specifies the name of a program object whose parameter to modify.
  ## pname
  ##   Specifies the name of the parameter to modify.
  ## value
  ##   Specifies the new value of the parameter specified by `pname` for program.


proc glInvalidateFramebuffer*(target: GlEnum; numAttachments: GlSizei;
  attachments: ptr GlEnum) {.importc.}
  ## Invalidate the contents of attachments within a framebuffer.
  ##
  ## target
  ##   Specifies the target of the invalidate operation.
  ##   Must be `GL_FRAMEBUFFER`.
  ## numAttachments
  ##   Specifies how many attachments are supplied in the attachments list.
  ## attachments
  ##   A list of numAttachments attachments to invalidate.


proc glInvalidateSubFramebuffer*(target: GlEnum; numAttachments: GlSizei;
  attachments: ptr GlEnum; x: GlInt; y: GlInt; width: GlSizei; height: GlSizei)
  {.importc.}
  ## Invalidate portions of the contents of attachments within a framebuffer.
  ##
  ## target
  ##   Specifies the target of the invalidate operation.
  ##   Must be `GL_FRAMEBUFFER`.
  ## numAttachments
  ##   Specifies how many attachments are supplied in the attachments list.
  ## attachments
  ##   A list of numAttachments attachments to invalidate.
  ## x
  ##   Specifies the left origin of the pixel rectangle to invalidate, with
  ##   lower left hand corner at `(0,0)`.
  ## y
  ##   Specifies the bottom origin of the pixel rectangle to invalidate, with
  ##   lower left hand corner at `(0,0)`.
  ## width
  ##   Specifies the width of the pixel rectangle to invalidate.
  ## height
  ##   Specifies the height of the pixel rectangle to invalidate.


proc glTexStorage2D*(target: GlEnum; levels: GlSizei; internalformat: GlEnum;
  width: GlSizei; height: GlSizei) {.importc.}
  ## Simultaneously specify storage for all levels of a two-dimensional texture.
  ##
  ## target
  ##   Specify the target of the operation. Must be one of `GL_TEXTURE_2D`,
  ##   or `GL_TEXTURE_CUBE_MAP`.
  ## levels
  ##   Specify the number of texture levels.
  ## internalformat
  ##   Specifies the sized internal format to be used to store texture image
  ##   data.
  ## width
  ##   Specifies the width of the texture, in texels.
  ## height
  ##   Specifies the height of the texture, in texels.


proc glTexStorage3D*(target: GlEnum; levels: GlSizei; internalformat: GlEnum;
  width: GlSizei; height: GlSizei; depth: GlSizei) {.importc.}
  ## Simultaneously specify storage for all levels of a three-dimensional or
  ## two-dimensional array texture.
  ##
  ## target
  ##   Specify the target of the operation. Must be one of `GL_TEXTURE3D`,
  ##   or `GL_TEXTURE_2D_ARRAY`.
  ## levels
  ##   Specify the number of texture levels.
  ## internalformat
  ##   Specifies the sized internal format to be used to store texture image
  ##   data.
  ## width
  ##   Specifies the width of the texture, in texels.
  ## height
  ##   Specifies the height of the texture, in texels.
  ## depth
  ##   Specifies the depth of the texture, in texels.


proc glGetInternalformativ*(target: GlEnum; internalformat: GlEnum;
  pname: GlEnum; bufSize: GlSizei; params: ptr GlInt) {.importc.}
  ## Retrieve information about implementation-dependent support for internal
  ## formats.
  ##
  ## target
  ##   Indicates the usage of the internal format (must be `GL_RENDERBUFFER`).
  ## internalformat
  ##   Specifies the internal format about which to retrieve information.
  ## pname
  ##   Specifies the type of information to query.
  ## bufSize
  ##   Specifies the maximum number of integers that may be written to params by
  ##   the function.
  ## params
  ##   Specifies the address of a variable into which to write the retrieved
  ##   information.

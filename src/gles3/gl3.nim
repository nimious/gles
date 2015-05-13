## *io-gles* - Nim bindings for OpenGL ES, the embedded 3D graphics library.
##
## This file is part of the `Nim I/O <http://nimio.us>`_ package collection.
## See the file LICENSE included in this distribution for licensing details.
## GitHub pull requests are encouraged. (c) 2015 Headcrash Industries LLC.

{.deadCodeElim: on.}


include gles2/gl2


type
  GLhalf* = cushort


const
  glReadBuffer* = 0x00000C02
  glUnpackRowLength* = 0x00000CF2
  glUnpackSkipRows* = 0x00000CF3
  glUnpackSkipPixels* = 0x00000CF4
  glPackRowLength* = 0x00000D02
  glPackSkipRows* = 0x00000D03
  glPackSkipPixels* = 0x00000D04
  glColor* = 0x00001800
  glDepth* = 0x00001801
  glStencil* = 0x00001802
  glRed* = 0x00001903
  glRgb8* = 0x00008051
  glRgba8* = 0x00008058
  glRgb10A2* = 0x00008059
  glTextureBinding3d* = 0x0000806A
  glUnpackSkipImages* = 0x0000806D
  glUnpackImageHeight* = 0x0000806E
  glTexture3d* = 0x0000806F
  glTextureWrapR* = 0x00008072
  glMax3dTextureSize* = 0x00008073
  glUnsignedInt2101010Rev* = 0x00008368
  glMaxElementsVertices* = 0x000080E8
  glMaxElementsIndices* = 0x000080E9
  glTextureMinLod* = 0x0000813A
  glTextureMaxLod* = 0x0000813B
  glTextureBaseLevel* = 0x0000813C
  glTextureMaxLevel* = 0x0000813D
  glMin* = 0x00008007
  glMax* = 0x00008008
  glDepthComponent24* = 0x000081A6
  glMaxTextureLodBias* = 0x000084FD
  glTextureCompareMode* = 0x0000884C
  glTextureCompareFunc* = 0x0000884D
  glCurrentQuery* = 0x00008865
  glQueryResult* = 0x00008866
  glQueryResultAvailable* = 0x00008867
  glBufferMapped* = 0x000088BC
  glBufferMapPointer* = 0x000088BD
  glStreamRead* = 0x000088E1
  glStreamCopy* = 0x000088E2
  glStaticRead* = 0x000088E5
  glStaticCopy* = 0x000088E6
  glDynamicRead* = 0x000088E9
  glDynamicCopy* = 0x000088EA
  glMaxDrawBuffers* = 0x00008824
  glDrawBuffer0* = 0x00008825
  glDrawBuffer1* = 0x00008826
  glDrawBuffer2* = 0x00008827
  glDrawBuffer3* = 0x00008828
  glDrawBuffer4* = 0x00008829
  glDrawBuffer5* = 0x0000882A
  glDrawBuffer6* = 0x0000882B
  glDrawBuffer7* = 0x0000882C
  glDrawBuffer8* = 0x0000882D
  glDrawBuffer9* = 0x0000882E
  glDrawBuffer10* = 0x0000882F
  glDrawBuffer11* = 0x00008830
  glDrawBuffer12* = 0x00008831
  glDrawBuffer13* = 0x00008832
  glDrawBuffer14* = 0x00008833
  glDrawBuffer15* = 0x00008834
  glMaxFragmentUniformComponents* = 0x00008B49
  glMaxVertexUniformComponents* = 0x00008B4A
  glSampler3d* = 0x00008B5F
  glSampler2dShadow* = 0x00008B62
  glFragmentShaderDerivativeHint* = 0x00008B8B
  glPixelPackBuffer* = 0x000088EB
  glPixelUnpackBuffer* = 0x000088EC
  glPixelPackBufferBinding* = 0x000088ED
  glPixelUnpackBufferBinding* = 0x000088EF
  gLFLOATMAT2x3* = 0x00008B65
  gLFLOATMAT2x4* = 0x00008B66
  gLFLOATMAT3x2* = 0x00008B67
  gLFLOATMAT3x4* = 0x00008B68
  gLFLOATMAT4x2* = 0x00008B69
  gLFLOATMAT4x3* = 0x00008B6A
  glSrgb* = 0x00008C40
  glSrgb8* = 0x00008C41
  glSrgb8Alpha8* = 0x00008C43
  glCompareRefToTexture* = 0x0000884E
  glMajorVersion* = 0x0000821B
  glMinorVersion* = 0x0000821C
  glNumExtensions* = 0x0000821D
  glRgba32f* = 0x00008814
  glRgb32f* = 0x00008815
  glRgba16f* = 0x0000881A
  glRgb16f* = 0x0000881B
  glVertexAttribArrayInteger* = 0x000088FD
  glMaxArrayTextureLayers* = 0x000088FF
  glMinProgramTexelOffset* = 0x00008904
  glMaxProgramTexelOffset* = 0x00008905
  glMaxVaryingComponents* = 0x00008B4B
  glTexture2dArray* = 0x00008C1A
  glTextureBinding2dArray* = 0x00008C1D
  glR11fG11fB10f* = 0x00008C3A
  glUnsignedInt10f11f11fRev* = 0x00008C3B
  glRgb9E5* = 0x00008C3D
  glUnsignedInt5999Rev* = 0x00008C3E
  glTransformFeedbackVaryingMaxLength* = 0x00008C76
  glTransformFeedbackBufferMode* = 0x00008C7F
  glMaxTransformFeedbackSeparateComponents* = 0x00008C80
  glTransformFeedbackVaryings* = 0x00008C83
  glTransformFeedbackBufferStart* = 0x00008C84
  glTransformFeedbackBufferSize* = 0x00008C85
  glTransformFeedbackPrimitivesWritten* = 0x00008C88
  glRasterizerDiscard* = 0x00008C89
  glMaxTransformFeedbackInterleavedComponents* = 0x00008C8A
  glMaxTransformFeedbackSeparateAttribs* = 0x00008C8B
  glInterleavedAttribs* = 0x00008C8C
  glSeparateAttribs* = 0x00008C8D
  glTransformFeedbackBuffer* = 0x00008C8E
  glTransformFeedbackBufferBinding* = 0x00008C8F
  glRgba32ui* = 0x00008D70
  glRgb32ui* = 0x00008D71
  glRgba16ui* = 0x00008D76
  glRgb16ui* = 0x00008D77
  glRgba8ui* = 0x00008D7C
  glRgb8ui* = 0x00008D7D
  glRgba32i* = 0x00008D82
  glRgb32i* = 0x00008D83
  glRgba16i* = 0x00008D88
  glRgb16i* = 0x00008D89
  glRgba8i* = 0x00008D8E
  glRgb8i* = 0x00008D8F
  glRedInteger* = 0x00008D94
  glRgbInteger* = 0x00008D98
  glRgbaInteger* = 0x00008D99
  glSampler2dArray* = 0x00008DC1
  glSampler2dArrayShadow* = 0x00008DC4
  glSamplerCubeShadow* = 0x00008DC5
  glUnsignedIntVec2* = 0x00008DC6
  glUnsignedIntVec3* = 0x00008DC7
  glUnsignedIntVec4* = 0x00008DC8
  glIntSampler2d* = 0x00008DCA
  glIntSampler3d* = 0x00008DCB
  glIntSamplerCube* = 0x00008DCC
  glIntSampler2dArray* = 0x00008DCF
  glUnsignedIntSampler2d* = 0x00008DD2
  glUnsignedIntSampler3d* = 0x00008DD3
  glUnsignedIntSamplerCube* = 0x00008DD4
  glUnsignedIntSampler2dArray* = 0x00008DD7
  glBufferAccessFlags* = 0x0000911F
  glBufferMapLength* = 0x00009120
  glBufferMapOffset* = 0x00009121
  glDepthComponent32f* = 0x00008CAC
  glDepth32fStencil8* = 0x00008CAD
  glFloat32UnsignedInt248Rev* = 0x00008DAD
  glFramebufferAttachmentColorEncoding* = 0x00008210
  glFramebufferAttachmentComponentType* = 0x00008211
  glFramebufferAttachmentRedSize* = 0x00008212
  glFramebufferAttachmentGreenSize* = 0x00008213
  glFramebufferAttachmentBlueSize* = 0x00008214
  glFramebufferAttachmentAlphaSize* = 0x00008215
  glFramebufferAttachmentDepthSize* = 0x00008216
  glFramebufferAttachmentStencilSize* = 0x00008217
  glFramebufferDefault* = 0x00008218
  glFramebufferUndefined* = 0x00008219
  glDepthStencilAttachment* = 0x0000821A
  glDepthStencil* = 0x000084F9
  glUnsignedInt248* = 0x000084FA
  glDepth24Stencil8* = 0x000088F0
  glUnsignedNormalized* = 0x00008C17
  glDrawFramebufferBinding* = 0x00008CA6
  glReadFramebuffer* = 0x00008CA8
  glDrawFramebuffer* = 0x00008CA9
  glReadFramebufferBinding* = 0x00008CAA
  glRenderbufferSamples* = 0x00008CAB
  glFramebufferAttachmentTextureLayer* = 0x00008CD4
  glMaxColorAttachments* = 0x00008CDF
  glColorAttachment1* = 0x00008CE1
  glColorAttachment2* = 0x00008CE2
  glColorAttachment3* = 0x00008CE3
  glColorAttachment4* = 0x00008CE4
  glColorAttachment5* = 0x00008CE5
  glColorAttachment6* = 0x00008CE6
  glColorAttachment7* = 0x00008CE7
  glColorAttachment8* = 0x00008CE8
  glColorAttachment9* = 0x00008CE9
  glColorAttachment10* = 0x00008CEA
  glColorAttachment11* = 0x00008CEB
  glColorAttachment12* = 0x00008CEC
  glColorAttachment13* = 0x00008CED
  glColorAttachment14* = 0x00008CEE
  glColorAttachment15* = 0x00008CEF
  glFramebufferIncompleteMultisample* = 0x00008D56
  glMaxSamples* = 0x00008D57
  glHalfFloat* = 0x0000140B
  glMapReadBit* = 0x00000001
  glMapWriteBit* = 0x00000002
  glMapInvalidateRangeBit* = 0x00000004
  glMapInvalidateBufferBit* = 0x00000008
  glMapFlushExplicitBit* = 0x00000010
  glMapUnsynchronizedBit* = 0x00000020
  glRg* = 0x00008227
  glRgInteger* = 0x00008228
  glR8* = 0x00008229
  glRg8* = 0x0000822B
  glR16f* = 0x0000822D
  glR32f* = 0x0000822E
  glRg16f* = 0x0000822F
  glRg32f* = 0x00008230
  glR8i* = 0x00008231
  glR8ui* = 0x00008232
  glR16i* = 0x00008233
  glR16ui* = 0x00008234
  glR32i* = 0x00008235
  glR32ui* = 0x00008236
  glRg8i* = 0x00008237
  glRg8ui* = 0x00008238
  glRg16i* = 0x00008239
  glRg16ui* = 0x0000823A
  glRg32i* = 0x0000823B
  glRg32ui* = 0x0000823C
  glVertexArrayBinding* = 0x000085B5
  glR8Snorm* = 0x00008F94
  glRg8Snorm* = 0x00008F95
  glRgb8Snorm* = 0x00008F96
  glRgba8Snorm* = 0x00008F97
  glSignedNormalized* = 0x00008F9C
  glPrimitiveRestartFixedIndex* = 0x00008D69
  glCopyReadBuffer* = 0x00008F36
  glCopyWriteBuffer* = 0x00008F37
  glCopyReadBufferBinding* = 0x00008F36
  glCopyWriteBufferBinding* = 0x00008F37
  glUniformBuffer* = 0x00008A11
  glUniformBufferBinding* = 0x00008A28
  glUniformBufferStart* = 0x00008A29
  glUniformBufferSize* = 0x00008A2A
  glMaxVertexUniformBlocks* = 0x00008A2B
  glMaxFragmentUniformBlocks* = 0x00008A2D
  glMaxCombinedUniformBlocks* = 0x00008A2E
  glMaxUniformBufferBindings* = 0x00008A2F
  glMaxUniformBlockSize* = 0x00008A30
  glMaxCombinedVertexUniformComponents* = 0x00008A31
  glMaxCombinedFragmentUniformComponents* = 0x00008A33
  glUniformBufferOffsetAlignment* = 0x00008A34
  glActiveUniformBlockMaxNameLength* = 0x00008A35
  glActiveUniformBlocks* = 0x00008A36
  glUniformType* = 0x00008A37
  glUniformSize* = 0x00008A38
  glUniformNameLength* = 0x00008A39
  glUniformBlockIndex* = 0x00008A3A
  glUniformOffset* = 0x00008A3B
  glUniformArrayStride* = 0x00008A3C
  glUniformMatrixStride* = 0x00008A3D
  glUniformIsRowMajor* = 0x00008A3E
  glUniformBlockBinding* = 0x00008A3F
  glUniformBlockDataSize* = 0x00008A40
  glUniformBlockNameLength* = 0x00008A41
  glUniformBlockActiveUniforms* = 0x00008A42
  glUniformBlockActiveUniformIndices* = 0x00008A43
  glUniformBlockReferencedByVertexShader* = 0x00008A44
  glUniformBlockReferencedByFragmentShader* = 0x00008A46
  glInvalidIndex* = 0xFFFFFFFF
  glMaxVertexOutputComponents* = 0x00009122
  glMaxFragmentInputComponents* = 0x00009125
  glMaxServerWaitTimeout* = 0x00009111
  glObjectType* = 0x00009112
  glSyncCondition* = 0x00009113
  glSyncStatus* = 0x00009114
  glSyncFlags* = 0x00009115
  glSyncFence* = 0x00009116
  glSyncGpuCommandsComplete* = 0x00009117
  glUnsignaled* = 0x00009118
  glSignaled* = 0x00009119
  glAlreadySignaled* = 0x0000911A
  glTimeoutExpired* = 0x0000911B
  glConditionSatisfied* = 0x0000911C
  glWaitFailed* = 0x0000911D
  glSyncFlushCommandsBit* = 0x00000001
  glTimeoutIgnored* = 0xFFFFFFFFFFFFFFFF'i64
  glVertexAttribArrayDivisor* = 0x000088FE
  glAnySamplesPassed* = 0x00008C2F
  glAnySamplesPassedConservative* = 0x00008D6A
  glSamplerBinding* = 0x00008919
  glRgb10A2ui* = 0x0000906F
  glTextureSwizzleR* = 0x00008E42
  glTextureSwizzleG* = 0x00008E43
  glTextureSwizzleB* = 0x00008E44
  glTextureSwizzleA* = 0x00008E45
  glGreen* = 0x00001904
  glBlue* = 0x00001905
  glInt2101010Rev* = 0x00008D9F
  glTransformFeedback* = 0x00008E22
  glTransformFeedbackPaused* = 0x00008E23
  glTransformFeedbackActive* = 0x00008E24
  glTransformFeedbackBinding* = 0x00008E25
  glProgramBinaryRetrievableHint* = 0x00008257
  glProgramBinaryLength* = 0x00008741
  glNumProgramBinaryFormats* = 0x000087FE
  glProgramBinaryFormats* = 0x000087FF
  glCompressedR11Eac* = 0x00009270
  glCompressedSignedR11Eac* = 0x00009271
  glCompressedRg11Eac* = 0x00009272
  glCompressedSignedRg11Eac* = 0x00009273
  glCompressedRgb8Etc2* = 0x00009274
  glCompressedSrgb8Etc2* = 0x00009275
  glCompressedRgb8PunchthroughAlpha1Etc2* = 0x00009276
  glCompressedSrgb8PunchthroughAlpha1Etc2* = 0x00009277
  glCompressedRgba8Etc2Eac* = 0x00009278
  glCompressedSrgb8Alpha8Etc2Eac* = 0x00009279
  glTextureImmutableFormat* = 0x0000912F
  glMaxElementIndex* = 0x00008D6B
  glNumSampleCounts* = 0x00009380
  glTextureImmutableLevels* = 0x000082DF


proc glReadBuffer*(src: GLenum) {.importc.}
  ## Select a color buffer source for pixels.
  ##
  ## src
  ##   Specifies a color buffer. Accepted values are `glBack`, `glNone`, and
  ##   `gLCOLORATTACHMENT`i.


proc glDrawRangeElements*(mode: GLenum; start: GLuint; `end`: GLuint;
  count: GLsizei; `type`: GLenum; indices: pointer)  {.importc.}
  ## Render primitives from array data.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `glPoints`, `glLineStrip`, `glLineLoop`, `glLines`, `glTriangleStrip`,
  ##   `glTriangleFan` and `glTriangles` are accepted.
  ## start
  ##   Specifies the minimum array index contained in indices.
  ## end
  ##   Specifies the maximum array index contained in indices.
  ## count
  ##   Specifies the number of elements to be rendered.
  ## type
  ##   Specifies the type of the values in indices. Must be one of
  ##   `glUnsignedByte`, `glUnsignedShort`, or `glUnsignedInt`.
  ## indices
  ##   Specifies a byte offset (cast to a pointer type) into the buffer bound to
  ##   `glElementArrayBuffer` to start reading indices from. If no buffer is
  ##   bound, specifies a pointer to the location where the indices are stored.


proc glTexImage3D*(target: GLenum; level: GLint; internalformat: GLint;
  width: GLsizei; height: GLsizei; depth: GLsizei; border: GLint;
  format: GLenum; `type`: GLenum; pixels: pointer) {.importc.}
  ## Specify a three-dimensional texture image.
  ##
  ## target
  ##   Specifies the target texture. Must be one of `glTexture3d` or
  ##   `glTexture2dArray`.
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
  ##   accepted: `glRed`, `glRedInteger`, `GL_RG`, `glRgInteger`, `glRgb`,
  ##   `glRgbInteger`, `glRgba`, `glRgbaInteger`, `glDepthComponent`,
  ##   `glDepthStencil`, `glLuminanceAlpha`, `glLuminance`, and `glAlpha`,
  ## type
  ##   Specifies the data type of the pixel data. The following symbolic values
  ##   are accepted: `glUnsignedByte`, `glByte`, `glUnsignedShort`, `glShort`,
  ##   `glUnsignedInt`, `glInt`, `glHalfFloat`, `glFloat`, `glUnsignedShort565`,
  ##   `glUnsignedShort4444`, `glUnsignedShort5551`, `glUnsignedInt2101010Rev`,
  ##   `glUnsignedInt10f11f11fRev`, `glUnsignedInt5999Rev`, `glUnsignedInt248`,
  ##   and `glFloat32UnsignedInt248Rev`.
  ## data
  ##   Specifies a pointer to the image data in memory.


proc glTexSubImage3D*(target: GLenum; level: GLint; xoffset: GLint;
  yoffset: GLint; zoffset: GLint; width: GLsizei; height: GLsizei;
  depth: GLsizei; format: GLenum; `type`: GLenum; pixels: pointer) {.importc.}
  ## Specify a three-dimensional texture subimage.
  ##
  ## target
  ##   Specifies the target texture. Must be `glTexture3d` or `glTexture2dArray`.
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
  ##   accepted: `glRed`, `glRedInteger`, `glRg`, `glRgInteger`, `glRgb`,
  ##   `glRgbInteger`, `glRgba`, `glRgbaInteger`, `glDepthComponent`,
  ##   `glDepthStencil`, `glLuminanceAlpha`, `glLuminance`, and `glAlpha`.
  ## type
  ##   Specifies the data type of the pixel data. The following symbolic values
  ##   are accepted: `glUnsignedByte`, `glByte`, `glUnsignedShort`, `glShort`,
  ##   `glUnsignedInt`, `glInt`, `glHalfFloat`, `glFloat`, `glUnsignedShort565`,
  ##   `glUnsignedShort4444`, `glUnsignedShort5551`, `glUnsignedInt2101010Rev`,
  ##   `glUnsignedInt10f11f11fRev`, `glUnsignedInt5999Rev`, `glUnsignedInt248`,
  ##   and `glFloat32UnsignedInt248Rev`.
  ## data
  ##   Specifies a pointer to the image data in memory.

proc glCopyTexSubImage3D*(target: GLenum; level: GLint; xoffset: GLint;
  yoffset: GLint; zoffset: GLint; x: GLint; y: GLint; width: GLsizei;
  height: GLsizei) {.importc.}
  ## Copy a three-dimensional texture subimage.
  ##
  ## target
  ##   Specifies the target texture. Must be `glTexture3d` or `glTexture2dArray`.
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


proc glCompressedTexImage3D*(target: GLenum; level: GLint;
  internalformat: GLenum; width: GLsizei; height: GLsizei; depth: GLsizei;
  border: GLint; imageSize: GLsizei; data: pointer) {.importc.}
  ## Specify a three-dimensional texture image in a compressed format.
  ##
  ## target
  ##   Specifies the target texture. Must be `glTexture3d` or `glTexture2dArray`.
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


proc glCompressedTexSubImage3D*(target: GLenum; level: GLint; xoffset: GLint;
  yoffset: GLint; zoffset: GLint; width: GLsizei; height: GLsizei;
  depth: GLsizei; format: GLenum; imageSize: GLsizei; data: pointer) {.importc.}
  ## Specify a three-dimensional texture subimage in a compressed format.
  ##
  ## target
  ##   Specifies the target texture. Must be `glTexture3d` or `glTexture2dArray`.
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


proc glGenQueries*(n: GLsizei; ids: ptr GLuint) {.importc.}
  ## Generate query object names.
  ##
  ## n
  ##   Specifies the number of query object names to be generated.
  ## ids
  ##   Specifies an array in which the generated query object names are stored.


proc glDeleteQueries*(n: GLsizei; ids: ptr GLuint) {.importc.}
  ## Delete named query objects.
  ##
  ## n
  ##   Specifies the number of query objects to be deleted.
  ## ids
  ##   Specifies an array of query objects to be deleted.


proc glIsQuery*(id: GLuint): GLboolean {.importc.}
  ## Determine if a name corresponds to a query object.
  ##
  ## id
  ##   Specifies a value that may be the name of a query object.


proc glBeginQuery*(target: GLenum; id: GLuint) {.importc.}
  ## Delimit the boundaries of a query object.
  ##
  ## target
  ##   Specifies the target type of query object established between
  ##   `glBeginQuery <#glBeginQuery>`_ and the subsequent
  ##   `glEndQuery <#glEndQuery>`_. The symbolic constant must be one of
  ##   `glAnySamplesPassed`, `glAnySamplesPassedConservative`, or
  ##   `glTransformFeedbackPrimitivesWritten`.
  ## id
  ##   Specifies the name of a query object.


proc glEndQuery*(target: GLenum) {.importc.}
  ## Delimit the boundaries of a query object.
  ##
  ## target
  ##   Specifies the target type of query object established between
  ##   `glBeginQuery <#glBeginQuery>`_ and the subsequent
  ##   `glEndQuery <#glEndQuery>`_. The symbolic constant must be one of
  ##   `glAnySamplesPassed`, `glAnySamplesPassedConservative`, or
  ##   `glTransformFeedbackPrimitivesWritten`.
  ## id
  ##   Specifies the name of a query object.


proc glGetQueryiv*(target: GLenum; pname: GLenum; params: ptr GLint) {.importc.}
  ## Return parameters of a query object target.
  ##
  ## target
  ##   Specifies a query object target. Must be `glAnySamplesPassed`,
  ##   `glAnySamplesPassedConservative` or
  ##   `glTransformFeedbackPrimitivesWritten`.
  ## pname
  ##   Specifies the symbolic name of a query object target parameter. Must be
  ##   `glCurrentQuery`.
  ## params
  ##   Returns the requested data.


proc glGetQueryObjectuiv*(id: GLuint; pname: GLenum; params: ptr GLuint)
  {.importc.}
  ## Return parameters of a query object.
  ##
  ## id
  ##   Specifies the name of a query object.
  ## pname
  ##   Specifies the symbolic name of a query object parameter. Accepted values
  ##   are `glQueryResult` or `glQueryResultAvailable`.
  ## params
  ##   Returns the requested data.


proc glUnmapBuffer*(target: GLenum): GLboolean {.importc.}
  ## Unmap a buffer object's data store.
  ##
  ## target
  ##   Specifies a binding to which the target buffer is bound.


proc glGetBufferPointerv*(target: GLenum; pname: GLenum; params: ptr pointer)
  {.importc.}
  ## Return the pointer to a mapped buffer object's data store.
  ##
  ## target
  ##   Specifies the target buffer object. The symbolic constant must be
  ##   `glArrayBuffer`, `glCopyReadBuffer`, `glCopyWriteBuffer`,
  ##   `glElementArrayBuffer`, `glPixelPackBuffer`, `glPixelUnpackBuffer`,
  ##   `glTransformFeedbackBuffer`, or `glUniformBuffer`.
  ## pname
  ##   Specifies the pointer to be returned. The symbolic constant must be
  ##   `glBufferMapPointer`.
  ## params
  ##   Returns the pointer value specified by pname.


proc glDrawBuffers*(n: GLsizei; bufs: ptr GLenum) {.importc.}
  ## Specifies a list of color buffers to be drawn into.
  ##
  ## n
  ##   Specifies the number of buffers in bufs.
  ## bufs
  ##   Points to an array of symbolic constants specifying the buffers into
  ##   which fragment colors or data values will be written.


proc glUniformMatrix2x3fv*(location: GLint; count: GLsizei;
  transpose: GLboolean; value: ptr GLfloat) {.importc.}
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
  ##   variable is not an array of matrices, and `1` or more if it is an array of
  ##   matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glUniformMatrix3x2fv*(location: GLint; count: GLsizei;
  transpose: GLboolean; value: ptr GLfloat) {.importc.}
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
  ##   variable is not an array of matrices, and `1` or more if it is an array of
  ##   matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glUniformMatrix2x4fv*(location: GLint; count: GLsizei;
  transpose: GLboolean; value: ptr GLfloat) {.importc.}
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
  ##   variable is not an array of matrices, and `1` or more if it is an array of
  ##   matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glUniformMatrix4x2fv*(location: GLint; count: GLsizei;
  transpose: GLboolean; value: ptr GLfloat) {.importc.}
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
  ##   variable is not an array of matrices, and `1` or more if it is an array of
  ##   matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glUniformMatrix3x4fv*(location: GLint; count: GLsizei;
  transpose: GLboolean; value: ptr GLfloat) {.importc.}
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
  ##   variable is not an array of matrices, and `1` or more if it is an array of
  ##   matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glUniformMatrix4x3fv*(location: GLint; count: GLsizei;
  transpose: GLboolean; value: ptr GLfloat) {.importc.}
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
  ##   variable is not an array of matrices, and `1` or more if it is an array of
  ##   matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glBlitFramebuffer*(srcX0: GLint; srcY0: GLint; srcX1: GLint; srcY1: GLint;
  dstX0: GLint; dstY0: GLint; dstX1: GLint; dstY1: GLint; mask: GLbitfield;
  filter: GLenum) {.importc.}
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
  ##   The allowed flags are `glColorBufferBit`, `glDepthBufferBit` and
  ##   `glStencilBufferBit`.
  ## filter
  ##   Specifies the interpolation to be applied if the image is stretched. Must
  ##   be `glNearest` or `glLinear`.


proc glRenderbufferStorageMultisample*(target: GLenum; samples: GLsizei;
  internalformat: GLenum; width: GLsizei; height: GLsizei) {.importc.}
  ## Establish data storage, format, dimensions and sample count of a
  ## renderbuffer object's image.
  ##
  ## target
  ##   Specifies a binding to which the target of the allocation and must be
  ##   `glRenderbuffer`.
  ## samples
  ##   Specifies the number of samples to be used for the renderbuffer object's
  ##   storage.
  ## internalformat
  ##   Specifies the internal format to use for the renderbuffer object's image.
  ## width
  ##   Specifies the width of the renderbuffer, in pixels.
  ## height
  ##   Specifies the height of the renderbuffer, in pixels.


proc glFramebufferTextureLayer*(target: GLenum; attachment: GLenum;
  texture: GLuint; level: GLint; layer: GLint) {.importc.}
  ## Attach a single layer of a texture to a framebuffer.
  ##
  ## target
  ##   Specifies the framebuffer target. target must be `glDrawFramebuffer`,
  ##   `glReadFramebuffer`, or `glFramebuffer`. `glFramebuffer` is equivalent to
  ##   `glDrawFramebuffer`.
  ## attachment
  ##   Specifies the attachment point of the framebuffer. `attachment` must be
  ##   `gLCOLORATTACHMENTi`, `glDepthAttachment`, `glStencilAttachment` or
  ##   `glDepthStencilAttachmment`.
  ## texture
  ##   Specifies the texture object to attach to the framebuffer attachment
  ##   point named by attachment.
  ## level
  ##   Specifies the mipmap level of texture to attach.
  ## layer
  ##   Specifies the layer of texture to attach.


proc glMapBufferRange*(target: GLenum; offset: GLintptr; length: GLsizeiptr;
  access: GLbitfield): pointer {.importc.}
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


proc glFlushMappedBufferRange*(target: GLenum; offset: GLintptr;
  length: GLsizeiptr) {.importc.}
  ## Indicate modifications to a range of a mapped buffer.
  ##
  ## target
  ##   Specifies the target of the flush operation. target must be
  ##   `glArrayBuffer`, `glCopyReadBuffer`, `glCopyWriteBuffer`,
  ##   `glElementArrayBuffer`, `glPixelPackBuffer`, `glPixelUnpackBuffer`,
  ##   `glTransformFeedbackBuffer`, or `glUniformBuffer`.
  ## offset
  ##   Specifies the start of the buffer subrange, in basic machine units.
  ## length
  ##   Specifies the length of the buffer subrange, in basic machine units.


proc glBindVertexArray*(array: GLuint) {.importc.}
  ## Bind a vertex array object.
  ##
  ## array
  ##   Specifies the name of the vertex array to bind.


proc glDeleteVertexArrays*(n: GLsizei; arrays: ptr GLuint) {.importc.}
  ## Delete vertex array objects.
  ##
  ## n
  ##   Specifies the number of vertex array objects to be deleted.
  ## arrays
  ##   Specifies the address of an array containing the n names of the objects
  ##   to be deleted.


proc glGenVertexArrays*(n: GLsizei; arrays: ptr GLuint) {.importc.}
  ## Generate vertex array object names.
  ##
  ## n
  ##   Specifies the number of vertex array object names to generate.
  ## arrays
  ##   Specifies an array in which the generated vertex array object names are
  ##   stored.


proc glIsVertexArray*(array: GLuint): GLboolean {.importc.}
  ## Determine if a name corresponds to a vertex array object.
  ##
  ## array
  ##   Specifies a value that may be the name of a vertex array object.


proc glGetIntegeriv*(target: GLenum; index: GLuint; data: ptr GLint)
  {.importc.}
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


proc glBeginTransformFeedback*(primitiveMode: GLenum) {.importc.}
  ## Start transform feedback operation.
  ##
  ## primitiveMode
  ##   Specify the output type of the primitives that will be recorded into the
  ##   buffer objects that are bound for transform feedback.


proc glEndTransformFeedback*() {.importc.}
  ## End transform feedback operation.


proc glBindBufferRange*(target: GLenum; index: GLuint; buffer: GLuint;
  offset: GLintptr; size: GLsizeiptr) {.importc.}
  ## Bind a range within a buffer object to an indexed buffer target.
  ##
  ## target
  ##   Specify the target of the bind operation. `target` must be either
  ##   `glTransformFeedbackBuffer` or `glUniformBuffer`.
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


proc glBindBufferBase*(target: GLenum; index: GLuint; buffer: GLuint)
  {.importc.}
  ## Bind a buffer object to an indexed buffer target.
  ##
  ## target
  ##   Specify the target of the bind operation. `target` must be either
  ##   `glTransformFeedbackBuffer` or `glUniformBuffer`.
  ## index
  ##   Specify the index of the binding point within the array specified by
  ##   `target`.
  ## buffer
  ##   The name of a buffer object to bind to the specified binding point.


proc glTransformFeedbackVaryings*(program: GLuint; count: GLsizei;
  varyings: ptr ptr GLchar; bufferMode: GLenum) {.importc.}
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
  ##    feedback is active. bufferMode must be `glInterleavedAttribs` or
  ##    `glSeparateAttribs`.


proc glGetTransformFeedbackVarying*(program: GLuint; index: GLuint;
  bufSize: GLsizei; length: ptr GLsizei; size: ptr GLsizei; `type`: ptr GLenum;
  name: ptr GLchar) {.importc.}
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
  ## type
  ##   The address of a variable that will recieve the type of the varying.
  ## name
  ##   The address of a buffer into which will be written the name of the
  ##   varying.


proc glVertexAttribIPointer*(index: GLuint; size: GLint; `type`: GLenum;
  stride: GLsizei; pointer: pointer) {.importc.}
  ## Define an array of generic vertex attribute data.
  ##
  ## index
  ##   Specifies the index of the generic vertex attribute to be modified.
  ## size
  ##   Specifies the number of components per generic vertex attribute. Must be
  ##   `1`, `2`, `3`, `4`. The initial value is `4`.
  ## type
  ##   Specifies the data type of each component in the array. The symbolic
  ##   constants `glByte`, `glUnsignedByte`, `glShort`, `glUnsignedShort`,
  ##   `glInt`, and `glUnsignedInt` are accepted by both functions. Additionally
  ##   `glHalfFloat`, `glFloat`, `glFixed`, `glInt2101010Rev`, and
  ##   `glUnsignedInt2101010Rev` are accepted by `glVertexAttribPointer`. The
  ##   initial value is `glFloat`.
  ## normalized
  ##   For `glVertexAttribPointer`, specifies whether fixed-point data values
  ##   should be normalized (`glTrue`) or converted directly as fixed-point
  ##   values (`glFalse`) when they are accessed. This parameter is ignored if
  ##   type is `glFixed`.
  ## stride
  ##   Specifies the byte offset between consecutive generic vertex attributes.
  ##   If stride is `0`, the generic vertex attributes are understood to be
  ##   tightly packed in the array. The initial value is `0`.
  ## pointer
  ##   Specifies a pointer to the first generic vertex attribute in the array.
  ##   If a non-zero buffer is currently bound to the `glArrayBuffer` target,
  ##   pointer specifies an offset of into the array in the data store of that
  ##   buffer. The initial value is `0`.


proc glGetVertexAttribIiv*(index: GLuint; pname: GLenum; params: ptr GLint)
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
  ##   `glVertexAttribArrayNormalized`, `glVertexAttribArrayInteger`,
  ##   `glVertexAttribArrayDivisor`, or `glCurrentVertexAttrib`.
  ## params
  ##   Returns the requested data.


proc glGetVertexAttribIuiv*(index: GLuint; pname: GLenum; params: ptr GLuint)
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
  ##   `glVertexAttribArrayNormalized`, `glVertexAttribArrayInteger`,
  ##   `glVertexAttribArrayDivisor`, or `glCurrentVertexAttrib`.
  ## params
  ##   Returns the requested data.


proc glVertexAttribI4i*(index: GLuint; x: GLint; y: GLint; z: GLint; w: GLint)
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


proc glVertexAttribI4ui*(index: GLuint; x: GLuint; y: GLuint; z: GLuint;
  w: GLuint) {.importc.}
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


proc glVertexAttribI4iv*(index: GLuint; v: ptr GLint) {.importc.}
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


proc glVertexAttribI4uiv*(index: GLuint; v: ptr GLuint) {.importc.}
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


proc glGetUniformuiv*(program: GLuint; location: GLint; params: ptr GLuint)
  {.importc.}
  ## Returns the value of a uniform variable.
  ##
  ## program
  ##   Specifies the program object to be queried.
  ## location
  ##   Specifies the location of the uniform variable to be queried.
  ## params
  ##   Returns the value of the specified uniform variable.


proc glGetFragDataLocation*(program: GLuint; name: ptr GLchar): GLint
  {.importc.}
  ## Query the bindings of color numbers to user-defined varying out variables.
  ##
  ## program
  ##   The name of the program containing varying out variable whose binding to
  ##   query.
  ## name
  ##   The name of the user-defined varying out variable whose binding to query.


proc glUniform1ui*(location: GLint; v0: GLuint) {.importc.}
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


proc glUniform2ui*(location: GLint; v0: GLuint; v1: GLuint) {.importc.}
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


proc glUniform3ui*(location: GLint; v0: GLuint; v1: GLuint; v2: GLuint)
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


proc glUniform4ui*(location: GLint; v0: GLuint; v1: GLuint; v2: GLuint;
  v3: GLuint) {.importc.}
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


proc glUniform1uiv*(location: GLint; count: GLsizei; value: ptr GLuint)
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


proc glUniform2uiv*(location: GLint; count: GLsizei; value: ptr GLuint)
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


proc glUniform3uiv*(location: GLint; count: GLsizei; value: ptr GLuint)
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


proc glUniform4uiv*(location: GLint; count: GLsizei; value: ptr GLuint)
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


proc glClearBufferiv*(buffer: GLenum; drawbuffer: GLint; value: ptr GLint)
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


proc glClearBufferuiv*(buffer: GLenum; drawbuffer: GLint; value: ptr GLuint)
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


proc glClearBufferfv*(buffer: GLenum; drawbuffer: GLint; value: ptr GLfloat)
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


proc glClearBufferfi*(buffer: GLenum; drawbuffer: GLint; depth: GLfloat;
  stencil: GLint) {.importc.}


proc glGetStringi*(name: GLenum; index: GLuint): ptr GLubyte {.importc.}
  ## Return a string describing the current GL connection.
  ##
  ## name
  ##   Specifies a symbolic constant (accepts only the `glExtensions` token).
  ## index
  ##   Specifies the index of the string to return.


proc glCopyBufferSubData*(readTarget: GLenum; writeTarget: GLenum;
  readOffset: GLintptr; writeOffset: GLintptr; size: GLsizeiptr) {.importc.}
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


proc glGetUniformIndices*(program: GLuint; uniformCount: GLsizei;
  uniformNames: ptr ptr GLchar; uniformIndices: ptr GLuint) {.importc.}
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


proc glGetActiveUniformsiv*(program: GLuint; uniformCount: GLsizei;
  uniformIndices: ptr GLuint; pname: GLenum; params: ptr GLint) {.importc.}
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


proc glGetUniformBlockIndex*(program: GLuint; uniformBlockName: ptr GLchar):
  GLuint {.importc.}
  ## Retrieve the index of a named uniform block.
  ##
  ## program
  ##   Specifies the name of a program containing the uniform block.
  ## uniformBlockName
  ##   Specifies the address an array of characters containing the name of the
  ##   uniform block whose index to retrieve.


proc glGetActiveUniformBlockiv*(program: GLuint; uniformBlockIndex: GLuint;
  pname: GLenum; params: ptr GLint) {.importc.}
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


proc glGetActiveUniformBlockName*(program: GLuint; uniformBlockIndex: GLuint;
  bufSize: GLsizei; length: ptr GLsizei; uniformBlockName: ptr GLchar)
  {.importc.}


proc glUniformBlockBinding*(program: GLuint; uniformBlockIndex: GLuint;
  uniformBlockBinding: GLuint) {.importc.}
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


proc glDrawArraysInstanced*(mode: GLenum; first: GLint; count: GLsizei;
  instancecount: GLsizei) {.importc.}
  ## Draw multiple instances of a range of elements.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `glPoints`, `glLineStrip`, `glLineLoop`, `glLines`, `glTriangleStrip`,
  ##   `glTriangleFan` and `glTriangles` are accepted.
  ## first
  ##   Specifies the starting index in the enabled arrays.
  ## count
  ##   Specifies the number of indices to be rendered.
  ## primcount
  ##   Specifies the number of instances of the specified range of indices to be
  ##   rendered.


proc glDrawElementsInstanced*(mode: GLenum; count: GLsizei; `type`: GLenum;
  indices: pointer; instancecount: GLsizei) {.importc.}
  ## Draw multiple instances of a set of elements.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `glPoints`, `glLineStrip`, `glLineLoop`, `glLines`, `glTriangleStrip`,
  ##   `glTriangleFan` and `glTriangles` are accepted.
  ## count
  ##   Specifies the number of elements to be rendered.
  ## type
  ##   Specifies the type of the values in indices. Must be one of
  ##   `glUnsignedByte`, `glUnsignedShort`, or `glUnsignedInt`.
  ## indices
  ##   Specifies a byte offset (cast to a pointer type) into the buffer bound to
  ##   `glElementArrayBuffer` to start reading indices from. If no buffer is
  ##   bound, specifies a pointer to the location where the indices are stored.
  ## primcount
  ##   Specifies the number of instances of the specified range of indices to be
  ##   rendered.


proc glFenceSync*(condition: GLenum; flags: GLbitfield): GLsync {.importc.}
  ## Create a new sync object and insert it into the GL command stream.
  ##
  ## condition
  ##   Specifies the condition that must be met to set the sync object's state
  ##   to signaled (must be `glSyncGpuCommandsComplete`).
  ## flags
  ##   Specifies a bitwise combination of flags controlling the behavior of the
  ##   sync object. No flags are presently defined for this operation and
  ##   `flags` must be zero.


proc glIsSync*(sync: GLsync): GLboolean {.importc.}
  ## Determine if a name corresponds to a sync object.
  ##
  ## sync
  ##   Specifies a value that may be the name of a sync object.


proc glDeleteSync*(sync: GLsync) {.importc.}
  ## Delete a sync object.
  ##
  ## sync
  ##   The sync object to be deleted.


proc glClientWaitSync*(sync: GLsync; flags: GLbitfield; timeout: GLuint64):
  GLenum {.importc.}
  ## Block and wait for a sync object to become signaled.
  ##
  ## sync
  ##   The sync object whose status to wait on.
  ## flags
  ##   A bitfield controlling the command flushing behavior. flags may be
  ##   `glSyncFlushCommandsBit`.
  ## timeout
  ##   The timeout, specified in nanoseconds, for which the implementation
  ##   should wait for sync to become signaled.


proc glWaitSync*(sync: GLsync; flags: GLbitfield; timeout: GLuint64) {.importc.}
  ## Instruct the GL server to block until the specified sync object becomes
  ## signaled.
  ##
  ## sync
  ##   Specifies the sync object whose status to wait on.
  ## flags
  ##   A bitfield controlling the command flushing behavior (must be zero).
  ## timeout
  ##   Specifies the timeout that the server should wait before continuing (must
  ##   `glTimeoutIgnored`).


proc glGetInteger64v*(pname: GLenum; data: ptr GLint64) {.importc.}
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


proc glGetSynciv*(sync: GLsync; pname: GLenum; bufSize: GLsizei;
  length: ptr GLsizei; values: ptr GLint) {.importc.}
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
  ##   Specifies the address of an array to receive the values of the queried parameter.


proc glGetInteger64iv*(target: GLenum; index: GLuint; data: ptr GLint64)
  {.importc.}
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


proc glGetBufferParameteri64v*(target: GLenum; pname: GLenum;
  params: ptr GLint64) {.importc.}
  ## Return parameters of a buffer object.
  ##
  ## target
  ##   Specifies the target buffer object. The symbolic constant must be
  ##   `glArrayBuffer`, `glCopyReadBuffer`, `glCopyWriteBuffer`,
  ##   `glElementArrayBuffer`, `glPixelPackBuffer`, `glPixelUnpackBuffer`,
  ##   `glTransformFeedbackBuffer`, or `glUniformBuffer`.
  ## value
  ##   Specifies the symbolic name of a buffer object parameter. Accepted values
  ##   are `glBufferAccessFlags`, `glBufferMapped`, `glBufferMapLength`,
  ##   `glBufferMapOffset`, `glBufferSize`, or `glBufferUsage`.
  ## data
  ##   Returns the requested parameter.


proc glGenSamplers*(count: GLsizei; samplers: ptr GLuint) {.importc.}
  ## Generate sampler object names.
  ##
  ## n
  ##   Specifies the number of sampler object names to generate.
  ## samplers
  ##   Specifies an array in which the generated sampler object names are stored.


proc glDeleteSamplers*(count: GLsizei; samplers: ptr GLuint) {.importc.}
  ## Delete named sampler objects.
  ##
  ## n
  ##   Specifies the number of sampler objects to be deleted.
  ## samplers
  ##   Specifies an array of sampler objects to be deleted.


proc glIsSampler*(sampler: GLuint): GLboolean {.importc.}
  ## Determine if a name corresponds to a sampler object.
  ##
  ## id
  ##   Specifies a value that may be the name of a sampler object.


proc glBindSampler*(unit: GLuint; sampler: GLuint) {.importc.}
  ## Bind a named sampler to a texturing target.
  ##
  ## unit
  ##   Specifies the index of the texture unit to which the sampler is bound.
  ## sampler
  ##   Specifies the name of a sampler.


proc glSamplerParameteri*(sampler: GLuint; pname: GLenum; param: GLint)
  {.importc.}
  ## Set sampler parameters.
  ##
  ## sampler
  ##   Specifies the sampler object whose parameter to modify.
  ## pname
  ##   Specifies the symbolic name of a single-valued sampler parameter. `pname`
  ##   can be one of the following: `glTextureWrapS`, `glTextureWrapT`,
  ##   `glTextureWrapR`, `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureMinLod`, `glTextureMaxLod`, `glTextureCompareMode`, or
  ##   `glTextureCompareFunc`.
  ## param
  ##   For the scalar commands, specifies the value of `pname`.
  ## params
  ##   For the vector commands (`glSamplerParameter*v`), specifies a pointer to
  ##   an array where the value or values of pname are stored.


proc glSamplerParameteriv*(sampler: GLuint; pname: GLenum; param: ptr GLint)
  {.importc.}
  ## Set sampler parameters.
  ##
  ## sampler
  ##   Specifies the sampler object whose parameter to modify.
  ## pname
  ##   Specifies the symbolic name of a single-valued sampler parameter. `pname`
  ##   can be one of the following: `glTextureWrapS`, `glTextureWrapT`,
  ##   `glTextureWrapR`, `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureMinLod`, `glTextureMaxLod`, `glTextureCompareMode`, or
  ##   `glTextureCompareFunc`.
  ## param
  ##   For the scalar commands, specifies the value of `pname`.
  ## params
  ##   For the vector commands (`glSamplerParameter*v`), specifies a pointer to
  ##   an array where the value or values of pname are stored.


proc glSamplerParameterf*(sampler: GLuint; pname: GLenum; param: GLfloat)
  {.importc.}
  ## Set sampler parameters.
  ##
  ## sampler
  ##   Specifies the sampler object whose parameter to modify.
  ## pname
  ##   Specifies the symbolic name of a single-valued sampler parameter. `pname`
  ##   can be one of the following: `glTextureWrapS`, `glTextureWrapT`,
  ##   `glTextureWrapR`, `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureMinLod`, `glTextureMaxLod`, `glTextureCompareMode`, or
  ##   `glTextureCompareFunc`.
  ## param
  ##   For the scalar commands, specifies the value of `pname`.
  ## params
  ##   For the vector commands (`glSamplerParameter*v`), specifies a pointer to
  ##   an array where the value or values of pname are stored.


proc glSamplerParameterfv*(sampler: GLuint; pname: GLenum; param: ptr GLfloat)
  {.importc.}
  ## Set sampler parameters.
  ##
  ## sampler
  ##   Specifies the sampler object whose parameter to modify.
  ## pname
  ##   Specifies the symbolic name of a single-valued sampler parameter. `pname`
  ##   can be one of the following: `glTextureWrapS`, `glTextureWrapT`,
  ##   `glTextureWrapR`, `glTextureMinFilter`, `glTextureMagFilter`,
  ##   `glTextureMinLod`, `glTextureMaxLod`, `glTextureCompareMode`, or
  ##   `glTextureCompareFunc`.
  ## param
  ##   For the scalar commands, specifies the value of `pname`.
  ## params
  ##   For the vector commands (`glSamplerParameter*v`), specifies a pointer to
  ##   an array where the value or values of pname are stored.


proc glGetSamplerParameteriv*(sampler: GLuint; pname: GLenum;
                              params: ptr GLint) {.importc.}
  ## Return sampler parameter values.
  ##
  ## sampler
  ##   Specifies name of the sampler object from which to retrieve parameters.
  ## pname
  ##   Specifies the symbolic name of a sampler parameter. `glTextureMagFilter`,
  ##   `glTextureMinFilter`, `glTextureMinLod`, `glTextureMaxLod`,
  ##   `glTextureWrapS`, `glTextureWrapT`, `glTextureWrapR`,
  ##   `glTextureCompareMode`, and `glTextureCompareFunc` are accepted.
  ## params
  ##   Returns the sampler parameters.


proc glGetSamplerParameterfv*(sampler: GLuint; pname: GLenum;
                              params: ptr GLfloat) {.importc.}
  ## Return sampler parameter values.
  ##
  ## sampler
  ##   Specifies name of the sampler object from which to retrieve parameters.
  ## pname
  ##   Specifies the symbolic name of a sampler parameter. `glTextureMagFilter`,
  ##   `glTextureMinFilter`, `glTextureMinLod`, `glTextureMaxLod`,
  ##   `glTextureWrapS`, `glTextureWrapT`, `glTextureWrapR`,
  ##   `glTextureCompareMode`, and `glTextureCompareFunc` are accepted.
  ## params
  ##   Returns the sampler parameters.


proc glVertexAttribDivisor*(index: GLuint; divisor: GLuint) {.importc.}
  ## Modify the rate at which generic vertex attributes advance during instanced
  ## rendering.
  ##
  ## index
  ##   Specify the index of the generic vertex attribute.
  ## divisor
  ##   Specify the number of instances that will pass between updates of the
  ##   generic attribute at slot `index`.


proc glBindTransformFeedback*(target: GLenum; id: GLuint) {.importc.}
  ## Bind a transform feedback object.
  ##
  ## target
  ##   Specifies the target to which to bind the transform feedback object id
  ##   (must be `glTransformFeedback`).
  ## id
  ##  Specifies the name of a transform feedback object reserved by
  ##  `glGenTransformFeedbacks <#glGenTransformFeedbacks>`_.


proc glDeleteTransformFeedbacks*(n: GLsizei; ids: ptr GLuint) {.importc.}
  ## Delete transform feedback objects.
  ##
  ## n
  ##   Specifies the number of transform feedback objects to delete.
  ## ids
  ##   Specifies an array of names of transform feedback objects to delete.


proc glGenTransformFeedbacks*(n: GLsizei; ids: ptr GLuint) {.importc.}
  ## Reserve transform feedback object names.
  ##
  ## n
  ##   Specifies the number of transform feedback object names to reserve.
  ## ids
  ##   Specifies an array of into which the reserved names will be written.


proc glIsTransformFeedback*(id: GLuint): GLboolean {.importc.}
  ## Determine if a name corresponds to a transform feedback object.
  ##
  ## id
  ##   Specifies a value that may be the name of a transform feedback object.


proc glPauseTransformFeedback*() {.importc.}
  ## Pause transform feedback operations.


proc glResumeTransformFeedback*() {.importc.}
  ## Resume transform feedback operations.


proc glGetProgramBinary*(program: GLuint; bufSize: GLsizei; length: ptr GLsizei;
  binaryFormat: ptr GLenum; binary: pointer) {.importc.}
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


proc glProgramBinary*(program: GLuint; binaryFormat: GLenum; binary: pointer;
  length: GLsizei) {.importc.}
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


proc glProgramParameteri*(program: GLuint; pname: GLenum; value: GLint)
  {.importc.}
  ## Specify a parameter for a program object.
  ##
  ## program
  ##   Specifies the name of a program object whose parameter to modify.
  ## pname
  ##   Specifies the name of the parameter to modify.
  ## value
  ##   Specifies the new value of the parameter specified by `pname` for program.


proc glInvalidateFramebuffer*(target: GLenum; numAttachments: GLsizei;
  attachments: ptr GLenum) {.importc.}
  ## Invalidate the contents of attachments within a framebuffer.
  ##
  ## target
  ##   Specifies the target of the invalidate operation. Must be `glFramebuffer`.
  ## numAttachments
  ##   Specifies how many attachments are supplied in the attachments list.
  ## attachments
  ##   A list of numAttachments attachments to invalidate.


proc glInvalidateSubFramebuffer*(target: GLenum; numAttachments: GLsizei;
  attachments: ptr GLenum; x: GLint; y: GLint; width: GLsizei; height: GLsizei)
  {.importc.}
  ## Invalidate portions of the contents of attachments within a framebuffer.
  ##
  ## target
  ##   Specifies the target of the invalidate operation. Must be `glFramebuffer`.
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


proc glTexStorage2D*(target: GLenum; levels: GLsizei; internalformat: GLenum;
  width: GLsizei; height: GLsizei) {.importc.}
  ## Simultaneously specify storage for all levels of a two-dimensional texture.
  ##
  ## target
  ##   Specify the target of the operation. target must be one of `glTexture2d`,
  ##   or `glTextureCubeMap`.
  ## levels
  ##   Specify the number of texture levels.
  ## internalformat
  ##   Specifies the sized internal format to be used to store texture image data.
  ## width
  ##   Specifies the width of the texture, in texels.
  ## height
  ##   Specifies the height of the texture, in texels.


proc glTexStorage3D*(target: GLenum; levels: GLsizei; internalformat: GLenum;
  width: GLsizei; height: GLsizei; depth: GLsizei) {.importc.}
  ## Simultaneously specify storage for all levels of a three-dimensional or
  ## two-dimensional array texture.
  ##
  ## target
  ##   Specify the target of the operation. target must be one of `glTexture3d`,
  ##   or `glTexture2dArray`.
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


proc glGetInternalformativ*(target: GLenum; internalformat: GLenum;
  pname: GLenum; bufSize: GLsizei; params: ptr GLint) {.importc.}
  ## Retrieve information about implementation-dependent support for internal
  ## formats.
  ##
  ## target
  ##   Indicates the usage of the internal format (must be `glRenderbuffer`).
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

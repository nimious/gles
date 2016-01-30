## *gles* - Nim bindings for OpenGL ES, the embedded 3D graphics library.
##
## This file is part of the `Nim I/O <http://nimio.us>`_ package collection.
## See the file LICENSE included in this distribution for licensing details.
## GitHub pull requests are encouraged. (c) 2015 Headcrash Industries LLC.

{.deadCodeElim: on.}

include gles3/gl3


const
  GL_COMPUTE_SHADER* = 0x000091B9
  GL_MAX_COMPUTE_UNIFORM_BLOCKS* = 0x000091BB
  GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS* = 0x000091BC
  GL_MAX_COMPUTE_IMAGE_UNIFORMS* = 0x000091BD
  GL_MAX_COMPUTE_SHARED_MEMORY_SIZE* = 0x00008262
  GL_MAX_COMPUTE_UNIFORM_COMPONENTS* = 0x00008263
  GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS* = 0x00008264
  GL_MAX_COMPUTE_ATOMIC_COUNTERS* = 0x00008265
  GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS* = 0x00008266
  GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS* = 0x000090EB
  GL_MAX_COMPUTE_WORK_GROUP_COUNT* = 0x000091BE
  GL_MAX_COMPUTE_WORK_GROUP_SIZE* = 0x000091BF
  GL_COMPUTE_WORK_GROUP_SIZE* = 0x00008267
  GL_DISPATCH_INDIRECT_BUFFER* = 0x000090EE
  GL_DISPATCH_INDIRECT_BUFFER_BINDING* = 0x000090EF
  GL_COMPUTE_SHADER_BIT* = 0x00000020
  GL_DRAW_INDIRECT_BUFFER* = 0x00008F3F
  GL_DRAW_INDIRECT_BUFFER_BINDING* = 0x00008F43
  GL_MAX_UNIFORM_LOCATIONS* = 0x0000826E
  GL_FRAMEBUFFER_DEFAULT_WIDTH* = 0x00009310
  GL_FRAMEBUFFER_DEFAULT_HEIGHT* = 0x00009311
  GL_FRAMEBUFFER_DEFAULT_SAMPLES* = 0x00009313
  GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS* = 0x00009314
  GL_MAX_FRAMEBUFFER_WIDTH* = 0x00009315
  GL_MAX_FRAMEBUFFER_HEIGHT* = 0x00009316
  GL_MAX_FRAMEBUFFER_SAMPLES* = 0x00009318
  GL_UNIFORM* = 0x000092E1
  GL_UNIFORM_BLOCK* = 0x000092E2
  GL_PROGRAM_INPUT* = 0x000092E3
  GL_PROGRAM_OUTPUT* = 0x000092E4
  GL_BUFFER_VARIABLE* = 0x000092E5
  GL_SHADER_STORAGE_BLOCK* = 0x000092E6
  GL_ATOMIC_COUNTER_BUFFER* = 0x000092C0
  GL_TRANSFORM_FEEDBACK_VARYING* = 0x000092F4
  GL_ACTIVE_RESOURCES* = 0x000092F5
  GL_MAX_NAME_LENGTH* = 0x000092F6
  GL_MAX_NUM_ACTIVE_VARIABLES* = 0x000092F7
  GL_NAME_LENGTH* = 0x000092F9
  GL_TYPE* = 0x000092FA
  GL_ARRAY_SIZE* = 0x000092FB
  GL_OFFSET* = 0x000092FC
  GL_BLOCK_INDEX* = 0x000092FD
  GL_ARRAY_STRIDE* = 0x000092FE
  GL_MATRIX_STRIDE* = 0x000092FF
  GL_IS_ROW_MAJOR* = 0x00009300
  GL_ATOMIC_COUNTER_BUFFER_INDEX* = 0x00009301
  GL_BUFFER_BINDING* = 0x00009302
  GL_BUFFER_DATA_SIZE* = 0x00009303
  GL_NUM_ACTIVE_VARIABLES* = 0x00009304
  GL_ACTIVE_VARIABLES* = 0x00009305
  GL_REFERENCED_BY_VERTEX_SHADER* = 0x00009306
  GL_REFERENCED_BY_FRAGMENT_SHADER* = 0x0000930A
  GL_REFERENCED_BY_COMPUTE_SHADER* = 0x0000930B
  GL_TOP_LEVEL_ARRAY_SIZE* = 0x0000930C
  GL_TOP_LEVEL_ARRAY_STRIDE* = 0x0000930D
  GL_LOCATION* = 0x0000930E
  GL_VERTEX_SHADER_BIT* = 0x00000001
  GL_FRAGMENT_SHADER_BIT* = 0x00000002
  GL_ALL_SHADER_BITS* = 0xFFFFFFFF
  GL_PROGRAM_SEPARABLE* = 0x00008258
  GL_ACTIVE_PROGRAM* = 0x00008259
  GL_PROGRAM_PIPELINE_BINDING* = 0x0000825A
  GL_ATOMIC_COUNTER_BUFFER_BINDING* = 0x000092C1
  GL_ATOMIC_COUNTER_BUFFER_START* = 0x000092C2
  GL_ATOMIC_COUNTER_BUFFER_SIZE* = 0x000092C3
  GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS* = 0x000092CC
  GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS* = 0x000092D0
  GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS* = 0x000092D1
  GL_MAX_VERTEX_ATOMIC_COUNTERS* = 0x000092D2
  GL_MAX_FRAGMENT_ATOMIC_COUNTERS* = 0x000092D6
  GL_MAX_COMBINED_ATOMIC_COUNTERS* = 0x000092D7
  GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE* = 0x000092D8
  GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS* = 0x000092DC
  GL_ACTIVE_ATOMIC_COUNTER_BUFFERS* = 0x000092D9
  GL_UNSIGNED_INT_ATOMIC_COUNTER* = 0x000092DB
  GL_MAX_IMAGE_UNITS* = 0x00008F38
  GL_MAX_VERTEX_IMAGE_UNIFORMS* = 0x000090CA
  GL_MAX_FRAGMENT_IMAGE_UNIFORMS* = 0x000090CE
  GL_MAX_COMBINED_IMAGE_UNIFORMS* = 0x000090CF
  GL_IMAGE_BINDING_NAME* = 0x00008F3A
  GL_IMAGE_BINDING_LEVEL* = 0x00008F3B
  GL_IMAGE_BINDING_LAYERED* = 0x00008F3C
  GL_IMAGE_BINDING_LAYER* = 0x00008F3D
  GL_IMAGE_BINDING_ACCESS* = 0x00008F3E
  GL_IMAGE_BINDING_FORMAT* = 0x0000906E
  GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT* = 0x00000001
  GL_ELEMENT_ARRAY_BARRIER_BIT* = 0x00000002
  GL_UNIFORM_BARRIER_BIT* = 0x00000004
  GL_TEXTURE_FETCH_BARRIER_BIT* = 0x00000008
  GL_SHADER_IMAGE_ACCESS_BARRIER_BIT* = 0x00000020
  GL_COMMAND_BARRIER_BIT* = 0x00000040
  GL_PIXEL_BUFFER_BARRIER_BIT* = 0x00000080
  GL_TEXTURE_UPDATE_BARRIER_BIT* = 0x00000100
  GL_BUFFER_UPDATE_BARRIER_BIT* = 0x00000200
  GL_FRAMEBUFFER_BARRIER_BIT* = 0x00000400
  GL_TRANSFORM_FEEDBACK_BARRIER_BIT* = 0x00000800
  GL_ATOMIC_COUNTER_BARRIER_BIT* = 0x00001000
  GL_ALL_BARRIER_BITS* = 0xFFFFFFFF
  GL_IMAGE_2D* = 0x0000904D
  GL_IMAGE_3D* = 0x0000904E
  GL_IMAGE_CUBE* = 0x00009050
  GL_IMAGE_2D_ARRAY* = 0x00009053
  cGL_INT_IMAGE_2D* = 0x00009058
  cGL_INT_IMAGE_3D* = 0x00009059
  cGL_INT_IMAGE_CUBE* = 0x0000905B
  cGL_INT_IMAGE_2D_ARRAY* = 0x0000905E
  GL_UNSIGNED_INT_IMAGE_2D* = 0x00009063
  GL_UNSIGNED_INT_IMAGE_3D* = 0x00009064
  GL_UNSIGNED_INT_IMAGE_CUBE* = 0x00009066
  GL_UNSIGNED_INT_IMAGE_2D_ARRAY* = 0x00009069
  GL_IMAGE_FORMAT_COMPATIBILITY_TYPE* = 0x000090C7
  GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE* = 0x000090C8
  GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS* = 0x000090C9
  GL_READ_ONLY* = 0x000088B8
  GL_WRITE_ONLY* = 0x000088B9
  GL_READ_WRITE* = 0x000088BA
  GL_SHADER_STORAGE_BUFFER* = 0x000090D2
  GL_SHADER_STORAGE_BUFFER_BINDING* = 0x000090D3
  GL_SHADER_STORAGE_BUFFER_START* = 0x000090D4
  GL_SHADER_STORAGE_BUFFER_SIZE* = 0x000090D5
  GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS* = 0x000090D6
  GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS* = 0x000090DA
  GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS* = 0x000090DB
  GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS* = 0x000090DC
  GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS* = 0x000090DD
  GL_MAX_SHADER_STORAGE_BLOCK_SIZE* = 0x000090DE
  GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT* = 0x000090DF
  GL_SHADER_STORAGE_BARRIER_BIT* = 0x00002000
  GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES* = 0x00008F39
  GL_DEPTH_STENCIL_TEXTURE_MODE* = 0x000090EA
  GL_STENCIL_INDEX* = 0x00001901
  GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET* = 0x00008E5E
  GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET* = 0x00008E5F
  GL_SAMPLE_POSITION* = 0x00008E50
  GL_SAMPLE_MASK* = 0x00008E51
  GL_SAMPLE_MASK_VALUE* = 0x00008E52
  GL_TEXTURE_2D_MULTISAMPLE* = 0x00009100
  GL_MAX_SAMPLE_MASK_WORDS* = 0x00008E59
  GL_MAX_COLOR_TEXTURE_SAMPLES* = 0x0000910E
  GL_MAX_DEPTH_TEXTURE_SAMPLES* = 0x0000910F
  GL_MAX_INTEGER_SAMPLES* = 0x00009110
  GL_TEXTURE_BINDING_2D_MULTISAMPLE* = 0x00009104
  GL_TEXTURE_SAMPLES* = 0x00009106
  GL_TEXTURE_FIXED_SAMPLE_LOCATIONS* = 0x00009107
  GL_TEXTURE_WIDTH* = 0x00001000
  GL_TEXTURE_HEIGHT* = 0x00001001
  GL_TEXTURE_DEPTH* = 0x00008071
  GL_TEXTURE_INTERNAL_FORMAT* = 0x00001003
  GL_TEXTURE_RED_SIZE* = 0x0000805C
  GL_TEXTURE_GREEN_SIZE* = 0x0000805D
  GL_TEXTURE_BLUE_SIZE* = 0x0000805E
  GL_TEXTURE_ALPHA_SIZE* = 0x0000805F
  GL_TEXTURE_DEPTH_SIZE* = 0x0000884A
  GL_TEXTURE_STENCIL_SIZE* = 0x000088F1
  GL_TEXTURE_SHARED_SIZE* = 0x00008C3F
  GL_TEXTURE_RED_TYPE* = 0x00008C10
  GL_TEXTURE_GREEN_TYPE* = 0x00008C11
  GL_TEXTURE_BLUE_TYPE* = 0x00008C12
  GL_TEXTURE_ALPHA_TYPE* = 0x00008C13
  GL_TEXTURE_DEPTH_TYPE* = 0x00008C16
  GL_TEXTURE_COMPRESSED* = 0x000086A1
  GL_SAMPLER_2D_MULTISAMPLE* = 0x00009108
  cGL_INT_SAMPLER_2D_MULTISAMPLE* = 0x00009109
  GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE* = 0x0000910A
  GL_VERTEX_ATTRIB_BINDING* = 0x000082D4
  GL_VERTEX_ATTRIB_RELATIVE_OFFSET* = 0x000082D5
  GL_VERTEX_BINDING_DIVISOR* = 0x000082D6
  GL_VERTEX_BINDING_OFFSET* = 0x000082D7
  GL_VERTEX_BINDING_STRIDE* = 0x000082D8
  GL_VERTEX_BINDING_BUFFER* = 0x00008F4F
  GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET* = 0x000082D9
  GL_MAX_VERTEX_ATTRIB_BINDINGS* = 0x000082DA
  GL_MAX_VERTEX_ATTRIB_STRIDE* = 0x000082E5


proc glDispatchCompute*(numGroupsX: GlUint; numGroupsY: GlUint;
  numGroupsZ: GlUint) {.importc.}
  ## Launch one or more compute work groups.
  ##
  ## numGroupsX
  ##   The number of work groups to be launched in the X dimension.
  ## numGroupsY
  ##   The number of work groups to be launched in the Y dimension.
  ## numGroupsZ
  ##   The number of work groups to be launched in the Z dimension.


proc glDispatchComputeIndirect*(indirect: GlIntptr) {.importc.}
  ## Launch one or more compute work groups using parameters stored in a buffer.
  ##
  ## indirect
  ##   The offset into the buffer object currently bound to the
  ##   `glDispatchIndirectBuffer` buffer target at which the dispatch parameters
  ##   are stored.


proc glDrawArraysIndirect*(mode: GlEnum; indirect: pointer) {.importc.}
  ## Render primitives from array data, taking parameters from memory.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `GL_POINTS`, `GL_LINE_STRIP`, `GL_LINE_LOOP`, `GL_LINES`,
  ##   `GL_TRIANGLE_STRIP`, `GL_TRIANGLE_FAN`, and `GL_TRIANGLES` are accepted.
  ## indirect
  ##   Specifies the address of a structure containing the draw parameters.


proc glDrawElementsIndirect*(mode: GlEnum; dataType: GlEnum; indirect: pointer)
  {.importc.}
  ## Render indexed primitives from array data, taking parameters from memory.
  ##
  ## mode
  ##   Specifies what kind of primitives to render. Symbolic constants
  ##   `GL_POINTS`, `GL_LINE_STRIP`, `GL_LINE_LOOP`, `GL_LINES`,
  ##   `GL_TRIANGLE_STRIP`, `GL_TRIANGLE_FAN`, and `GL_TRIANGLES`, are accepted.
  ## dataType
  ##   Specifies the type of data in the buffer bound to the
  ##   `GL_ELEMENT_ARRAY_BUFFER` binding.
  ## indirect
  ##   Specifies the address of a structure containing the draw parameters.


proc glFramebufferParameteri*(target: GlEnum; pname: GlEnum; param: GlInt)
  {.importc.}
  ## Set a named parameter of a framebuffer.
  ##
  ## target
  ##   The target of the operation, which must be `GL_READ_FRAMEBUFFER`,
  ##   `GL_DRAW_FRAMEBUFFER` or `GL_FRAMEBUFFER`.
  ## pname
  ##   A token indicating the parameter to be modified.
  ## param
  ##   The new value for the parameter named pname.


proc glGetFramebufferParameteriv*(target: GlEnum; pname: GlEnum;
  params: ptr GlInt) {.importc.}
  ## Retrieve a named parameter from a framebuffer.
  ##
  ## target
  ##   The target of the operation, which must be `GL_READ_FRAMEBUFFER`,
  ##   `GL_DRAW_FRAMEBUFFER` or `GL_FRAMEBUFFER`.
  ## pname
  ##   A token indicating the parameter to be retrieved.
  ## params
  ##   The address of a variable to receive the value of the parameter named
  ##   `pname`.


proc glGetProgramInterfaceiv*(program: GlUint; programInterface: GlEnum;
  pname: GlEnum; params: ptr GlInt) {.importc.}
  ## Query a property of an interface in a program.
  ##
  ## program
  ##   The name of a program object whose interface to query.
  ## programInterface
  ##   A token identifying the interface within program to query.
  ## pname
  ##   The name of the parameter within programInterface to query.
  ## params
  ##   The address of a variable to retrieve the value of pname for the program
  ##   interface.


proc glGetProgramResourceIndex*(program: GlUint; programInterface: GlEnum;
  name: ptr GLchar): GlUint {.importc.}
  ## Query the index of a named resource within a program.
  ##
  ## program
  ##   The name of a program object whose resources to query.
  ## programInterface
  ##   A token identifying the interface within program containing the resource
  ##   named name.
  ## name
  ##   The name of the resource to query the index of.


proc glGetProgramResourceName*(program: GlUint; programInterface: GlEnum;
  index: GlUint; bufSize: GlSizei; length: ptr GlSizei; name: ptr GLchar)
  {.importc.}
  ## Query the name of an indexed resource within a program.
  ##
  ## program
  ##   The name of a program object whose resources to query.
  ## programInterface
  ##   A token identifying the interface within program containing the indexed
  ##   resource.
  ## index
  ##   The index of the resource within programInterface of program.
  ## bufSize
  ##   The size of the character array whose address is given by `name`.
  ## length
  ##   The address of a variable which will receive the length of the resource
  ##   name.
  ## name
  ##   The address of a character array into which will be written the name of
  ##   the resource.


proc glGetProgramResourceiv*(program: GlUint; programInterface: GlEnum;
  index: GlUint; propCount: GlSizei; props: ptr GlEnum; bufSize: GlSizei;
  length: ptr GlSizei; params: ptr GlInt) {.importc.}
  ## Retrieve values for multiple properties of a single active resource within
  ## a program object.
  ##
  ## program
  ##   The name of a program object whose resources to query.
  ## programInterface
  ##   A token identifying the interface within program containing the resource
  ##   named `name`.


proc glGetProgramResourceLocation*(program: GlUint; programInterface: GlEnum;
  name: ptr GLchar): GlInt {.importc.}
  ## Query the location of a named resource within a program.
  ##
  ## program
  ##   The name of a program object whose resources to query.
  ## programInterface
  ##   A token identifying the interface within program containing the resource
  ##   named `name`.
  ## name
  ##   The name of the resource to query the location of.


proc glUseProgramStages*(pipeline: GlUint; stages: GlBitfield; program: GlUint)
  {.importc.}
  ## Bind stages of a program object to a program pipeline.
  ##
  ## pipeline
  ##   Specifies the program pipeline object to which to bind stages from
  ##   program.
  ## stages
  ##   Specifies a set of program stages to bind to the program pipeline object.
  ## program
  ##   Specifies the program object containing the shader executables to use in
  ##   pipeline.


proc glActiveShaderProgram*(pipeline: GlUint; program: GlUint) {.importc.}
  ## Set the active program object for a program pipeline object.
  ##
  ## pipeline
  ##   Specifies the program pipeline object to set the active program object
  ##   for.
  ## program
  ##   Specifies the program object to set as the active program pipeline object
  ##   pipeline.


proc glCreateShaderProgramv*(shaderType: GlEnum; count: GlSizei;
  strings: ptr ptr GLchar): GlUint {.importc.}
  ## Create a stand-alone program from an array of null-terminated source code
  ## strings.
  ##
  ## shaderType
  ##   Specifies the type of shader to create.
  ## count
  ##   Specifies the number of source code strings in the array strings.
  ## strings
  ##   Specifies the address of an array of pointers to source code strings from
  ##   which to create the program object.


proc glBindProgramPipeline*(pipeline: GlUint) {.importc.}
  ## Bind a program pipeline to the current context.
  ##
  ## pipeline
  ##  Specifies the name of the pipeline object to bind to the context.


proc glDeleteProgramPipelines*(n: GlSizei; pipelines: ptr GlUint) {.importc.}
  ## Delete program pipeline objects.
  ##
  ## n
  ##   Specifies the number of program pipeline objects to delete.
  ## pipelines
  ##   Specifies an array of names of program pipeline objects to delete.


proc glGenProgramPipelines*(n: GlSizei; pipelines: ptr GlUint) {.importc.}
  ## Reserve program pipeline object names.
  ##
  ## n
  ##   Specifies the number of program pipeline object names to reserve.
  ## pipelines
  ##   Specifies an array of into which the reserved names will be written.


proc glIsProgramPipeline*(pipeline: GlUint): GlBoolean {.importc.}
  ## Determine if a name corresponds to a program pipeline object.
  ##
  ## pipeline
  ##   Specifies a value that may be the name of a program pipeline object.


proc glGetProgramPipelineiv*(pipeline: GlUint; pname: GlEnum; params: ptr GlInt)
  {.importc.}
  ## Retrieve properties of a program pipeline object.
  ##
  ## pipeline
  ##   Specifies the name of a program pipeline object whose parameter retrieve.
  ## pname
  ##   Specifies the name of the parameter to retrieve.
  ## params
  ##   Specifies the address of a variable into which will be written the value
  ##   or values of pname for pipeline.


proc glProgramUniform1i*(program: GlUint; location: GlInt; v0: GlInt)
  {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform2i*(program: GlUint; location: GlInt; v0: GlInt; v1: GlInt)
  {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform3i*(program: GlUint; location: GlInt; v0: GlInt; v1: GlInt;
  v2: GlInt) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform4i*(program: GlUint; location: GlInt; v0: GlInt; v1: GlInt;
  v2: GlInt; v3: GlInt) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform1ui*(program: GlUint; location: GlInt; v0: GlUint)
  {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform2ui*(program: GlUint; location: GlInt; v0: GlUint;
  v1: GlUint) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform3ui*(program: GlUint; location: GlInt; v0: GlUint;
  v1: GlUint; v2: GlUint) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform4ui*(program: GlUint; location: GlInt; v0: GlUint;
  v1: GlUint; v2: GlUint; v3: GlUint) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform1f*(program: GlUint; location: GlInt; v0: GlFloat)
  {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform2f*(program: GlUint; location: GlInt; v0: GlFloat;
  v1: GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform3f*(program: GlUint; location: GlInt; v0: GlFloat;
  v1: GlFloat; v2: GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform4f*(program: GlUint; location: GlInt; v0: GlFloat;
  v1: GlFloat; v2: GlFloat; v3: GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform1iv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlInt) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform2iv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlInt) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform3iv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlInt) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform4iv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlInt) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform1uiv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlUint) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform2uiv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlUint) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform3uiv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlUint) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform4uiv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlUint) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform1fv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform2fv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform3fv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniform4fv*(program: GlUint; location: GlInt; count: GlSizei;
  value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniformMatrix2fv*(program: GlUint; location: GlInt;
  count: GlSizei; transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniformMatrix3fv*(program: GlUint; location: GlInt;
  count: GlSizei; transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniformMatrix4fv*(program: GlUint; location: GlInt;
  count: GlSizei; transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniformMatrix2x3fv*(program: GlUint; location: GlInt;
  count: GlSizei; transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniformMatrix3x2fv*(program: GlUint; location: GlInt;
  count: GlSizei; transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniformMatrix2x4fv*(program: GlUint; location: GlInt;
  count: GlSizei; transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniformMatrix4x2fv*(program: GlUint; location: GlInt;
  count: GlSizei; transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniformMatrix3x4fv*(program: GlUint; location: GlInt;
  count: GlSizei; transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glProgramUniformMatrix4x3fv*(program: GlUint; location: GlInt;
  count: GlSizei; transpose: GlBoolean; value: ptr GlFloat) {.importc.}
  ## Specify the value of a uniform variable for a specified program object.
  ##
  ## program
  ##   Specifies the handle of the program containing the uniform variable to be
  ##   modified.
  ## location
  ##   Specifies the location of the uniform variable to be modified.
  ## count
  ##   For the vector commands (`glProgramUniform*v`), specifies the number of
  ##   elements that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array, and `1` or more if it is an array. For
  ##   the matrix commands (`glProgramUniformMatrix*`), specifies the number of
  ##   matrices that are to be modified. This should be `1` if the targeted
  ##   uniform variable is not an array of matrices, and `1` or more if it is an
  ##   array of matrices.
  ## transpose
  ##   For the matrix commands, specifies whether to transpose the matrix as the
  ##   values are loaded into the uniform variable.
  ## v0, v1, v2, v3
  ##   For the scalar commands, specifies the new values to be used for the
  ##   specified uniform variable.
  ## value
  ##   For the vector and matrix commands, specifies a pointer to an array of
  ##   `count` values that will be used to update the specified uniform variable.


proc glValidateProgramPipeline*(pipeline: GlUint) {.importc.}
  ## Validate a program pipeline object against current GL state.
  ##
  ## pipeline
  ##   Specifies the name of a program pipeline object to validate.


proc glGetProgramPipelineInfoLog*(pipeline: GlUint; bufSize: GlSizei;
  length: ptr GlSizei; infoLog: ptr GLchar) {.importc.}
  ## Retrieve the info log string from a program pipeline object.
  ##
  ## pipeline
  ##   Specifies the name of a program pipeline object from which to retrieve
  ##   the info log.
  ## bufSize
  ##   Specifies the maximum number of characters, including the null
  ##   terminator, that may be written into `infoLog`.
  ## length
  ##   Specifies the address of a variable into which will be written the number
  ##   of characters written into infoLog.
  ## infoLog
  ##   Specifies the address of an array of characters into which will be
  ##   written the info log for pipeline.


proc glBindImageTexture*(unit: GlUint; texture: GlUint; level: GlInt;
  layered: GlBoolean; layer: GlInt; access: GlEnum; format: GlEnum) {.importc.}
  ## Bind a level of a texture to an image unit.
  ##
  ## unit
  ##   Specifies the index of the image unit to which to bind the texture.
  ## texture
  ##   Specifies the name of the texture to bind to the image unit.
  ## level
  ##   Specifies the level of the texture that is to be bound.
  ## layered
  ##   Specifies whether a layered texture binding is to be established.
  ## layer
  ##   If `layered` is `GL_FALSE`, specifies the layer of texture to be bound to
  ##   the image unit. Ignored otherwise.
  ## access
  ##   Specifies a token indicating the type of access that will be performed on
  ##   the image.
  ## format
  ##   Specifies the format that the elements of the image will be treated as
  ##   for the purposes of formatted loads and stores.


proc glGetBooleaniv*(target: GlEnum; index: GlUint; data: ptr GlBoolean)
  {.importc: "glGetBooleani_v".}
  ## Return the value or values of a selected parameter.
  ##
  ## pname
  ##   Specifies the parameter value to be returned. The symbolic constants in
  ##   the list below are accepted.
  ## target
  ##   Specifies the parameter value to be returned for indexed versions of
  ##   `glGet`. See the official OpenGL 3.1 documentation for the list of
  ##   accepted symbolic constants.
  ## index
  ##   Specifies the index of the particular element being queried.
  ## data
  ##   Returns the value or values of the specified parameter.


proc glMemoryBarrier*(barriers: GlBitfield) {.importc.}
  ## Defines a barrier ordering memory transactions.
  ##
  ## barriers
  ##   Specifies the barriers to insert. Must be a bitwise combination of
  ##   `GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT`, `GL_ELEMENT_ARRAY_BARRIER_BIT`,
  ##   `GL_UNIFORM_BARRIER_BIT`, `GL_TEXTURE_FETCH_BARRIER_BIT`,
  ##   `GL_SHADER_IMAGE_ACCESS_BARRIER_BIT`, `GL_COMMAND_BARRIER_BIT`,
  ##   `GL_PIXEL_BUFFER_BARRIER_BIT`, `GL_TEXTURE_UPDATE_BARRIER_BIT`,
  ##   `GL_BUFFER_UPDATE_BARRIER_BIT`, `GL_FRAMEBUFFER_BARRIER_BIT`,
  ##   `GL_TRANSFORM_FEEDBACK_BARRIER_BIT`, `GL_ATOMIC_COUNTER_BARRIER_BIT`, or
  ##   `GL_SHADER_STORAGE_BARRIER_BIT`. If the special value
  ##   `GL_ALL_BARRIER_BITS` is specified, all supported barriers will be
  ##   inserted.


proc glMemoryBarrierByRegion*(barriers: GlBitfield) {.importc.}
  ## Defines a barrier ordering memory transactions.
  ##
  ## barriers
  ##   Specifies the barriers to insert. Must be a bitwise combination of
  ##   `GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT`, `GL_ELEMENT_ARRAY_BARRIER_BIT`,
  ##   `GL_UNIFORM_BARRIER_BIT`, `GL_TEXTURE_FETCH_BARRIER_BIT`,
  ##   `GL_SHADER_IMAGE_ACCESS_BARRIER_BIT`, `GL_COMMAND_BARRIER_BIT`,
  ##   `GL_PIXEL_BUFFER_BARRIER_BIT`, `GL_TEXTURE_UPDATE_BARRIER_BIT`,
  ##   `GL_BUFFER_UPDATE_BARRIER_BIT`,`GL_FRAMEBUFFER_BARRIER_BIT`,
  ##   `GL_TRANSFORM_FEEDBACK_BARRIER_BIT`, `GL_ATOMIC_COUNTER_BARRIER_BIT`, or
  ##   `GL_SHADER_STORAGE_BARRIER_BIT`. If the special value
  ##   `GL_ALL_BARRIER_BITS` is specified, all supported barriers will be
  ##   inserted.


proc glTexStorage2DMultisample*(target: GlEnum; samples: GlSizei;
  internalformat: GlEnum; width: GlSizei; height: GlSizei;
  fixedsamplelocations: GlBoolean) {.importc.}
  ## Specify storage for a two-dimensional multisample texture.
  ##
  ## target
  ##   Specify the target of the operation. target must be
  ##  `GL_TEXTURE_2D_MULTISAMPLE`.
  ## samples
  ##   Specify the number of samples in the texture.
  ## internalformat
  ##   Specifies the sized internal format to be used to store texture image
  ##   data.
  ## width
  ##   Specifies the width of the texture, in texels.
  ## height
  ##   Specifies the height of the texture, in texels.
  ## fixedsamplelocations
  ##   Specifies whether the image will use identical sample locations and the
  ##   same number of samples for all texels in the image, and the sample
  ##   locations will not depend on the internal format or size of the image.


proc glGetMultisamplefv*(pname: GlEnum; index: GlUint; val: ptr GlFloat)
  {.importc.}
  ## Retrieve the location of a sample.
  ##
  ## pname
  ##   Specifies the sample parameter name. pname must be `GL_SAMPLE_POSITION`.
  ## index
  ##   Specifies the index of the sample whose position to query.
  ## val
  ##   Specifies the address of an array to receive the position of the sample.


proc glSampleMaski*(maskNumber: GlUint; mask: GlBitfield){.importc.}
  ## Set the value of a sub-word of the sample mask.
  ##
  ## maskNumber
  ##   Specifies which 32-bit sub-word of the sample mask to update.
  ## mask
  ##   Specifies the new value of the mask sub-word.


proc glGetTexLevelParameteriv*(target: GlEnum; level: GlInt; pname: GlEnum;
  params: ptr GlInt) {.importc.}
  ## Return texture parameter values for a specific level of detail.
  ##
  ## target
  ##   Specifies the symbolic name of the target texture, one of
  ##   `GL_TEXTURE_2D`, `GL_TEXTURE_3D`, `GL_TEXTURE_2D_ARRAY`,
  ##   `GL_TEXTURE_2D_MULTISAMPLE`, `GL_TEXTURE_CUBE_MAP_POSITIVE_X`,
  ##   `GL_TEXTURE_CUBE_MAP_NEGATIVE_X`, `GL_TEXTURE_CUBE_MAP_POSITIVE_Y`,
  ##   `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y`, `GL_TEXTURE_CUBE_MAP_POSITIVE_Z`,
  ##   `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z`.
  ## level
  ##   Specifies the level-of-detail number of the desired image. Level 0 is the
  ##   base image level. Level n is the `n`th mipmap reduction image.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. `GL_TEXTURE_WIDTH`,
  ##   `GL_TEXTURE_HEIGHT`, `GL_TEXTURE_DEPTH`, `GL_TEXTURE_INTERNAL_FORMAT`,
  ##   `GL_TEXTURE_SAMPLES`, `GL_TEXTURE_FIXED_SAMPLE_LOCATIONS`,
  ##   `GL_TEXTURE_RED_SIZE`, `GL_TEXTURE_GREEN_SIZE`, `GL_TEXTURE_BLUE_SIZE`,
  ##   `GL_TEXTURE_ALPHA_SIZE`, `GL_TEXTURE_DEPTH_SIZE`,
  ##   `GL_TEXTURE_STENCIL_SIZE`, `GL_TEXTURE_SHARED_SIZE`,
  ##   `GL_TEXTURE_RED_TYPE`, `GL_TEXTURE_GREEN_TYPE`, `GL_TEXTURE_BLUE_TYPE`,
  ##   `GL_TEXTURE_ALPHA_TYPE`, `GL_TEXTURE_DEPTH_TYPE`, and
  ##   `GL_TEXTURE_COMPRESSED` are accepted.
  ## params
  ##   Returns the requested data.


proc glGetTexLevelParameterfv*(target: GlEnum; level: GlInt; pname: GlEnum;
  params: ptr GlFloat) {.importc.}
  ## Return texture parameter values for a specific level of detail.
  ##
  ## target
  ##   Specifies the symbolic name of the target texture, one of `GL_TEXTURE_2D`,
  ##   `GL_TEXTURE_3D`, `GL_TEXTURE_2D_ARRAY`,`GL_TEXTURE_2D_MULTISAMPLE`,
  ##   `GL_TEXTURE_CUBE_MAP_POSITIVE_X`, `GL_TEXTURE_CUBE_MAP_NEGATIVE_X`,
  ##   `GL_TEXTURE_CUBE_MAP_POSITIVE_Y`, `GL_TEXTURE_CUBE_MAP_NEGATIVE_Y`,
  ##   `GL_TEXTURE_CUBE_MAP_POSITIVE_Z`, `GL_TEXTURE_CUBE_MAP_NEGATIVE_Z`.
  ## level
  ##   Specifies the level-of-detail number of the desired image. Level 0 is the
  ##   base image level. Level n is the `n`th mipmap reduction image.
  ## pname
  ##   Specifies the symbolic name of a texture parameter. `GL_TEXTURE_WIDTH`,
  ##   `GL_TEXTURE_HEIGHT`, `GL_TEXTURE_DEPTH`, `GL_TEXTURE_INTERNAL_FORMAT`,
  ##   `GL_TEXTURE_SAMPLES`, `GL_TEXTURE_FIXED_SAMPLE_LOCATIONS`,
  ##   `GL_TEXTURE_RED_SIZE`, `GL_TEXTURE_GREEN_SIZE`, `GL_TEXTURE_BLUE_SIZE`,
  ##   `GL_TEXTURE_ALPHA_SIZE`, `GL_TEXTURE_DEPTH_SIZE`,
  ##   `GL_TEXTURE_STENCIL_SIZE`, `GL_TEXTURE_SHARED_SIZE`,
  ##   `GL_TEXTURE_RED_TYPE`, `GL_TEXTURE_GREEN_TYPE`, `GL_TEXTURE_BLUE_TYPE`,
  ##   `GL_TEXTURE_ALPHA_TYPE`, `GL_TEXTURE_DEPTH_TYPE`, and
  ##   `GL_TEXTURE_COMPRESSED` are accepted.
  ## params
  ##   Returns the requested data.


proc glBindVertexBuffer*(bindingindex: GlUint; buffer: GlUint; offset: GlIntptr;
  stride: GlSizei) {.importc.}
  ## Bind a buffer to a vertex buffer bind point.
  ##
  ## bindingindex
  ##   The index of the vertex buffer binding point to which to bind the buffer.
  ## buffer
  ##   The name of an existing buffer to bind to the vertex buffer binding point.
  ## offset
  ##   The offset of the first element of the buffer.
  ## stride
  ##   The distance between elements within the buffer.


proc glVertexAttribFormat*(attribindex: GlUint; size: GlInt; dataType: GlEnum;
  normalized: GlBoolean; relativeoffset: GlUint) {.importc.}
  ## Specify the organization of vertex arrays.
  ##
  ## attribindex
  ##   The generic vertex attribute array being described.
  ## size
  ##   The number of values per vertex that are stored in the array.
  ## dataType
  ##   The type of the data stored in the array.
  ## normalized
  ##   Specifies whether fixed-point data values should be normalized
  ##   (`GL_TRUE`) or converted directly as fixed-point values (`GL_FALSE`) when
  ##   they are accessed. This parameter is ignored if `dataType` is `GL_FIXED`.
  ## relativeoffset
  ##   An offset to the first element relative to the start of the vertex buffer
  ##   binding.


proc glVertexAttribIFormat*(attribindex: GlUint; size: GlInt; dataType: GlEnum;
  relativeoffset: GlUint) {.importc.}
  ## Specify the organization of vertex arrays.
  ##
  ## attribindex
  ##   The generic vertex attribute array being described.
  ## size
  ##   The number of values per vertex that are stored in the array.
  ## dataType
  ##   The type of the data stored in the array.
  ## relativeoffset
  ##   An offset to the first element relative to the start of the vertex buffer
  ##   binding.


proc glVertexAttribBinding*(attribindex: GlUint; bindingindex: GlUint)
  {.importc.}
  ## Associate a vertex attribute and a vertex buffer binding.
  ##
  ## attribindex
  ##   The index of the attribute to associate with a vertex buffer binding.
  ## bindingindex
  ##   The index of the vertex buffer binding with which to associate the
  ##   generic vertex attribute.


proc glVertexBindingDivisor*(bindingindex: GlUint; divisor: GlUint) {.importc.}
  ## Modify the rate at which generic vertex attributes advance.
  ##
  ## bindingindex
  ##   The index of the binding whose divisor to modify.
  ## divisor
  ##   The new value for the instance step rate to apply.

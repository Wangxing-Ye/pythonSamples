.class Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;
.super Ljava/lang/Object;
.source "GLDebugWrapper.java"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL;
.implements Ljavax/microedition/khronos/opengles/GL10;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/opengl/GLDebugWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyGLImplementation"
.end annotation


# instance fields
.field private gl:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method constructor <init>(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 28
    return-void
.end method

.method private static appendWithPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1229
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " | "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    return-object p0
.end method

.method private static getBindTextureTargetString(I)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # I

    .prologue
    .line 1181
    packed-switch p0, :pswitch_data_0

    .line 1185
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1183
    :pswitch_0
    const-string v0, "GL_TEXTURE_2D"

    goto :goto_0

    .line 1181
    nop

    :pswitch_data_0
    .packed-switch 0xde1
        :pswitch_0
    .end packed-switch
.end method

.method private static getBlendFuncDFactorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "dfactor"    # I

    .prologue
    .line 827
    sparse-switch p0, :sswitch_data_0

    .line 849
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 829
    :sswitch_0
    const-string v0, "GL_ZERO"

    goto :goto_0

    .line 831
    :sswitch_1
    const-string v0, "GL_ONE"

    goto :goto_0

    .line 833
    :sswitch_2
    const-string v0, "GL_SRC_COLOR"

    goto :goto_0

    .line 835
    :sswitch_3
    const-string v0, "GL_ONE_MINUS_SRC_COLOR"

    goto :goto_0

    .line 837
    :sswitch_4
    const-string v0, "GL_DST_COLOR"

    goto :goto_0

    .line 839
    :sswitch_5
    const-string v0, "GL_ONE_MINUS_DST_COLOR"

    goto :goto_0

    .line 841
    :sswitch_6
    const-string v0, "GL_SRC_ALPHA"

    goto :goto_0

    .line 843
    :sswitch_7
    const-string v0, "GL_ONE_MINUS_SRC_ALPHA"

    goto :goto_0

    .line 845
    :sswitch_8
    const-string v0, "GL_DST_ALPHA"

    goto :goto_0

    .line 847
    :sswitch_9
    const-string v0, "GL_ONE_MINUS_DST_ALPHA"

    goto :goto_0

    .line 827
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x300 -> :sswitch_2
        0x301 -> :sswitch_3
        0x302 -> :sswitch_6
        0x303 -> :sswitch_7
        0x304 -> :sswitch_8
        0x305 -> :sswitch_9
        0x306 -> :sswitch_4
        0x307 -> :sswitch_5
    .end sparse-switch
.end method

.method private static getBlendFuncSFactorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "sfactor"    # I

    .prologue
    .line 798
    sparse-switch p0, :sswitch_data_0

    .line 822
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 800
    :sswitch_0
    const-string v0, "GL_ZERO"

    goto :goto_0

    .line 802
    :sswitch_1
    const-string v0, "GL_ONE"

    goto :goto_0

    .line 804
    :sswitch_2
    const-string v0, "GL_SRC_COLOR"

    goto :goto_0

    .line 806
    :sswitch_3
    const-string v0, "GL_ONE_MINUS_SRC_COLOR"

    goto :goto_0

    .line 808
    :sswitch_4
    const-string v0, "GL_DST_COLOR"

    goto :goto_0

    .line 810
    :sswitch_5
    const-string v0, "GL_ONE_MINUS_DST_COLOR"

    goto :goto_0

    .line 812
    :sswitch_6
    const-string v0, "GL_SRC_ALPHA"

    goto :goto_0

    .line 814
    :sswitch_7
    const-string v0, "GL_ONE_MINUS_SRC_ALPHA"

    goto :goto_0

    .line 816
    :sswitch_8
    const-string v0, "GL_DST_ALPHA"

    goto :goto_0

    .line 818
    :sswitch_9
    const-string v0, "GL_ONE_MINUS_DST_ALPHA"

    goto :goto_0

    .line 820
    :sswitch_a
    const-string v0, "GL_SRC_ALPHA_SATURATE"

    goto :goto_0

    .line 798
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x300 -> :sswitch_2
        0x301 -> :sswitch_3
        0x302 -> :sswitch_6
        0x303 -> :sswitch_7
        0x304 -> :sswitch_8
        0x305 -> :sswitch_9
        0x306 -> :sswitch_4
        0x307 -> :sswitch_5
        0x308 -> :sswitch_a
    .end sparse-switch
.end method

.method private static getBooleanString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Z

    .prologue
    .line 1062
    if-eqz p0, :cond_0

    const-string v0, "GL_TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GL_FALSE"

    goto :goto_0
.end method

.method private static getClearMaskString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mask"    # I

    .prologue
    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1067
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_0

    .line 1068
    const-string v1, "GL_COLOR_BUFFER_BIT"

    invoke-static {v0, v1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->appendWithPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1070
    :cond_0
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_1

    .line 1071
    const-string v1, "GL_DEPTH_BUFFER_BIT"

    invoke-static {v0, v1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->appendWithPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1073
    :cond_1
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_2

    .line 1074
    const-string v1, "GL_STENCIL_BUFFER_BIT"

    invoke-static {v0, v1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->appendWithPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1076
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getClientStateArrayString(I)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # I

    .prologue
    .line 1005
    packed-switch p0, :pswitch_data_0

    .line 1015
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1007
    :pswitch_1
    const-string v0, "GL_COLOR_ARRAY"

    goto :goto_0

    .line 1009
    :pswitch_2
    const-string v0, "GL_NORMAL_ARRAY"

    goto :goto_0

    .line 1011
    :pswitch_3
    const-string v0, "GL_TEXTURE_COORD_ARRAY"

    goto :goto_0

    .line 1013
    :pswitch_4
    const-string v0, "GL_VERTEX_ARRAY"

    goto :goto_0

    .line 1005
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getColorPointerTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1041
    sparse-switch p0, :sswitch_data_0

    .line 1057
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1043
    :sswitch_0
    const-string v0, "GL_BYTE"

    goto :goto_0

    .line 1045
    :sswitch_1
    const-string v0, "GL_UNSIGNED_BYTE"

    goto :goto_0

    .line 1047
    :sswitch_2
    const-string v0, "GL_SHORT"

    goto :goto_0

    .line 1049
    :sswitch_3
    const-string v0, "GL_UNSIGNED_SHORT"

    goto :goto_0

    .line 1051
    :sswitch_4
    const-string v0, "GL_FLOAT"

    goto :goto_0

    .line 1053
    :sswitch_5
    const-string v0, "GL_TRIANGLE_FAN"

    goto :goto_0

    .line 1055
    :sswitch_6
    const-string v0, "GL_TRIANGLES"

    goto :goto_0

    .line 1041
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x6 -> :sswitch_5
        0x1400 -> :sswitch_0
        0x1401 -> :sswitch_1
        0x1402 -> :sswitch_2
        0x1403 -> :sswitch_3
        0x1406 -> :sswitch_4
    .end sparse-switch
.end method

.method private static getCullFaceModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 992
    packed-switch p0, :pswitch_data_0

    .line 1000
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 994
    :pswitch_1
    const-string v0, "GL_FRONT"

    goto :goto_0

    .line 996
    :pswitch_2
    const-string v0, "GL_BACK"

    goto :goto_0

    .line 998
    :pswitch_3
    const-string v0, "GL_FRONT_AND_BACK"

    goto :goto_0

    .line 992
    nop

    :pswitch_data_0
    .packed-switch 0x404
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getDrawArraysModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # I

    .prologue
    .line 1020
    packed-switch p0, :pswitch_data_0

    .line 1036
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1022
    :pswitch_0
    const-string v0, "GL_POINTS"

    goto :goto_0

    .line 1024
    :pswitch_1
    const-string v0, "GL_LINE_STRIP"

    goto :goto_0

    .line 1026
    :pswitch_2
    const-string v0, "GL_LINE_LOOP"

    goto :goto_0

    .line 1028
    :pswitch_3
    const-string v0, "GL_LINES"

    goto :goto_0

    .line 1030
    :pswitch_4
    const-string v0, "GL_TRIANGLE_STRIP"

    goto :goto_0

    .line 1032
    :pswitch_5
    const-string v0, "GL_TRIANGLE_FAN"

    goto :goto_0

    .line 1034
    :pswitch_6
    const-string v0, "GL_TRIANGLES"

    goto :goto_0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getEnableDisableCapString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cap"    # I

    .prologue
    .line 1089
    sparse-switch p0, :sswitch_data_0

    .line 1127
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1091
    :sswitch_0
    const-string v0, "GL_ALPHA_TEST"

    goto :goto_0

    .line 1093
    :sswitch_1
    const-string v0, "GL_BLEND"

    goto :goto_0

    .line 1095
    :sswitch_2
    const-string v0, "GL_COLOR_LOGIC_OP"

    goto :goto_0

    .line 1097
    :sswitch_3
    const-string v0, "GL_COLOR_MATERIAL"

    goto :goto_0

    .line 1099
    :sswitch_4
    const-string v0, "GL_CULL_FACE"

    goto :goto_0

    .line 1101
    :sswitch_5
    const-string v0, "GL_DEPTH_TEST"

    goto :goto_0

    .line 1103
    :sswitch_6
    const-string v0, "GL_DITHER"

    goto :goto_0

    .line 1105
    :sswitch_7
    const-string v0, "GL_FOG"

    goto :goto_0

    .line 1107
    :sswitch_8
    const-string v0, "GL_LIGHTING"

    goto :goto_0

    .line 1109
    :sswitch_9
    const-string v0, "GL_MULTISAMPLE"

    goto :goto_0

    .line 1111
    :sswitch_a
    const-string v0, "GL_NORMALIZE"

    goto :goto_0

    .line 1113
    :sswitch_b
    const-string v0, "GL_POINT_SMOOTH"

    goto :goto_0

    .line 1115
    :sswitch_c
    const-string v0, "GL_RESCALE_NORMAL"

    goto :goto_0

    .line 1117
    :sswitch_d
    const-string v0, "GL_SAMPLE_ALPHA_TO_COVERAGE"

    goto :goto_0

    .line 1119
    :sswitch_e
    const-string v0, "GL_SAMPLE_ALPHA_TO_ONE"

    goto :goto_0

    .line 1121
    :sswitch_f
    const-string v0, "GL_SCISSOR_TEST"

    goto :goto_0

    .line 1123
    :sswitch_10
    const-string v0, "GL_STENCIL_TEST"

    goto :goto_0

    .line 1125
    :sswitch_11
    const-string v0, "GL_TEXTURE_2D"

    goto :goto_0

    .line 1089
    :sswitch_data_0
    .sparse-switch
        0xb10 -> :sswitch_b
        0xb44 -> :sswitch_4
        0xb50 -> :sswitch_8
        0xb57 -> :sswitch_3
        0xb60 -> :sswitch_7
        0xb71 -> :sswitch_5
        0xb90 -> :sswitch_10
        0xba1 -> :sswitch_a
        0xbc0 -> :sswitch_0
        0xbd0 -> :sswitch_6
        0xbe2 -> :sswitch_1
        0xbf2 -> :sswitch_2
        0xc11 -> :sswitch_f
        0xde1 -> :sswitch_11
        0x803a -> :sswitch_c
        0x809d -> :sswitch_9
        0x809e -> :sswitch_d
        0x809f -> :sswitch_e
    .end sparse-switch
.end method

.method private static getHintModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # I

    .prologue
    .line 966
    packed-switch p0, :pswitch_data_0

    .line 974
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 968
    :pswitch_0
    const-string v0, "GL_FASTEST"

    goto :goto_0

    .line 970
    :pswitch_1
    const-string v0, "GL_NICEST"

    goto :goto_0

    .line 972
    :pswitch_2
    const-string v0, "GL_DONT_CARE"

    goto :goto_0

    .line 966
    nop

    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getHintTargetString(I)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # I

    .prologue
    .line 949
    packed-switch p0, :pswitch_data_0

    .line 961
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 951
    :pswitch_0
    const-string v0, "GL_FOG_HINT"

    goto :goto_0

    .line 953
    :pswitch_1
    const-string v0, "GL_LINE_SMOOTH_HINT"

    goto :goto_0

    .line 955
    :pswitch_2
    const-string v0, "GL_PERSPECTIVE_CORRECTION_HINT"

    goto :goto_0

    .line 957
    :pswitch_3
    const-string v0, "GL_POINT_SMOOTH_HINT"

    goto :goto_0

    .line 959
    :pswitch_4
    const-string v0, "GL_POLYGON_SMOOTH_HINT"

    goto :goto_0

    .line 949
    nop

    :pswitch_data_0
    .packed-switch 0xc50
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private static getLogicOpOpcodeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cap"    # I

    .prologue
    .line 1190
    packed-switch p0, :pswitch_data_0

    .line 1224
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1192
    :pswitch_0
    const-string v0, "GL_CLEAR"

    goto :goto_0

    .line 1194
    :pswitch_1
    const-string v0, "GL_SET"

    goto :goto_0

    .line 1196
    :pswitch_2
    const-string v0, "GL_COPY"

    goto :goto_0

    .line 1198
    :pswitch_3
    const-string v0, "GL_COPY_INVERTED"

    goto :goto_0

    .line 1200
    :pswitch_4
    const-string v0, "GL_NOOP"

    goto :goto_0

    .line 1202
    :pswitch_5
    const-string v0, "GL_INVERT"

    goto :goto_0

    .line 1204
    :pswitch_6
    const-string v0, "GL_AND"

    goto :goto_0

    .line 1206
    :pswitch_7
    const-string v0, "GL_NAND"

    goto :goto_0

    .line 1208
    :pswitch_8
    const-string v0, "GL_OR"

    goto :goto_0

    .line 1210
    :pswitch_9
    const-string v0, "GL_NOR"

    goto :goto_0

    .line 1212
    :pswitch_a
    const-string v0, "GL_XOR"

    goto :goto_0

    .line 1214
    :pswitch_b
    const-string v0, "GL_EQUIV"

    goto :goto_0

    .line 1216
    :pswitch_c
    const-string v0, "GL_AND_REVERSE"

    goto :goto_0

    .line 1218
    :pswitch_d
    const-string v0, "GL_AND_INVERTED"

    goto :goto_0

    .line 1220
    :pswitch_e
    const-string v0, "GL_OR_REVERSE"

    goto :goto_0

    .line 1222
    :pswitch_f
    const-string v0, "GL_OR_INVERTED"

    goto :goto_0

    .line 1190
    :pswitch_data_0
    .packed-switch 0x1500
        :pswitch_0
        :pswitch_6
        :pswitch_c
        :pswitch_2
        :pswitch_d
        :pswitch_4
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_5
        :pswitch_e
        :pswitch_3
        :pswitch_f
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method private static getMatrixModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 979
    packed-switch p0, :pswitch_data_0

    .line 987
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 981
    :pswitch_0
    const-string v0, "GL_MODELVIEW"

    goto :goto_0

    .line 983
    :pswitch_1
    const-string v0, "GL_PROJECTION"

    goto :goto_0

    .line 985
    :pswitch_2
    const-string v0, "GL_TEXTURE"

    goto :goto_0

    .line 979
    nop

    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getShadeModelString(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 787
    packed-switch p1, :pswitch_data_0

    .line 793
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 789
    :pswitch_0
    const-string v0, "GL_FLAT"

    goto :goto_0

    .line 791
    :pswitch_1
    const-string v0, "GL_SMOOTH"

    goto :goto_0

    .line 787
    :pswitch_data_0
    .packed-switch 0x1d00
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getTexCoordPointerTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 774
    sparse-switch p0, :sswitch_data_0

    .line 782
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 776
    :sswitch_0
    const-string v0, "GL_SHORT"

    goto :goto_0

    .line 778
    :sswitch_1
    const-string v0, "GL_FIXED"

    goto :goto_0

    .line 780
    :sswitch_2
    const-string v0, "GL_FLOAT"

    goto :goto_0

    .line 774
    nop

    :sswitch_data_0
    .sparse-switch
        0x1402 -> :sswitch_0
        0x1406 -> :sswitch_2
        0x140c -> :sswitch_1
    .end sparse-switch
.end method

.method private static getTexEnvParam(I)Ljava/lang/String;
    .locals 1
    .param p0, "param"    # I

    .prologue
    .line 922
    sparse-switch p0, :sswitch_data_0

    .line 944
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 924
    :sswitch_0
    const-string v0, "GL_ADD"

    goto :goto_0

    .line 926
    :sswitch_1
    const-string v0, "GL_MODULATE"

    goto :goto_0

    .line 928
    :sswitch_2
    const-string v0, "GL_DECAL"

    goto :goto_0

    .line 930
    :sswitch_3
    const-string v0, "GL_BLEND"

    goto :goto_0

    .line 932
    :sswitch_4
    const-string v0, "GL_REPLACE"

    goto :goto_0

    .line 934
    :sswitch_5
    const-string v0, "GL_TEXTURE"

    goto :goto_0

    .line 936
    :sswitch_6
    const-string v0, "GL_SRC_COLOR"

    goto :goto_0

    .line 938
    :sswitch_7
    const-string v0, "GL_ONE_MINUS_SRC_COLOR"

    goto :goto_0

    .line 940
    :sswitch_8
    const-string v0, "GL_SRC_ALPHA"

    goto :goto_0

    .line 942
    :sswitch_9
    const-string v0, "GL_ONE_MINUS_SRC_ALPHA"

    goto :goto_0

    .line 922
    :sswitch_data_0
    .sparse-switch
        0x104 -> :sswitch_0
        0x300 -> :sswitch_6
        0x301 -> :sswitch_7
        0x302 -> :sswitch_8
        0x303 -> :sswitch_9
        0xbe2 -> :sswitch_3
        0x1702 -> :sswitch_5
        0x1e01 -> :sswitch_4
        0x2100 -> :sswitch_1
        0x2101 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getTexEnvTargetString(I)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # I

    .prologue
    .line 904
    packed-switch p0, :pswitch_data_0

    .line 908
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 906
    :pswitch_0
    const-string v0, "GL_TEXTURE_ENV"

    goto :goto_0

    .line 904
    nop

    :pswitch_data_0
    .packed-switch 0x2300
        :pswitch_0
    .end packed-switch
.end method

.method private static getTexImage2DFormatString(I)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # I

    .prologue
    .line 1158
    sparse-switch p0, :sswitch_data_0

    .line 1176
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1160
    :sswitch_0
    const-string v0, "GL_UNSIGNED_BYTE"

    goto :goto_0

    .line 1162
    :sswitch_1
    const-string v0, "GL_BYTE"

    goto :goto_0

    .line 1164
    :sswitch_2
    const-string v0, "GL_UNSIGNED_SHORT"

    goto :goto_0

    .line 1166
    :sswitch_3
    const-string v0, "GL_SHORT"

    goto :goto_0

    .line 1168
    :sswitch_4
    const-string v0, "GL_FLOAT"

    goto :goto_0

    .line 1170
    :sswitch_5
    const-string v0, "GL_UNSIGNED_SHORT_5_6_5"

    goto :goto_0

    .line 1172
    :sswitch_6
    const-string v0, "GL_UNSIGNED_SHORT_4_4_4_4"

    goto :goto_0

    .line 1174
    :sswitch_7
    const-string v0, "GL_UNSIGNED_SHORT_5_5_5_1"

    goto :goto_0

    .line 1158
    :sswitch_data_0
    .sparse-switch
        0x1400 -> :sswitch_1
        0x1401 -> :sswitch_0
        0x1402 -> :sswitch_3
        0x1403 -> :sswitch_2
        0x1406 -> :sswitch_4
        0x8033 -> :sswitch_6
        0x8034 -> :sswitch_7
        0x8363 -> :sswitch_5
    .end sparse-switch
.end method

.method private static getTexImage2DInternalFormatString(I)Ljava/lang/String;
    .locals 1
    .param p0, "internalformat"    # I

    .prologue
    .line 1141
    packed-switch p0, :pswitch_data_0

    .line 1153
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1143
    :pswitch_0
    const-string v0, "GL_ALPHA"

    goto :goto_0

    .line 1145
    :pswitch_1
    const-string v0, "GL_LUMINANCE"

    goto :goto_0

    .line 1147
    :pswitch_2
    const-string v0, "GL_LUMINANCE_ALPHA"

    goto :goto_0

    .line 1149
    :pswitch_3
    const-string v0, "GL_RGB"

    goto :goto_0

    .line 1151
    :pswitch_4
    const-string v0, "GL_RGBA"

    goto :goto_0

    .line 1141
    nop

    :pswitch_data_0
    .packed-switch 0x1906
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getTexImage2DTargetString(I)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # I

    .prologue
    .line 1132
    packed-switch p0, :pswitch_data_0

    .line 1136
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1134
    :pswitch_0
    const-string v0, "GL_TEXTURE_2D"

    goto :goto_0

    .line 1132
    nop

    :pswitch_data_0
    .packed-switch 0xde1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTexParameterNameString(I)Ljava/lang/String;
    .locals 1
    .param p0, "pname"    # I

    .prologue
    .line 874
    packed-switch p0, :pswitch_data_0

    .line 884
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 876
    :pswitch_0
    const-string v0, "GL_TEXTURE_MIN_FILTER"

    goto :goto_0

    .line 878
    :pswitch_1
    const-string v0, "GL_TEXTURE_MAG_FILTER"

    goto :goto_0

    .line 880
    :pswitch_2
    const-string v0, "GL_TEXTURE_WRAP_S"

    goto :goto_0

    .line 882
    :pswitch_3
    const-string v0, "GL_TEXTURE_WRAP_T"

    goto :goto_0

    .line 874
    :pswitch_data_0
    .packed-switch 0x2800
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getTexParameterParamString(I)Ljava/lang/String;
    .locals 1
    .param p0, "param"    # I

    .prologue
    .line 889
    sparse-switch p0, :sswitch_data_0

    .line 899
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 891
    :sswitch_0
    const-string v0, "GL_NEAREST"

    goto :goto_0

    .line 893
    :sswitch_1
    const-string v0, "GL_REPEAT"

    goto :goto_0

    .line 895
    :sswitch_2
    const-string v0, "GL_LINEAR"

    goto :goto_0

    .line 897
    :sswitch_3
    const-string v0, "GL_CLAMP_TO_EDGE"

    goto :goto_0

    .line 889
    :sswitch_data_0
    .sparse-switch
        0x2600 -> :sswitch_0
        0x2601 -> :sswitch_2
        0x2901 -> :sswitch_1
        0x812f -> :sswitch_3
    .end sparse-switch
.end method

.method private static getTexParameterTargetString(I)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # I

    .prologue
    .line 865
    packed-switch p0, :pswitch_data_0

    .line 869
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 867
    :pswitch_0
    const-string v0, "GL_TEXTURE_2D"

    goto :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0xde1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextEnvNameString(I)Ljava/lang/String;
    .locals 1
    .param p0, "pname"    # I

    .prologue
    .line 913
    packed-switch p0, :pswitch_data_0

    .line 917
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 915
    :pswitch_0
    const-string v0, "GL_TEXTURE_ENV_MODE"

    goto :goto_0

    .line 913
    nop

    :pswitch_data_0
    .packed-switch 0x2200
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextEnvTargetString(I)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # I

    .prologue
    .line 1080
    packed-switch p0, :pswitch_data_0

    .line 1084
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1082
    :pswitch_0
    const-string v0, "GL_TEXTURE_ENV"

    goto :goto_0

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch 0x2300
        :pswitch_0
    .end packed-switch
.end method

.method private static getVertexPointerTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 854
    sparse-switch p0, :sswitch_data_0

    .line 860
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 856
    :sswitch_0
    const-string v0, "GL_SHORT"

    goto :goto_0

    .line 858
    :sswitch_1
    const-string v0, "GL_FLOAT"

    goto :goto_0

    .line 854
    :sswitch_data_0
    .sparse-switch
        0x1402 -> :sswitch_0
        0x1406 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 3
    .param p1, "texture"    # I

    .prologue
    .line 32
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glActiveTexture(texture_:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 34
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 3
    .param p1, "func"    # I
    .param p2, "ref"    # F

    .prologue
    .line 38
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glAlphaFunc(func:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ref:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 40
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 3
    .param p1, "func"    # I
    .param p2, "ref"    # I

    .prologue
    .line 44
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glAlphaFuncx(func:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ref:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    .line 46
    return-void
.end method

.method public glBindTexture(II)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "texture"    # I

    .prologue
    .line 50
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glBindTexture("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getBindTextureTargetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 52
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 3
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    .prologue
    .line 56
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glBlendFunc("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getBlendFuncSFactorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getBlendFuncDFactorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 58
    return-void
.end method

.method public glClear(I)V
    .locals 3
    .param p1, "mask"    # I

    .prologue
    .line 62
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glClear("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getClearMaskString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 64
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 3
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 68
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glClearColor("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 70
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 3
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    .line 74
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glClearColorx("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    .line 76
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 3
    .param p1, "depth"    # F

    .prologue
    .line 80
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glClearDepthf("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 82
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 3
    .param p1, "depth"    # I

    .prologue
    .line 86
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glClearDepthx("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    .line 88
    return-void
.end method

.method public glClearStencil(I)V
    .locals 3
    .param p1, "s"    # I

    .prologue
    .line 92
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glClearStencil("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 94
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 3
    .param p1, "texture"    # I

    .prologue
    .line 98
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glClientActiveTexture(texture_:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 100
    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 3
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 104
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glColor4f("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 106
    return-void
.end method

.method public glColor4x(IIII)V
    .locals 3
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    .line 110
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glColor4x("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 112
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 3
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    .prologue
    .line 116
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glColorMask("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getBooleanString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 118
    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 122
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glColorPointer("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getColorPointerTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pointer)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 124
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "imageSize"    # I
    .param p8, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 128
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glCompressedTexImage2D()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 130
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "imageSize"    # I
    .param p9, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 134
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glCompressedTexSubImage2D()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 136
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "border"    # I

    .prologue
    .line 140
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glCopyTexImage2D()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    .line 142
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 146
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glCopyTexSubImage2D()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 148
    return-void
.end method

.method public glCullFace(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 152
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glCullFace(mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getCullFaceModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 154
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 164
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glDeleteTextures()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 166
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 158
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glDeleteTextures()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 160
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 3
    .param p1, "func"    # I

    .prologue
    .line 170
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glDepthFunc(func"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 172
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 176
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glDepthMask()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 178
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 2
    .param p1, "zNear"    # F
    .param p2, "zFar"    # F

    .prologue
    .line 182
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glDepthRangef()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    .line 184
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 2
    .param p1, "zNear"    # I
    .param p2, "zFar"    # I

    .prologue
    .line 188
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glDepthRangex()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    .line 190
    return-void
.end method

.method public glDisable(I)V
    .locals 3
    .param p1, "cap"    # I

    .prologue
    .line 194
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glDisable("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getEnableDisableCapString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 196
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 3
    .param p1, "array"    # I

    .prologue
    .line 200
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glDisableClientState("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getClientStateArrayString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 202
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    .prologue
    .line 206
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glDrawArrays("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getDrawArraysModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 208
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    .prologue
    .line 212
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glDrawElements()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 214
    return-void
.end method

.method public glEnable(I)V
    .locals 3
    .param p1, "cap"    # I

    .prologue
    .line 218
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glEnable("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getEnableDisableCapString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 220
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 3
    .param p1, "array"    # I

    .prologue
    .line 224
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glEnableClientState("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getClientStateArrayString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 226
    return-void
.end method

.method public glFinish()V
    .locals 2

    .prologue
    .line 230
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glFinish()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 232
    return-void
.end method

.method public glFlush()V
    .locals 2

    .prologue
    .line 236
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glFlush()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 238
    return-void
.end method

.method public glFogf(IF)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 242
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glFogf()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 244
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 248
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glFogfv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 250
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 254
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glFogfv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 256
    return-void
.end method

.method public glFogx(II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 260
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glFogx()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 262
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 272
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glFogxv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 274
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 266
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glFogxv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    .line 268
    return-void
.end method

.method public glFrontFace(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 278
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glFrontFace(mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 280
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "zNear"    # F
    .param p6, "zFar"    # F

    .prologue
    .line 284
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glFrustumf("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 286
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "zNear"    # I
    .param p6, "zFar"    # I

    .prologue
    .line 290
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glFrustumx()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    .line 292
    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 296
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glGenTextures()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 298
    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 3
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 302
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glGenTextures("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", textures[], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 304
    return-void
.end method

.method public glGetError()I
    .locals 3

    .prologue
    .line 308
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "glGetError()\n"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 310
    .local v0, "err":I
    return v0
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 321
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glGetIntegerv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 323
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 315
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glGetIntegerv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 317
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # I

    .prologue
    .line 327
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "glGetString("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "string":Ljava/lang/String;
    return-object v0
.end method

.method public glHint(II)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "mode"    # I

    .prologue
    .line 334
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glHint("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getHintTargetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getHintModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 336
    return-void
.end method

.method public glLightModelf(IF)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 340
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLightModelf()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    .line 342
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 346
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLightModelfv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 348
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 352
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 354
    return-void
.end method

.method public glLightModelx(II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 358
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLightModelfv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 360
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 364
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLightModelxv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 366
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 370
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLightModelxv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    .line 372
    return-void
.end method

.method public glLightf(IIF)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 376
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLightf()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 378
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 382
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLightfv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 384
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 388
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLightfv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 390
    return-void
.end method

.method public glLightx(III)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 394
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLightx()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    .line 396
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 406
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLightxv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 408
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 2
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 400
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLightxv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    .line 402
    return-void
.end method

.method public glLineWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 412
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glLineWidth("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 414
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 418
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glLineWidthx("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 420
    return-void
.end method

.method public glLoadIdentity()V
    .locals 2

    .prologue
    .line 424
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLoadIdentity()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 426
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 436
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLoadMatrixf()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 438
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 2
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 430
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLoadMatrixf()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 432
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 3
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .prologue
    .line 448
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glLoadMatrixx(m:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 450
    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 2
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 442
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glLoadMatrixx()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    .line 444
    return-void
.end method

.method public glLogicOp(I)V
    .locals 3
    .param p1, "opcode"    # I

    .prologue
    .line 454
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glLogicOp(opcode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getLogicOpOpcodeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    .line 456
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 460
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glMaterialf()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 462
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 472
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glMaterialfv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 474
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 466
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glMaterialfv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 468
    return-void
.end method

.method public glMaterialx(III)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 478
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glMaterialx()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    .line 480
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 490
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glMaterialxv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 492
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 2
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 484
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glMaterialxv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 486
    return-void
.end method

.method public glMatrixMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 496
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glMatrixMode("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getMatrixModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 498
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 3
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 502
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glMultMatrixf(m:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 504
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 2
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 508
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glMultMatrixf()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 510
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 3
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .prologue
    .line 520
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glMultMatrixx(m:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 522
    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 2
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 514
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glMultMatrixx()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    .line 516
    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # F
    .param p3, "t"    # F
    .param p4, "r"    # F
    .param p5, "q"    # F

    .prologue
    .line 526
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glMultiTexCoord4f()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    .line 528
    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "q"    # I

    .prologue
    .line 532
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glMultiTexCoord4x()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    .line 534
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 2
    .param p1, "nx"    # F
    .param p2, "ny"    # F
    .param p3, "nz"    # F

    .prologue
    .line 538
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glNormal3f()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 540
    return-void
.end method

.method public glNormal3x(III)V
    .locals 2
    .param p1, "nx"    # I
    .param p2, "ny"    # I
    .param p3, "nz"    # I

    .prologue
    .line 544
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glNormal3x()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    .line 546
    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 550
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glNormalPointer()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 552
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "zNear"    # F
    .param p6, "zFar"    # F

    .prologue
    .line 556
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glOrthof("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 558
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "zNear"    # I
    .param p6, "zFar"    # I

    .prologue
    .line 562
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glOrthox("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    .line 564
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 2
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 568
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glPixelStorei()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 570
    return-void
.end method

.method public glPointSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 574
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glPointSize()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 576
    return-void
.end method

.method public glPointSizex(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 580
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glPointSizex()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    .line 582
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 2
    .param p1, "factor"    # F
    .param p2, "units"    # F

    .prologue
    .line 586
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glPolygonOffset()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    .line 588
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 2
    .param p1, "factor"    # I
    .param p2, "units"    # I

    .prologue
    .line 592
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glPolygonOffsetx()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    .line 594
    return-void
.end method

.method public glPopMatrix()V
    .locals 2

    .prologue
    .line 598
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glPopMatrix()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 600
    return-void
.end method

.method public glPushMatrix()V
    .locals 2

    .prologue
    .line 604
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glPushMatrix()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 606
    return-void
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "type"    # I
    .param p7, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 610
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glReadPixels()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 612
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 2
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 616
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glRotatef()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 618
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 2
    .param p1, "angle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .prologue
    .line 622
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glRotatex()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 624
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    .prologue
    .line 628
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glSampleCoverage()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    .line 630
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "invert"    # Z

    .prologue
    .line 634
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glSampleCoveragex()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    .line 636
    return-void
.end method

.method public glScalef(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 640
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glScalef()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 642
    return-void
.end method

.method public glScalex(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 646
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glScalex()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 648
    return-void
.end method

.method public glScissor(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 652
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glScissor()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 654
    return-void
.end method

.method public glShadeModel(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 658
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glShadeModel("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getShadeModelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 660
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 2
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    .prologue
    .line 664
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glStencilFunc()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 666
    return-void
.end method

.method public glStencilMask(I)V
    .locals 2
    .param p1, "mask"    # I

    .prologue
    .line 670
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glStencilMask()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 672
    return-void
.end method

.method public glStencilOp(III)V
    .locals 2
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    .prologue
    .line 676
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glStencilOp()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 678
    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 682
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glTexCoordPointer("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexCoordPointerTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pointer)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 684
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 688
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glTexEnvf("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexEnvTargetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTextEnvNameString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, p3

    invoke-static {v2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexEnvParam(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 690
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 700
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glTexEnvfv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 702
    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 694
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glTexEnvfv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    .line 696
    return-void
.end method

.method public glTexEnvx(III)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 706
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glTexEnvx("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexEnvTargetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTextEnvNameString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexEnvParam(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 708
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 718
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glTexEnvxv("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTextEnvTargetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 720
    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 712
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glTexEnvxv()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    .line 714
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 724
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "glTexImage2D("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexImage2DTargetString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 725
    invoke-static {p3}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexImage2DInternalFormatString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 726
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 727
    invoke-static/range {p7 .. p7}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexImage2DFormatString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v1, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 729
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 733
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glTexParameterf("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexParameterTargetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexParameterNameString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, p3

    invoke-static {v2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexParameterParamString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 735
    return-void
.end method

.method public glTexParameterx(III)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 739
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glTexParameterx("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexParameterTargetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexParameterNameString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getTexParameterParamString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 741
    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 745
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "glTexSubImage2D()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 747
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 751
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glTranslatef("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 753
    return-void
.end method

.method public glTranslatex(III)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 757
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glTranslatex("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    .line 759
    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 763
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glVertexPointer("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->getVertexPointerTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pointer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 765
    return-void
.end method

.method public glViewport(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 769
    # getter for: Lorg/cocos2d/opengl/GLDebugWrapper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/opengl/GLDebugWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glViewport("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lorg/cocos2d/opengl/GLDebugWrapper$MyGLImplementation;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 771
    return-void
.end method

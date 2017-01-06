.class public final Lorg/cocos2d/types/util/CGPointUtil;
.super Ljava/lang/Object;
.source "CGPointUtil.java"


# static fields
.field public static final ANCHORPOINT_DOWN:I = 0x2

.field public static final ANCHORPOINT_KEEP:I = 0x0

.field public static final ANCHORPOINT_LEFT:I = 0x1

.field public static final ANCHORPOINT_RIGHT:I = -0x1

.field public static final ANCHORPOINT_UP:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "toAdd"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 60
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 61
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 62
    return-void
.end method

.method public static add(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p0, "first"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "second"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "ret"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 55
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/cocos2d/types/CGPoint;->x:F

    .line 56
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 57
    return-void
.end method

.method public static applyAffineTransform(FFLorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGPoint;)V
    .locals 6
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "t"    # Lorg/cocos2d/types/CGAffineTransform;
    .param p3, "res"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 40
    float-to-double v0, p0

    iget-wide v2, p2, Lorg/cocos2d/types/CGAffineTransform;->m00:D

    mul-double/2addr v0, v2

    float-to-double v2, p1

    iget-wide v4, p2, Lorg/cocos2d/types/CGAffineTransform;->m01:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/cocos2d/types/CGAffineTransform;->m02:D

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p3, Lorg/cocos2d/types/CGPoint;->x:F

    .line 41
    float-to-double v0, p0

    iget-wide v2, p2, Lorg/cocos2d/types/CGAffineTransform;->m10:D

    mul-double/2addr v0, v2

    float-to-double v2, p1

    iget-wide v4, p2, Lorg/cocos2d/types/CGAffineTransform;->m11:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/cocos2d/types/CGAffineTransform;->m12:D

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p3, Lorg/cocos2d/types/CGPoint;->y:F

    .line 42
    return-void
.end method

.method public static applyAffineTransform(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p0, "p"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "t"    # Lorg/cocos2d/types/CGAffineTransform;
    .param p2, "res"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 36
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1, p1, p2}, Lorg/cocos2d/types/util/CGPointUtil;->applyAffineTransform(FFLorg/cocos2d/types/CGAffineTransform;Lorg/cocos2d/types/CGPoint;)V

    .line 37
    return-void
.end method

.method public static calcAnchorPointByDistance(FFFFIFIF)Lorg/cocos2d/types/CGPoint;
    .locals 5
    .param p0, "argWidth"    # F
    .param p1, "argHeight"    # F
    .param p2, "argAnchorX"    # F
    .param p3, "argAnchorY"    # F
    .param p4, "dirToX"    # I
    .param p5, "distanceX"    # F
    .param p6, "dirToY"    # I
    .param p7, "distanceY"    # F

    .prologue
    .line 145
    const/high16 v0, 0x3f000000    # 0.5f

    .line 146
    .local v0, "defAnchorX":F
    const/high16 v1, 0x3f000000    # 0.5f

    .line 147
    .local v1, "defAnchorY":F
    div-float v2, p5, p0

    .line 148
    .local v2, "disAnchorX":F
    div-float v3, p7, p1

    .line 150
    .local v3, "disAnchorY":F
    if-nez p4, :cond_0

    .line 152
    .end local v0    # "defAnchorX":F
    :goto_0
    if-nez p6, :cond_2

    .line 149
    .end local v1    # "defAnchorY":F
    :goto_1
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v4

    return-object v4

    .line 151
    .restart local v0    # "defAnchorX":F
    .restart local v1    # "defAnchorY":F
    :cond_0
    if-lez p4, :cond_1

    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    sub-float/2addr v0, v2

    goto :goto_0

    .line 153
    .end local v0    # "defAnchorX":F
    :cond_2
    if-gez p6, :cond_3

    sub-float/2addr v1, v3

    goto :goto_1

    :cond_3
    add-float/2addr v1, v3

    goto :goto_1
.end method

.method private static ccLayoutTo(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;FI)V
    .locals 4
    .param p0, "ret"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "uiPoint"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "size"    # Lorg/cocos2d/types/CGSize;
    .param p3, "argContentSize"    # Lorg/cocos2d/types/CGSize;
    .param p4, "distance"    # F
    .param p5, "layoutTag"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 196
    packed-switch p5, :pswitch_data_0

    .line 234
    :goto_0
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p2, Lorg/cocos2d/types/CGSize;->width:F

    iget v2, p3, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    goto :goto_0

    .line 201
    :pswitch_2
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p2, Lorg/cocos2d/types/CGSize;->height:F

    iget v2, p3, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0

    .line 204
    :pswitch_3
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p2, Lorg/cocos2d/types/CGSize;->width:F

    iget v2, p3, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 205
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p2, Lorg/cocos2d/types/CGSize;->height:F

    iget v2, p3, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0

    .line 208
    :pswitch_4
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    goto :goto_0

    .line 211
    :pswitch_5
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0

    .line 214
    :pswitch_6
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p2, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v0, v1

    iget v1, p3, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    goto :goto_0

    .line 217
    :pswitch_7
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p2, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v0, v1

    iget v1, p3, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0

    .line 220
    :pswitch_8
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p3, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p4

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    goto :goto_0

    .line 223
    :pswitch_9
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p3, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p4

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0

    .line 226
    :pswitch_a
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p2, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v0, v1

    add-float/2addr v0, p4

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    goto :goto_0

    .line 229
    :pswitch_b
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p2, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v0, v1

    iget v1, p3, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v0, v1

    add-float/2addr v0, p4

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertToAnchorPoint(Lorg/cocos2d/nodes/CCSprite;IFIF)V
    .locals 8
    .param p0, "arg"    # Lorg/cocos2d/nodes/CCSprite;
    .param p1, "dirToX"    # I
    .param p2, "distanceX"    # F
    .param p3, "dirToY"    # I
    .param p4, "distanceY"    # F

    .prologue
    .line 101
    .line 102
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v0

    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v1

    .line 103
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 101
    invoke-static/range {v0 .. v7}, Lorg/cocos2d/types/util/CGPointUtil;->calcAnchorPointByDistance(FFFFIFIF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 105
    return-void
.end method

.method public static convertToAnchorPoint(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSpriteFrame;IFIF)V
    .locals 8
    .param p0, "argSprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p1, "argFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "dirToX"    # I
    .param p3, "distanceX"    # F
    .param p4, "dirToY"    # I
    .param p5, "distanceY"    # F

    .prologue
    .line 118
    .line 119
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getRectRef()Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iget-object v0, v0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getRectRef()Lorg/cocos2d/types/CGRect;

    move-result-object v1

    iget-object v1, v1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    .line 120
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 118
    invoke-static/range {v0 .. v7}, Lorg/cocos2d/types/util/CGPointUtil;->calcAnchorPointByDistance(FFFFIFIF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 122
    return-void
.end method

.method public static distance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F
    .locals 4
    .param p0, "p1"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "p2"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 75
    iget v2, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, p0, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float v0, v2, v3

    .line 76
    .local v0, "dx":F
    iget v2, p1, Lorg/cocos2d/types/CGPoint;->y:F

    iget v3, p0, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float v1, v2, v3

    .line 77
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static makPointByUI(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/types/CGPoint;
    .locals 4
    .param p0, "argNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "uiPoint"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, p1, Lorg/cocos2d/types/CGPoint;->y:F

    .line 157
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/types/util/CGPointUtil;->makePointByUI(Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGPoint;FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static varargs makePointByLayout(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;[[F)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p0, "selfNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "referenceNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "args"    # [[F

    .prologue
    .line 177
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCNode;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 177
    invoke-static {p0, v0, v1, p2}, Lorg/cocos2d/types/util/CGPointUtil;->makePointByLayout(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;[[F)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static varargs makePointByLayout(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;[[F)Lorg/cocos2d/types/CGPoint;
    .locals 8
    .param p0, "selfNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "uiPoint"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "size"    # Lorg/cocos2d/types/CGSize;
    .param p3, "args"    # [[F

    .prologue
    const/4 v7, 0x2

    .line 183
    if-eqz p3, :cond_0

    array-length v1, p3

    if-le v1, v7, :cond_1

    .line 184
    :cond_0
    const/4 v1, 0x0

    .line 190
    :goto_0
    return-object v1

    .line 186
    :cond_1
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 187
    .local v0, "ret":Lorg/cocos2d/types/CGPoint;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v7, :cond_2

    .line 190
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    iget v3, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v4, v0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 190
    invoke-static {v1, v2, v3, v4}, Lorg/cocos2d/types/util/CGPointUtil;->makePointByUI(Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGPoint;FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    aget-object v1, p3, v6

    const/4 v2, 0x1

    aget v4, v1, v2

    aget-object v1, p3, v6

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v5, v1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/types/util/CGPointUtil;->ccLayoutTo(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGSize;FI)V

    .line 187
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static makePointByUI(Lorg/cocos2d/nodes/CCNode;FF)Lorg/cocos2d/types/CGPoint;
    .locals 2
    .param p0, "argNode"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "uix"    # F
    .param p2, "uiy"    # F

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->getContentSizeRef()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCNode;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 162
    invoke-static {v0, v1, p1, p2}, Lorg/cocos2d/types/util/CGPointUtil;->makePointByUI(Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGPoint;FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public static makePointByUI(Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/CGPoint;FF)Lorg/cocos2d/types/CGPoint;
    .locals 5
    .param p0, "nodeContentSize"    # Lorg/cocos2d/types/CGSize;
    .param p1, "nodeAnchorPoint"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "uix"    # F
    .param p3, "uiy"    # F

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "gly":F
    sget-object v2, Lcom/sns/game/util/DeviceManager;->posZero_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    add-float/2addr v2, p2

    iget v3, p0, Lorg/cocos2d/types/CGSize;->width:F

    .line 170
    iget v4, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v3, v4

    .line 169
    add-float v0, v2, v3

    .line 171
    .local v0, "glx":F
    sget-object v2, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v2, p3

    iget v3, p0, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v2, v3

    .line 172
    iget v3, p0, Lorg/cocos2d/types/CGSize;->height:F

    iget v4, p1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v3, v4

    .line 171
    add-float v1, v2, v3

    .line 173
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    return-object v2
.end method

.method public static mult(Lorg/cocos2d/types/CGPoint;F)V
    .locals 1
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "s"    # F

    .prologue
    .line 20
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 21
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 22
    return-void
.end method

.method public static mult(Lorg/cocos2d/types/CGPoint;FLorg/cocos2d/types/CGPoint;)V
    .locals 1
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "s"    # F
    .param p2, "res"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 31
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v0, p1

    iput v0, p2, Lorg/cocos2d/types/CGPoint;->x:F

    .line 32
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v0, p1

    iput v0, p2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 33
    return-void
.end method

.method public static normalize(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V
    .locals 3
    .param p0, "src"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "dst"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 50
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0}, Lorg/cocos2d/types/CGPoint;->ccpLength(Lorg/cocos2d/types/CGPoint;)F

    move-result v2

    div-float v0, v1, v2

    .line 51
    .local v0, "invLen":F
    iget v1, p0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v1, v0

    iget v2, p0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 52
    return-void
.end method

.method public static rotateByAngle(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;FLorg/cocos2d/types/CGPoint;)V
    .locals 5
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "pivot"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "angle"    # F
    .param p3, "ret"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 82
    invoke-static {p0, p1, p3}, Lorg/cocos2d/types/util/CGPointUtil;->sub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V

    .line 83
    iget v2, p3, Lorg/cocos2d/types/CGPoint;->x:F

    .line 84
    .local v2, "t":F
    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 85
    .local v0, "cosa":F
    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 86
    .local v1, "sina":F
    mul-float v3, v2, v0

    iget v4, p3, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, p3, Lorg/cocos2d/types/CGPoint;->x:F

    .line 87
    mul-float v3, v2, v1

    iget v4, p3, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p3, Lorg/cocos2d/types/CGPoint;->y:F

    .line 88
    invoke-static {p3, p1}, Lorg/cocos2d/types/util/CGPointUtil;->add(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V

    .line 89
    return-void
.end method

.method public static sub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p0, "v"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "toAdd"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 70
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 71
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 72
    return-void
.end method

.method public static sub(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p0, "first"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "second"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "ret"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 65
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/cocos2d/types/CGPoint;->x:F

    .line 66
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/cocos2d/types/CGPoint;->y:F

    .line 67
    return-void
.end method

.method public static zero(Lorg/cocos2d/types/CGPoint;)V
    .locals 1
    .param p0, "p"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    .line 46
    iput v0, p0, Lorg/cocos2d/types/CGPoint;->y:F

    .line 47
    return-void
.end method

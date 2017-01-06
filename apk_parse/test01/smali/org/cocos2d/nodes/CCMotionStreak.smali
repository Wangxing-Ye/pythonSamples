.class public Lorg/cocos2d/nodes/CCMotionStreak;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCMotionStreak.java"

# interfaces
.implements Lorg/cocos2d/actions/UpdateCallback;


# instance fields
.field lastLocation_:Lorg/cocos2d/types/CGPoint;

.field ribbon_:Lorg/cocos2d/nodes/CCRibbon;

.field segThreshold_:F

.field width_:F


# direct methods
.method public constructor <init>(FFLjava/lang/String;FFLorg/cocos2d/types/ccColor4B;)V
    .locals 6
    .param p1, "fade"    # F
    .param p2, "seg"    # F
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "width"    # F
    .param p5, "length"    # F
    .param p6, "color"    # Lorg/cocos2d/types/ccColor4B;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 49
    iput p2, p0, Lorg/cocos2d/nodes/CCMotionStreak;->segThreshold_:F

    .line 50
    iput p4, p0, Lorg/cocos2d/nodes/CCMotionStreak;->width_:F

    .line 51
    invoke-static {v0, v0}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/nodes/CCMotionStreak;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    .line 52
    new-instance v0, Lorg/cocos2d/nodes/CCRibbon;

    iget v1, p0, Lorg/cocos2d/nodes/CCMotionStreak;->width_:F

    move-object v2, p3

    move v3, p5

    move-object v4, p6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/nodes/CCRibbon;-><init>(FLjava/lang/String;FLorg/cocos2d/types/ccColor4B;F)V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCMotionStreak;->ribbon_:Lorg/cocos2d/nodes/CCRibbon;

    .line 53
    iget-object v0, p0, Lorg/cocos2d/nodes/CCMotionStreak;->ribbon_:Lorg/cocos2d/nodes/CCRibbon;

    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCMotionStreak;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 57
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCMotionStreak;->scheduleUpdate()V

    .line 58
    return-void
.end method


# virtual methods
.method public blendFunc()Lorg/cocos2d/types/ccBlendFunc;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/cocos2d/nodes/CCMotionStreak;->ribbon_:Lorg/cocos2d/nodes/CCRibbon;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCRibbon;->blendFunc()Lorg/cocos2d/types/ccBlendFunc;

    move-result-object v0

    return-object v0
.end method

.method public getRibbon()Lorg/cocos2d/nodes/CCRibbon;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/cocos2d/nodes/CCMotionStreak;->ribbon_:Lorg/cocos2d/nodes/CCRibbon;

    return-object v0
.end method

.method public setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V
    .locals 1
    .param p1, "blendFunc"    # Lorg/cocos2d/types/ccBlendFunc;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/cocos2d/nodes/CCMotionStreak;->ribbon_:Lorg/cocos2d/nodes/CCRibbon;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCRibbon;->setBlendFunc(Lorg/cocos2d/types/ccBlendFunc;)V

    .line 90
    return-void
.end method

.method public setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 1
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/cocos2d/nodes/CCMotionStreak;->ribbon_:Lorg/cocos2d/nodes/CCRibbon;

    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCRibbon;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 78
    return-void
.end method

.method public streak(FFLjava/lang/String;FFLorg/cocos2d/types/ccColor4B;)Lorg/cocos2d/nodes/CCMotionStreak;
    .locals 7
    .param p1, "fade"    # F
    .param p2, "seg"    # F
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "width"    # F
    .param p5, "length"    # F
    .param p6, "color"    # Lorg/cocos2d/types/ccColor4B;

    .prologue
    .line 44
    new-instance v0, Lorg/cocos2d/nodes/CCMotionStreak;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/cocos2d/nodes/CCMotionStreak;-><init>(FFLjava/lang/String;FFLorg/cocos2d/types/ccColor4B;)V

    return-object v0
.end method

.method public texture()Lorg/cocos2d/opengl/CCTexture2D;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/cocos2d/nodes/CCMotionStreak;->ribbon_:Lorg/cocos2d/nodes/CCRibbon;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCRibbon;->texture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 8
    .param p1, "delta"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 65
    invoke-virtual {p0, v2, v2}, Lorg/cocos2d/nodes/CCMotionStreak;->convertToWorldSpace(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    .line 66
    .local v1, "location":Lorg/cocos2d/types/CGPoint;
    iget-object v2, p0, Lorg/cocos2d/nodes/CCMotionStreak;->ribbon_:Lorg/cocos2d/nodes/CCRibbon;

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v3, v7

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v4, v7

    invoke-static {v3, v4}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCRibbon;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 67
    iget-object v2, p0, Lorg/cocos2d/nodes/CCMotionStreak;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    iget v2, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v3, v1, Lorg/cocos2d/types/CGPoint;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lorg/cocos2d/nodes/CCMotionStreak;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    iget v3, v3, Lorg/cocos2d/types/CGPoint;->y:F

    iget v4, v1, Lorg/cocos2d/types/CGPoint;->y:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 68
    .local v0, "len":F
    iget v2, p0, Lorg/cocos2d/nodes/CCMotionStreak;->segThreshold_:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 69
    iget-object v2, p0, Lorg/cocos2d/nodes/CCMotionStreak;->ribbon_:Lorg/cocos2d/nodes/CCRibbon;

    iget v3, p0, Lorg/cocos2d/nodes/CCMotionStreak;->width_:F

    invoke-virtual {v2, v1, v3}, Lorg/cocos2d/nodes/CCRibbon;->addPoint(Lorg/cocos2d/types/CGPoint;F)V

    .line 70
    iput-object v1, p0, Lorg/cocos2d/nodes/CCMotionStreak;->lastLocation_:Lorg/cocos2d/types/CGPoint;

    .line 72
    :cond_0
    iget-object v2, p0, Lorg/cocos2d/nodes/CCMotionStreak;->ribbon_:Lorg/cocos2d/nodes/CCRibbon;

    invoke-virtual {v2, p1}, Lorg/cocos2d/nodes/CCRibbon;->update(F)V

    .line 73
    return-void
.end method

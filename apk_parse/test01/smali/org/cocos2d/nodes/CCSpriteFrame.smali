.class public Lorg/cocos2d/nodes/CCSpriteFrame;
.super Ljava/lang/Object;
.source "CCSpriteFrame.java"


# instance fields
.field offset_:Lorg/cocos2d/types/CGPoint;

.field originalSize_:Lorg/cocos2d/types/CGSize;

.field rect_:Lorg/cocos2d/types/CGRect;

.field rotated_:Ljava/lang/Boolean;

.field texture_:Lorg/cocos2d/opengl/CCTexture2D;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)V
    .locals 6
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;
    .param p3, "offset"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 83
    iget-object v4, p2, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/nodes/CCSpriteFrame;-><init>(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Ljava/lang/Boolean;)V

    .line 84
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;
    .param p3, "offset"    # Lorg/cocos2d/types/CGPoint;
    .param p4, "originalSize"    # Lorg/cocos2d/types/CGSize;
    .param p5, "rotated"    # Ljava/lang/Boolean;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    .line 91
    iput-object p3, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->offset_:Lorg/cocos2d/types/CGPoint;

    .line 92
    iput-object p2, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->rect_:Lorg/cocos2d/types/CGRect;

    .line 93
    iput-object p4, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->originalSize_:Lorg/cocos2d/types/CGSize;

    .line 94
    iput-object p5, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->rotated_:Ljava/lang/Boolean;

    .line 95
    return-void
.end method

.method public static frame(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Ljava/lang/Boolean;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 6
    .param p0, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;
    .param p2, "rotated"    # Ljava/lang/Boolean;
    .param p3, "offset"    # Lorg/cocos2d/types/CGPoint;
    .param p4, "originalSize"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 76
    new-instance v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/nodes/CCSpriteFrame;-><init>(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static frame(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 1
    .param p0, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;
    .param p2, "offset"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 62
    new-instance v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/nodes/CCSpriteFrame;-><init>(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)V

    return-object v0
.end method

.method public static frame(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 6
    .param p0, "texture"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p1, "rect"    # Lorg/cocos2d/types/CGRect;
    .param p2, "offset"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "originalSize"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 69
    new-instance v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/nodes/CCSpriteFrame;-><init>(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/cocos2d/nodes/CCSpriteFrame;
    .locals 6

    .prologue
    .line 98
    new-instance v0, Lorg/cocos2d/nodes/CCSpriteFrame;

    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    iget-object v2, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->rect_:Lorg/cocos2d/types/CGRect;

    iget-object v3, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->offset_:Lorg/cocos2d/types/CGPoint;

    iget-object v4, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->originalSize_:Lorg/cocos2d/types/CGSize;

    iget-object v5, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->rotated_:Ljava/lang/Boolean;

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/nodes/CCSpriteFrame;-><init>(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Ljava/lang/Boolean;)V

    .line 99
    .local v0, "copy":Lorg/cocos2d/nodes/CCSpriteFrame;
    return-object v0
.end method

.method public getOffset()Lorg/cocos2d/types/CGPoint;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->offset_:Lorg/cocos2d/types/CGPoint;

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    iget-object v1, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->offset_:Lorg/cocos2d/types/CGPoint;

    iget v1, v1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetRef()Lorg/cocos2d/types/CGPoint;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->offset_:Lorg/cocos2d/types/CGPoint;

    return-object v0
.end method

.method public getOriginalSize_()Lorg/cocos2d/types/CGSize;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->originalSize_:Lorg/cocos2d/types/CGSize;

    return-object v0
.end method

.method public getRect()Lorg/cocos2d/types/CGRect;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->rect_:Lorg/cocos2d/types/CGRect;

    invoke-static {v0}, Lorg/cocos2d/types/CGRect;->make(Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    return-object v0
.end method

.method public getRectRef()Lorg/cocos2d/types/CGRect;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->rect_:Lorg/cocos2d/types/CGRect;

    return-object v0
.end method

.method public getRotated()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->rotated_:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTexture()Lorg/cocos2d/opengl/CCTexture2D;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/cocos2d/nodes/CCSpriteFrame;->texture_:Lorg/cocos2d/opengl/CCTexture2D;

    return-object v0
.end method

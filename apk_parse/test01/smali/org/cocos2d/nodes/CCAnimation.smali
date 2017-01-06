.class public Lorg/cocos2d/nodes/CCAnimation;
.super Ljava/lang/Object;
.source "CCAnimation.java"


# instance fields
.field private delay_:F

.field frames_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/cocos2d/nodes/CCAnimation;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delay"    # F

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/cocos2d/nodes/CCAnimation;-><init>(Ljava/lang/String;FLjava/util/ArrayList;)V

    .line 82
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;FLjava/util/ArrayList;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delay"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p2, p0, Lorg/cocos2d/nodes/CCAnimation;->delay_:F

    .line 87
    iput-object p1, p0, Lorg/cocos2d/nodes/CCAnimation;->name_:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    .line 89
    if-eqz p3, :cond_0

    .line 90
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delay"    # F
    .param p3, "frame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p2, p0, Lorg/cocos2d/nodes/CCAnimation;->delay_:F

    .line 108
    iput-object p1, p0, Lorg/cocos2d/nodes/CCAnimation;->name_:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    .line 110
    if-eqz p3, :cond_0

    .line 111
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;F[Lorg/cocos2d/nodes/CCSpriteFrame;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delay"    # F
    .param p3, "frames"    # [Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p2, p0, Lorg/cocos2d/nodes/CCAnimation;->delay_:F

    .line 96
    iput-object p1, p0, Lorg/cocos2d/nodes/CCAnimation;->name_:Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    .line 98
    if-eqz p3, :cond_0

    .line 99
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 103
    :cond_0
    return-void

    .line 99
    :cond_1
    aget-object v0, p3, v1

    .line 100
    .local v0, "ccSpriteFrame":Lorg/cocos2d/nodes/CCSpriteFrame;
    iget-object v3, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs constructor <init>(Ljava/lang/String;F[Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 3
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "d"    # F
    .param p3, "textures"    # [Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/cocos2d/nodes/CCAnimation;->name_:Ljava/lang/String;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    .line 158
    iput p2, p0, Lorg/cocos2d/nodes/CCAnimation;->delay_:F

    .line 160
    if-eqz p3, :cond_0

    .line 161
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 165
    :cond_0
    return-void

    .line 161
    :cond_1
    aget-object v0, p3, v1

    .line 162
    .local v0, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    invoke-virtual {p0, v0}, Lorg/cocos2d/nodes/CCAnimation;->addFrame(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/cocos2d/nodes/CCAnimation;-><init>(Ljava/lang/String;FLjava/util/ArrayList;)V

    .line 77
    return-void
.end method

.method public static animation(Ljava/lang/String;)Lorg/cocos2d/nodes/CCAnimation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lorg/cocos2d/nodes/CCAnimation;

    invoke-direct {v0, p0}, Lorg/cocos2d/nodes/CCAnimation;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static animation(Ljava/lang/String;F)Lorg/cocos2d/nodes/CCAnimation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "delay"    # F

    .prologue
    .line 46
    new-instance v0, Lorg/cocos2d/nodes/CCAnimation;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/nodes/CCAnimation;-><init>(Ljava/lang/String;F)V

    return-object v0
.end method

.method public static animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "delay"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;)",
            "Lorg/cocos2d/nodes/CCAnimation;"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    new-instance v0, Lorg/cocos2d/nodes/CCAnimation;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/nodes/CCAnimation;-><init>(Ljava/lang/String;FLjava/util/ArrayList;)V

    return-object v0
.end method

.method public static animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "delay"    # F
    .param p2, "frame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 61
    new-instance v0, Lorg/cocos2d/nodes/CCAnimation;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/nodes/CCAnimation;-><init>(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)V

    return-object v0
.end method

.method public static animation(Ljava/lang/String;F[Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "delay"    # F
    .param p2, "frames"    # [Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 56
    new-instance v0, Lorg/cocos2d/nodes/CCAnimation;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/nodes/CCAnimation;-><init>(Ljava/lang/String;F[Lorg/cocos2d/nodes/CCSpriteFrame;)V

    return-object v0
.end method

.method public static animation(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;)",
            "Lorg/cocos2d/nodes/CCAnimation;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    new-instance v0, Lorg/cocos2d/nodes/CCAnimation;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/nodes/CCAnimation;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public addFrame(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v2

    .line 120
    .local v2, "tex":Lorg/cocos2d/opengl/CCTexture2D;
    invoke-static {v4, v4, v4, v4}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 121
    .local v1, "rect":Lorg/cocos2d/types/CGRect;
    invoke-virtual {v2}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    iput-object v3, v1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    .line 122
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/cocos2d/nodes/CCSpriteFrame;->frame(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    .line 123
    .local v0, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    iget-object v3, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public addFrame(Lorg/cocos2d/nodes/CCSpriteFrame;)V
    .locals 1
    .param p1, "frame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public addFrame(Lorg/cocos2d/opengl/CCTexture2D;)V
    .locals 3
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {v2, v2, v2, v2}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    .line 128
    .local v1, "rect":Lorg/cocos2d/types/CGRect;
    invoke-virtual {p1}, Lorg/cocos2d/opengl/CCTexture2D;->getContentSize()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iput-object v2, v1, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    .line 129
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/cocos2d/nodes/CCSpriteFrame;->frame(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    .line 130
    .local v0, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    iget-object v2, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public addFrame(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;)V
    .locals 2
    .param p1, "tex"    # Lorg/cocos2d/opengl/CCTexture2D;
    .param p2, "rect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 172
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/cocos2d/nodes/CCSpriteFrame;->frame(Lorg/cocos2d/opengl/CCTexture2D;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v0

    .line 173
    .local v0, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    iget-object v1, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public delay()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lorg/cocos2d/nodes/CCAnimation;->delay_:F

    return v0
.end method

.method public frames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAnimation;->frames_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/cocos2d/nodes/CCAnimation;->name_:Ljava/lang/String;

    return-object v0
.end method

.class public Lorg/cocos2d/nodes/CCLabel;
.super Lorg/cocos2d/nodes/CCSprite;
.source "CCLabel.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCLabelProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/nodes/CCLabel$StringReloader;,
        Lorg/cocos2d/nodes/CCLabel$TextAlignment;
    }
.end annotation


# instance fields
.field private _alignment:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

.field private _dimensions:Lorg/cocos2d/types/CGSize;

.field private _fontName:Ljava/lang/String;

.field private _fontSize:F

.field private _fontStyle:I

.field private _string:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;F)V
    .locals 6
    .param p1, "string"    # Ljava/lang/CharSequence;
    .param p2, "fontname"    # Ljava/lang/String;
    .param p3, "fontsize"    # F

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {v0, v0}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->CENTER:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/nodes/CCLabel;-><init>(Ljava/lang/CharSequence;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;F)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;FI)V
    .locals 7
    .param p1, "string"    # Ljava/lang/CharSequence;
    .param p2, "fontname"    # Ljava/lang/String;
    .param p3, "fontsize"    # F
    .param p4, "fontStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-static {v0, v0}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->CENTER:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/cocos2d/nodes/CCLabel;-><init>(Ljava/lang/CharSequence;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;FI)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;F)V
    .locals 1
    .param p1, "string"    # Ljava/lang/CharSequence;
    .param p2, "dimensions"    # Lorg/cocos2d/types/CGSize;
    .param p3, "alignment"    # Lorg/cocos2d/nodes/CCLabel$TextAlignment;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "size"    # F

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCSprite;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/nodes/CCLabel;->_fontStyle:I

    .line 71
    iput-object p2, p0, Lorg/cocos2d/nodes/CCLabel;->_dimensions:Lorg/cocos2d/types/CGSize;

    .line 72
    iput-object p3, p0, Lorg/cocos2d/nodes/CCLabel;->_alignment:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    .line 73
    iput-object p4, p0, Lorg/cocos2d/nodes/CCLabel;->_fontName:Ljava/lang/String;

    .line 74
    iput p5, p0, Lorg/cocos2d/nodes/CCLabel;->_fontSize:F

    .line 76
    invoke-virtual {p0, p1}, Lorg/cocos2d/nodes/CCLabel;->setString(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;FI)V
    .locals 0
    .param p1, "string"    # Ljava/lang/CharSequence;
    .param p2, "dimensions"    # Lorg/cocos2d/types/CGSize;
    .param p3, "alignment"    # Lorg/cocos2d/nodes/CCLabel$TextAlignment;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "size"    # F
    .param p6, "fontStyle"    # I

    .prologue
    .line 81
    invoke-direct/range {p0 .. p5}, Lorg/cocos2d/nodes/CCLabel;-><init>(Ljava/lang/CharSequence;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;F)V

    .line 82
    iput p6, p0, Lorg/cocos2d/nodes/CCLabel;->_fontStyle:I

    .line 83
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2d/nodes/CCLabel;)Lorg/cocos2d/types/CGSize;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabel;->_dimensions:Lorg/cocos2d/types/CGSize;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2d/nodes/CCLabel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabel;->_string:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cocos2d/nodes/CCLabel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabel;->_fontName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cocos2d/nodes/CCLabel;)F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lorg/cocos2d/nodes/CCLabel;->_fontSize:F

    return v0
.end method

.method static synthetic access$4(Lorg/cocos2d/nodes/CCLabel;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/cocos2d/nodes/CCLabel;->_fontStyle:I

    return v0
.end method

.method static synthetic access$5(Lorg/cocos2d/nodes/CCLabel;)Lorg/cocos2d/nodes/CCLabel$TextAlignment;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/cocos2d/nodes/CCLabel;->_alignment:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    return-object v0
.end method

.method public static makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "fontname"    # Ljava/lang/String;
    .param p2, "fontsize"    # F

    .prologue
    const/4 v1, 0x0

    .line 50
    new-instance v0, Lorg/cocos2d/nodes/CCLabel;

    invoke-static {v1, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->CENTER:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/nodes/CCLabel;-><init>(Ljava/lang/CharSequence;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;F)V

    return-object v0
.end method

.method public static makeLabel(Ljava/lang/String;Ljava/lang/String;FI)Lorg/cocos2d/nodes/CCLabel;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "fontname"    # Ljava/lang/String;
    .param p2, "fontsize"    # F
    .param p3, "fontStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 54
    new-instance v0, Lorg/cocos2d/nodes/CCLabel;

    invoke-static {v1, v1}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/nodes/CCLabel$TextAlignment;->CENTER:Lorg/cocos2d/nodes/CCLabel$TextAlignment;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/cocos2d/nodes/CCLabel;-><init>(Ljava/lang/CharSequence;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;FI)V

    return-object v0
.end method

.method public static makeLabel(Ljava/lang/String;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "dimensions"    # Lorg/cocos2d/types/CGSize;
    .param p2, "alignment"    # Lorg/cocos2d/nodes/CCLabel$TextAlignment;
    .param p3, "fontname"    # Ljava/lang/String;
    .param p4, "fontsize"    # F

    .prologue
    .line 39
    new-instance v0, Lorg/cocos2d/nodes/CCLabel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/nodes/CCLabel;-><init>(Ljava/lang/CharSequence;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;F)V

    return-object v0
.end method

.method public static makeLabel(Ljava/lang/String;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;FI)Lorg/cocos2d/nodes/CCLabel;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "dimensions"    # Lorg/cocos2d/types/CGSize;
    .param p2, "alignment"    # Lorg/cocos2d/nodes/CCLabel$TextAlignment;
    .param p3, "fontname"    # Ljava/lang/String;
    .param p4, "fontsize"    # F
    .param p5, "fontStyle"    # I

    .prologue
    .line 45
    new-instance v0, Lorg/cocos2d/nodes/CCLabel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/cocos2d/nodes/CCLabel;-><init>(Ljava/lang/CharSequence;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/nodes/CCLabel$TextAlignment;Ljava/lang/String;FI)V

    return-object v0
.end method


# virtual methods
.method public setString(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 116
    iget-object v2, p0, Lorg/cocos2d/nodes/CCLabel;->_string:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/cocos2d/nodes/CCLabel;->_string:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "string":Ljava/lang/String;
    iput-object v0, p0, Lorg/cocos2d/nodes/CCLabel;->_string:Ljava/lang/String;

    .line 121
    new-instance v1, Lorg/cocos2d/opengl/CCTexture2D;

    invoke-direct {v1}, Lorg/cocos2d/opengl/CCTexture2D;-><init>()V

    .line 122
    .local v1, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    invoke-virtual {p0, v1}, Lorg/cocos2d/nodes/CCLabel;->setTexture(Lorg/cocos2d/opengl/CCTexture2D;)V

    .line 123
    new-instance v2, Lorg/cocos2d/nodes/CCLabel$StringReloader;

    invoke-direct {v2, p0}, Lorg/cocos2d/nodes/CCLabel$StringReloader;-><init>(Lorg/cocos2d/nodes/CCLabel;)V

    invoke-virtual {v1, v2}, Lorg/cocos2d/opengl/CCTexture2D;->setLoader(Lorg/cocos2d/opengl/GLResourceHelper$GLResourceLoader;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CCLabel <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/cocos2d/nodes/CCLabel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const-string v1, " | FontName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/nodes/CCLabel;->_fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FontSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/nodes/CCLabel;->_fontSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

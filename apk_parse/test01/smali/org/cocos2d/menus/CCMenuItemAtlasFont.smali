.class public Lorg/cocos2d/menus/CCMenuItemAtlasFont;
.super Lorg/cocos2d/menus/CCMenuItemLabel;
.source "CCMenuItemAtlasFont.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lorg/cocos2d/menus/CCMenuItemAtlasFont;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/menus/CCMenuItemAtlasFont;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/cocos2d/nodes/CCLabelAtlas;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Lorg/cocos2d/nodes/CCLabelAtlas;
    .param p2, "rec"    # Lorg/cocos2d/nodes/CCNode;
    .param p3, "cb"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/menus/CCMenuItemLabel;-><init>(Lorg/cocos2d/protocols/CCLabelProtocol;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static item(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/menus/CCMenuItemAtlasFont;
    .locals 3
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "charMapFile"    # Ljava/lang/String;
    .param p2, "itemWidth"    # I
    .param p3, "itemHeight"    # I
    .param p4, "startCharMap"    # C

    .prologue
    const/4 v2, 0x0

    .line 13
    sget-boolean v1, Lorg/cocos2d/menus/CCMenuItemAtlasFont;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "value length must be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 15
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 16
    .local v0, "label":Lorg/cocos2d/nodes/CCLabelAtlas;
    new-instance v1, Lorg/cocos2d/menus/CCMenuItemAtlasFont;

    invoke-direct {v1, v0, v2, v2}, Lorg/cocos2d/menus/CCMenuItemAtlasFont;-><init>(Lorg/cocos2d/nodes/CCLabelAtlas;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v1
.end method

.method public static item(Ljava/lang/CharSequence;Ljava/lang/String;IICLorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemAtlasFont;
    .locals 3
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "charMapFile"    # Ljava/lang/String;
    .param p2, "itemWidth"    # I
    .param p3, "itemHeight"    # I
    .param p4, "startCharMap"    # C
    .param p5, "rec"    # Lorg/cocos2d/nodes/CCNode;
    .param p6, "cb"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-boolean v1, Lorg/cocos2d/menus/CCMenuItemAtlasFont;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "value length must be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 23
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    .line 24
    .local v0, "label":Lorg/cocos2d/nodes/CCLabelAtlas;
    new-instance v1, Lorg/cocos2d/menus/CCMenuItemAtlasFont;

    invoke-direct {v1, v0, p5, p6}, Lorg/cocos2d/menus/CCMenuItemAtlasFont;-><init>(Lorg/cocos2d/nodes/CCLabelAtlas;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v1
.end method

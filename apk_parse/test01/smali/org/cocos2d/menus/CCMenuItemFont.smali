.class public Lorg/cocos2d/menus/CCMenuItemFont;
.super Lorg/cocos2d/menus/CCMenuItemLabel;
.source "CCMenuItemFont.java"


# static fields
.field static _fontName:Ljava/lang/String;

.field static _fontSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x18

    sput v0, Lorg/cocos2d/menus/CCMenuItemFont;->_fontSize:I

    .line 13
    const-string v0, "DroidSans"

    sput-object v0, Lorg/cocos2d/menus/CCMenuItemFont;->_fontName:Ljava/lang/String;

    .line 9
    return-void
.end method

.method protected constructor <init>(Lorg/cocos2d/nodes/CCLabel;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Lorg/cocos2d/nodes/CCLabel;
    .param p2, "rec"    # Lorg/cocos2d/nodes/CCNode;
    .param p3, "cb"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/menus/CCMenuItemLabel;-><init>(Lorg/cocos2d/protocols/CCLabelProtocol;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static fontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/cocos2d/menus/CCMenuItemFont;->_fontName:Ljava/lang/String;

    return-object v0
.end method

.method public static fontSize()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lorg/cocos2d/menus/CCMenuItemFont;->_fontSize:I

    return v0
.end method

.method public static item(Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemFont;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v0, Lorg/cocos2d/menus/CCMenuItemFont;

    sget-object v1, Lorg/cocos2d/menus/CCMenuItemFont;->_fontName:Ljava/lang/String;

    sget v2, Lorg/cocos2d/menus/CCMenuItemFont;->_fontSize:I

    int-to-float v2, v2

    invoke-static {p0, v1, v2}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lorg/cocos2d/menus/CCMenuItemFont;-><init>(Lorg/cocos2d/nodes/CCLabel;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static item(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemFont;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "rec"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "cb"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v1, Lorg/cocos2d/menus/CCMenuItemFont;->_fontName:Ljava/lang/String;

    sget v2, Lorg/cocos2d/menus/CCMenuItemFont;->_fontSize:I

    int-to-float v2, v2

    invoke-static {p0, v1, v2}, Lorg/cocos2d/nodes/CCLabel;->makeLabel(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/nodes/CCLabel;

    move-result-object v0

    .line 44
    .local v0, "lbl":Lorg/cocos2d/nodes/CCLabel;
    new-instance v1, Lorg/cocos2d/menus/CCMenuItemFont;

    invoke-direct {v1, v0, p1, p2}, Lorg/cocos2d/menus/CCMenuItemFont;-><init>(Lorg/cocos2d/nodes/CCLabel;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v1
.end method

.method public static bridge synthetic item(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemLabel;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lorg/cocos2d/menus/CCMenuItemFont;->item(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemFont;

    move-result-object v0

    return-object v0
.end method

.method public static setFontName(Ljava/lang/String;)V
    .locals 0
    .param p0, "n"    # Ljava/lang/String;

    .prologue
    .line 27
    sput-object p0, Lorg/cocos2d/menus/CCMenuItemFont;->_fontName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static setFontSize(I)V
    .locals 0
    .param p0, "s"    # I

    .prologue
    .line 17
    sput p0, Lorg/cocos2d/menus/CCMenuItemFont;->_fontSize:I

    .line 18
    return-void
.end method

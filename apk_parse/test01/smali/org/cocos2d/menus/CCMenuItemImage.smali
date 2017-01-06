.class public Lorg/cocos2d/menus/CCMenuItemImage;
.super Lorg/cocos2d/menus/CCMenuItemSprite;
.source "CCMenuItemImage.java"


# direct methods
.method protected constructor <init>(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V
    .locals 0
    .param p1, "normal"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "selected"    # Lorg/cocos2d/nodes/CCSprite;
    .param p3, "disabled"    # Lorg/cocos2d/nodes/CCSprite;
    .param p4, "t"    # Lorg/cocos2d/nodes/CCNode;
    .param p5, "sel"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lorg/cocos2d/menus/CCMenuItemSprite;-><init>(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static item(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemImage;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "value2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-static {p0, p1, v0, v0, v0}, Lorg/cocos2d/menus/CCMenuItemImage;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemImage;

    move-result-object v0

    return-object v0
.end method

.method public static item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemImage;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "value2"    # Ljava/lang/String;
    .param p2, "value3"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-static {p0, p1, p2, v0, v0}, Lorg/cocos2d/menus/CCMenuItemImage;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemImage;

    move-result-object v0

    return-object v0
.end method

.method public static item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemImage;
    .locals 6
    .param p0, "normalI"    # Ljava/lang/String;
    .param p1, "selectedI"    # Ljava/lang/String;
    .param p2, "disabledI"    # Ljava/lang/String;
    .param p3, "t"    # Lorg/cocos2d/nodes/CCNode;
    .param p4, "sel"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lorg/cocos2d/menus/CCMenuItemImage;

    invoke-static {p0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    invoke-static {p1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .line 35
    if-nez p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v4, p3

    move-object v5, p4

    .line 34
    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/menus/CCMenuItemImage;-><init>(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)V

    return-object v0

    .line 35
    :cond_0
    invoke-static {p2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v3

    goto :goto_0
.end method

.method public static item(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemImage;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "value2"    # Ljava/lang/String;
    .param p2, "t"    # Lorg/cocos2d/nodes/CCNode;
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lorg/cocos2d/menus/CCMenuItemImage;->item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemImage;

    move-result-object v0

    return-object v0
.end method

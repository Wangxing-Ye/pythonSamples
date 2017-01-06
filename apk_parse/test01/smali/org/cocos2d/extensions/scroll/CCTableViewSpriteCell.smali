.class public Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;
.super Lorg/cocos2d/extensions/scroll/CCTableViewCell;
.source "CCTableViewSpriteCell.java"


# instance fields
.field private m_sprite:Lorg/cocos2d/nodes/CCSprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;-><init>()V

    return-void
.end method


# virtual methods
.method public getSprite()Lorg/cocos2d/nodes/CCSprite;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->m_sprite:Lorg/cocos2d/nodes/CCSprite;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->reset()V

    .line 33
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->m_sprite:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->m_sprite:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 36
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->m_sprite:Lorg/cocos2d/nodes/CCSprite;

    .line 37
    return-void
.end method

.method public setSprite(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 2
    .param p1, "s"    # Lorg/cocos2d/nodes/CCSprite;

    .prologue
    .line 15
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->m_sprite:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->m_sprite:Lorg/cocos2d/nodes/CCSprite;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->removeChild(Lorg/cocos2d/nodes/CCNode;Z)V

    .line 19
    :cond_0
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 20
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 21
    iput-object p1, p0, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->m_sprite:Lorg/cocos2d/nodes/CCSprite;

    .line 22
    iget-object v0, p0, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->m_sprite:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {p0, v0}, Lorg/cocos2d/extensions/scroll/CCTableViewSpriteCell;->addChild(Lorg/cocos2d/nodes/CCNode;)Lorg/cocos2d/nodes/CCNode;

    .line 23
    return-void
.end method

.class public Lorg/cocos2d/extensions/scroll/CCTableViewCell;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCTableViewCell.java"


# instance fields
.field private m_idx:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    return-void
.end method


# virtual methods
.method public getObjectID()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->m_idx:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 14
    const v0, 0x7fffffff

    iput v0, p0, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->m_idx:I

    .line 15
    return-void
.end method

.method public setObjectID(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 18
    iput p1, p0, Lorg/cocos2d/extensions/scroll/CCTableViewCell;->m_idx:I

    .line 19
    return-void
.end method

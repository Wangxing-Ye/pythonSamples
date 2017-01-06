.class Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;
.super Ljava/lang/Object;
.source "CCBitmapFontAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/opengl/CCBitmapFontAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ccBitmapFontDef"
.end annotation


# instance fields
.field charID:I

.field rect:Lorg/cocos2d/types/CGRect;

.field xAdvance:I

.field xOffset:I

.field yOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {v0, v0, v0, v0}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->rect:Lorg/cocos2d/types/CGRect;

    .line 68
    return-void
.end method

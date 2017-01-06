.class Lorg/cocos2d/menus/CCMenuItem$1;
.super Ljava/lang/Object;
.source "CCMenuItem.java"

# interfaces
.implements Lorg/cocos2d/menus/CCMenuItem$OnPlaySoundEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/menus/CCMenuItem;->addDefaultPlaySoundEffectListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/menus/CCMenuItem;


# direct methods
.method constructor <init>(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItem$1;->this$0:Lorg/cocos2d/menus/CCMenuItem;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public play(I)V
    .locals 1
    .param p1, "soundEffectResId"    # I

    .prologue
    .line 322
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 323
    invoke-static {p1}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 324
    :cond_0
    return-void
.end method

.class Lorg/cocos2d/transitions/CCTransitionScene$1;
.super Ljava/lang/Object;
.source "CCTransitionScene.java"

# interfaces
.implements Lorg/cocos2d/actions/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/transitions/CCTransitionScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/transitions/CCTransitionScene;


# direct methods
.method constructor <init>(Lorg/cocos2d/transitions/CCTransitionScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/transitions/CCTransitionScene$1;->this$0:Lorg/cocos2d/transitions/CCTransitionScene;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(F)V
    .locals 1
    .param p1, "d"    # F

    .prologue
    .line 89
    iget-object v0, p0, Lorg/cocos2d/transitions/CCTransitionScene$1;->this$0:Lorg/cocos2d/transitions/CCTransitionScene;

    invoke-virtual {v0, p1}, Lorg/cocos2d/transitions/CCTransitionScene;->setNewScene(F)V

    .line 90
    return-void
.end method

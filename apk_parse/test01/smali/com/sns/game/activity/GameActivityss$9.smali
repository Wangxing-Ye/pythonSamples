.class Lcom/sns/game/activity/GameActivityss$9;
.super Ljava/lang/Object;
.source "GameActivityss.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss;->defaultExitGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/activity/GameActivityss;


# direct methods
.method constructor <init>(Lcom/sns/game/activity/GameActivityss;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$9;->this$0:Lcom/sns/game/activity/GameActivityss;

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 545
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 546
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v1

    .line 547
    .local v1, "util":Lcom/sns/game/util/CCUtil;
    invoke-virtual {v1}, Lcom/sns/game/util/CCUtil;->findRuningLayer()Lorg/cocos2d/layers/CCLayer;

    move-result-object v0

    .line 548
    .local v0, "targetLayer":Lorg/cocos2d/layers/CCLayer;
    if-eqz v0, :cond_0

    .line 549
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 551
    :cond_0
    return-void
.end method

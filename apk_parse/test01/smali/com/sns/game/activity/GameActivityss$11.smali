.class Lcom/sns/game/activity/GameActivityss$11;
.super Ljava/lang/Object;
.source "GameActivityss.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss;->showGameAboutDialog(Lcom/sns/game/util/GameConstant$LayerTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/activity/GameActivityss;

.field private final synthetic val$targetTag:Lcom/sns/game/util/GameConstant$LayerTag;


# direct methods
.method constructor <init>(Lcom/sns/game/activity/GameActivityss;Lcom/sns/game/util/GameConstant$LayerTag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$11;->this$0:Lcom/sns/game/activity/GameActivityss;

    iput-object p2, p0, Lcom/sns/game/activity/GameActivityss$11;->val$targetTag:Lcom/sns/game/util/GameConstant$LayerTag;

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 891
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 892
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss$11;->val$targetTag:Lcom/sns/game/util/GameConstant$LayerTag;

    if-nez v0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    invoke-static {}, Lcom/sns/game/layer/CCNewMenuMainLayer;->getSelf()Lcom/sns/game/layer/CCNewMenuMainLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    invoke-static {}, Lcom/sns/game/layer/CCNewMenuMainLayer;->getSelf()Lcom/sns/game/layer/CCNewMenuMainLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewMenuMainLayer;->setIsTouchEnabled(Z)V

    goto :goto_0
.end method

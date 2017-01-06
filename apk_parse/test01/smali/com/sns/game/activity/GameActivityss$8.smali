.class Lcom/sns/game/activity/GameActivityss$8;
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
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$8;->this$0:Lcom/sns/game/activity/GameActivityss;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 528
    sget-object v3, Lcom/sns/game/database/dao/UserDataDao;->userdata:Lcom/sns/game/database/bean/UserData;

    invoke-virtual {v3}, Lcom/sns/game/database/bean/UserData;->getUserActionData()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "actionData":Ljava/lang/String;
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sns/game/util/CCUtil;->findRunningGameLayerUserDoPath()Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "userDoPath":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 531
    .local v1, "inPathName":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BANNER_\u9000\u51fa_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/sns/game/util/GameConstant;->userActionToUpdateBanner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v3, "\u9000\u51fa\u6e38\u620f"

    invoke-static {v1, v3}, Lcom/sns/game/util/GameConstant;->userActionToUpdatePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v3, p0, Lcom/sns/game/activity/GameActivityss$8;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v3}, Lcom/sns/game/activity/GameActivityss;->onDestroyGame()V

    .line 536
    return-void

    .line 530
    .end local v1    # "inPathName":Ljava/lang/String;
    :cond_0
    const-string v1, "\u9000\u51fa\u6e38\u620f"

    goto :goto_0
.end method

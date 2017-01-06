.class Lcom/sns/game/activity/GameActivityss$10;
.super Ljava/lang/Object;
.source "GameActivityss.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss;->checkNetWork()V
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
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$10;->this$0:Lcom/sns/game/activity/GameActivityss;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 575
    const/4 v1, 0x2

    .local v1, "max":I
    const/4 v0, 0x1

    .line 576
    .local v0, "count":I
    iget-object v5, p0, Lcom/sns/game/activity/GameActivityss$10;->this$0:Lcom/sns/game/activity/GameActivityss;

    # invokes: Lcom/sns/game/activity/GameActivityss;->getNetWorkTime()Ljava/lang/String;
    invoke-static {v5}, Lcom/sns/game/activity/GameActivityss;->access$2(Lcom/sns/game/activity/GameActivityss;)Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "netWorkTime":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 578
    :goto_0
    if-ne v0, v1, :cond_1

    .line 588
    :cond_0
    if-eqz v3, :cond_3

    move v2, v4

    .line 589
    .local v2, "netWorkTag":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 590
    .local v4, "tag":I
    :goto_2
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sns/game/database/bean/UserState;->setNetWorkTag(I)V

    .line 591
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sns/game/database/bean/UserState;->setLoginNetWorkTime(Ljava/lang/String;)V

    .line 592
    const-string v6, "Test"

    if-eqz v2, :cond_5

    const-string v5, "\u7f51\u7edc\u5df2\u8fde\u63a5"

    :goto_3
    invoke-static {v6, v5}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void

    .line 580
    .end local v2    # "netWorkTag":Z
    .end local v4    # "tag":I
    :cond_1
    iget-object v5, p0, Lcom/sns/game/activity/GameActivityss$10;->this$0:Lcom/sns/game/activity/GameActivityss;

    # invokes: Lcom/sns/game/activity/GameActivityss;->getNetWorkTime()Ljava/lang/String;
    invoke-static {v5}, Lcom/sns/game/activity/GameActivityss;->access$2(Lcom/sns/game/activity/GameActivityss;)Ljava/lang/String;

    move-result-object v3

    .line 581
    if-nez v3, :cond_2

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_2
    move v0, v1

    goto :goto_0

    .line 588
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 589
    .restart local v2    # "netWorkTag":Z
    :cond_4
    const/4 v4, -0x1

    goto :goto_2

    .line 592
    .restart local v4    # "tag":I
    :cond_5
    const-string v5, "\u7f51\u7edc\u672a\u8fde\u63a5"

    goto :goto_3
.end method

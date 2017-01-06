.class Lcom/sns/game/activity/GameActivityss$1;
.super Landroid/os/Handler;
.source "GameActivityss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sns/game/activity/GameActivityss;
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
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    .line 696
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/activity/GameActivityss$1;)Lcom/sns/game/activity/GameActivityss;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 702
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 801
    :goto_0
    :sswitch_0
    return-void

    .line 707
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 708
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 707
    invoke-static {v2}, Lcom/sns/game/util/CCUtil;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v1

    .line 799
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 720
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v2, p1}, Lcom/sns/game/activity/GameActivityss;->disposeHandlerMsg_ExtensionDialog(Landroid/os/Message;)V

    goto :goto_0

    .line 726
    :sswitch_3
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v2}, Lcom/sns/game/activity/GameActivityss;->disposeHandlerMsg_Loding()V

    goto :goto_0

    .line 744
    :sswitch_4
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v2, p1}, Lcom/sns/game/activity/GameActivityss;->disposeHandlerMsg_UserWeapon(Landroid/os/Message;)V

    goto :goto_0

    .line 751
    :sswitch_5
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v2, p1}, Lcom/sns/game/activity/GameActivityss;->disposeHandlerMsg_UserState(Landroid/os/Message;)V

    goto :goto_0

    .line 755
    :sswitch_6
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v2, p1}, Lcom/sns/game/activity/GameActivityss;->disposeHandlerMsg_GameSceneSystem(Landroid/os/Message;)V

    goto :goto_0

    .line 759
    :sswitch_7
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v2}, Lcom/sns/game/activity/GameActivityss;->checkNetWork()V

    goto :goto_0

    .line 763
    :sswitch_8
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v2}, Lcom/sns/game/activity/GameActivityss;->exitGameWithBack()V

    goto :goto_0

    .line 767
    :sswitch_9
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v2}, Lcom/sns/game/activity/GameActivityss;->exitGameAnOnce()V

    goto :goto_0

    .line 771
    :sswitch_a
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v2}, Lcom/sns/game/activity/GameActivityss;->moreGame()V

    goto :goto_0

    .line 778
    :sswitch_b
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v2, p1}, Lcom/sns/game/activity/GameActivityss;->dispatchLogicalHandleCallBack(Landroid/os/Message;)V

    goto :goto_0

    .line 782
    :sswitch_c
    iget-object v2, p0, Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v2, p1}, Lcom/sns/game/activity/GameActivityss;->handleCallBackForMsg(Landroid/os/Message;)V

    goto :goto_0

    .line 787
    :sswitch_d
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 788
    .local v0, "callBackMsg":Landroid/os/Message;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sns/game/activity/GameActivityss$1$1;

    invoke-direct {v3, p0, v0}, Lcom/sns/game/activity/GameActivityss$1$1;-><init>(Lcom/sns/game/activity/GameActivityss$1;Landroid/os/Message;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 793
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        -0x111 -> :sswitch_9
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x111 -> :sswitch_8
        0x222 -> :sswitch_a
        0x999 -> :sswitch_7
        0x9c9c -> :sswitch_b
        0x10c10c -> :sswitch_c
        0x11c11c -> :sswitch_d
    .end sparse-switch
.end method

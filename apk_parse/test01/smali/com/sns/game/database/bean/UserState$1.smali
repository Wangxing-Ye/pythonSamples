.class Lcom/sns/game/database/bean/UserState$1;
.super Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/database/bean/UserState;->activateToAnwtThread(ZLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/database/bean/UserState;


# direct methods
.method constructor <init>(Lcom/sns/game/database/bean/UserState;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/database/bean/UserState$1;->this$0:Lcom/sns/game/database/bean/UserState;

    .line 315
    invoke-direct {p0, p1}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;-><init>(Lcom/sns/game/database/bean/UserState;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    :try_start_0
    invoke-super {p0}, Lcom/sns/game/database/bean/UserState$AccessNetWorkTimeThread;->run()V

    .line 321
    iget-object v1, p0, Lcom/sns/game/database/bean/UserState$1;->this$0:Lcom/sns/game/database/bean/UserState;

    invoke-virtual {v1}, Lcom/sns/game/database/bean/UserState;->stopAnwtThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

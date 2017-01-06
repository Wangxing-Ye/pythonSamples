.class Lcom/sns/game/activity/GameActivityss$1$1;
.super Ljava/lang/Object;
.source "GameActivityss.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sns/game/activity/GameActivityss$1;

.field private final synthetic val$callBackMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/sns/game/activity/GameActivityss$1;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$1$1;->this$1:Lcom/sns/game/activity/GameActivityss$1;

    iput-object p2, p0, Lcom/sns/game/activity/GameActivityss$1$1;->val$callBackMsg:Landroid/os/Message;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss$1$1;->this$1:Lcom/sns/game/activity/GameActivityss$1;

    # getter for: Lcom/sns/game/activity/GameActivityss$1;->this$0:Lcom/sns/game/activity/GameActivityss;
    invoke-static {v0}, Lcom/sns/game/activity/GameActivityss$1;->access$0(Lcom/sns/game/activity/GameActivityss$1;)Lcom/sns/game/activity/GameActivityss;

    move-result-object v0

    iget-object v1, p0, Lcom/sns/game/activity/GameActivityss$1$1;->val$callBackMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sns/game/activity/GameActivityss;->handleCallBackForMsg(Landroid/os/Message;)V

    .line 792
    return-void
.end method

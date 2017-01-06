.class Lcom/sns/game/activity/GameActivityss$2;
.super Landroid/os/Handler;
.source "GameActivityss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$2;->this$0:Lcom/sns/game/activity/GameActivityss;

    .line 127
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss$2;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v0}, Lcom/sns/game/activity/GameActivityss;->kefu_Page()V

    .line 130
    return-void
.end method

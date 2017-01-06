.class Lcom/sns/game/activity/GameActivityss$4;
.super Ljava/lang/Object;
.source "GameActivityss.java"

# interfaces
.implements Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss;->initAds()V
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
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$4;->this$0:Lcom/sns/game/activity/GameActivityss;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "GameMainActivity"

    const-string v1, "bggameInit success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss$4;->this$0:Lcom/sns/game/activity/GameActivityss;

    # invokes: Lcom/sns/game/activity/GameActivityss;->onCreateContentCCScene()V
    invoke-static {v0}, Lcom/sns/game/activity/GameActivityss;->access$1(Lcom/sns/game/activity/GameActivityss;)V

    .line 174
    return-void
.end method

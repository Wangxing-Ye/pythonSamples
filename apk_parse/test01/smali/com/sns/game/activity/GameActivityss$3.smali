.class Lcom/sns/game/activity/GameActivityss$3;
.super Ljava/lang/Object;
.source "GameActivityss.java"

# interfaces
.implements Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss;->initSDK()V
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
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$3;->this$0:Lcom/sns/game/activity/GameActivityss;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v3, "GameMainActivity"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "function_code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 149
    .local v2, "mFunctionCode":I
    const/16 v3, 0x1389

    if-ne v2, v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/sns/game/activity/GameActivityss$3;->this$0:Lcom/sns/game/activity/GameActivityss;

    # invokes: Lcom/sns/game/activity/GameActivityss;->initAds()V
    invoke-static {v3}, Lcom/sns/game/activity/GameActivityss;->access$0(Lcom/sns/game/activity/GameActivityss;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "mFunctionCode":I
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

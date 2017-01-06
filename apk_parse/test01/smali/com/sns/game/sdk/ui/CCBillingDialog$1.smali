.class Lcom/sns/game/sdk/ui/CCBillingDialog$1;
.super Ljava/lang/Object;
.source "CCBillingDialog.java"

# interfaces
.implements Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/sdk/ui/CCBillingDialog;->createResultCallBack(Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

.field private final synthetic val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;


# direct methods
.method constructor <init>(Lcom/sns/game/sdk/ui/CCBillingDialog;Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

    iput-object p2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingCancel()V
    .locals 3

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

    iget-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

    # getter for: Lcom/sns/game/sdk/ui/CCBillingDialog;->btnBilling:Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-static {v2}, Lcom/sns/game/sdk/ui/CCBillingDialog;->access$0(Lcom/sns/game/sdk/ui/CCBillingDialog;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    # invokes: Lcom/sns/game/sdk/ui/CCBillingDialog;->removeAnimChild(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    invoke-static {v1, v2}, Lcom/sns/game/sdk/ui/CCBillingDialog;->access$1(Lcom/sns/game/sdk/ui/CCBillingDialog;Lorg/cocos2d/menus/CCMenuItemSprite;)V

    .line 167
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

    invoke-virtual {v1}, Lcom/sns/game/sdk/ui/CCBillingDialog;->cancel()V

    .line 168
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onBillingFailed()V
    .locals 3

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

    iget-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

    # getter for: Lcom/sns/game/sdk/ui/CCBillingDialog;->btnBilling:Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-static {v2}, Lcom/sns/game/sdk/ui/CCBillingDialog;->access$0(Lcom/sns/game/sdk/ui/CCBillingDialog;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    # invokes: Lcom/sns/game/sdk/ui/CCBillingDialog;->removeAnimChild(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    invoke-static {v1, v2}, Lcom/sns/game/sdk/ui/CCBillingDialog;->access$1(Lcom/sns/game/sdk/ui/CCBillingDialog;Lorg/cocos2d/menus/CCMenuItemSprite;)V

    .line 157
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

    invoke-virtual {v1}, Lcom/sns/game/sdk/ui/CCBillingDialog;->cancel()V

    .line 158
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onBillingSuccess()V
    .locals 3

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

    iget-object v2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

    # getter for: Lcom/sns/game/sdk/ui/CCBillingDialog;->btnBilling:Lorg/cocos2d/menus/CCMenuItemSprite;
    invoke-static {v2}, Lcom/sns/game/sdk/ui/CCBillingDialog;->access$0(Lcom/sns/game/sdk/ui/CCBillingDialog;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v2

    # invokes: Lcom/sns/game/sdk/ui/CCBillingDialog;->removeAnimChild(Lorg/cocos2d/menus/CCMenuItemSprite;)V
    invoke-static {v1, v2}, Lcom/sns/game/sdk/ui/CCBillingDialog;->access$1(Lcom/sns/game/sdk/ui/CCBillingDialog;Lorg/cocos2d/menus/CCMenuItemSprite;)V

    .line 147
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

    invoke-virtual {v1}, Lcom/sns/game/sdk/ui/CCBillingDialog;->cancel()V

    .line 148
    iget-object v1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$1;->val$callBack:Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;

    invoke-interface {v1}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;->onBillingSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

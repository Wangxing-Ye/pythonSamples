.class Lcom/sns/game/sdk/third/ThirdSdkDelegate$4;
.super Ljava/lang/Object;
.source "ThirdSdkDelegate.java"

# interfaces
.implements Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/sdk/third/ThirdSdkDelegate;->ccWithItemSpriteCallBack(Lorg/cocos2d/layers/CCLayer;Lorg/cocos2d/menus/CCMenuItemSprite;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

.field private final synthetic val$layer:Lorg/cocos2d/layers/CCLayer;

.field private final synthetic val$lglCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

.field private final synthetic val$target:Lorg/cocos2d/menus/CCMenuItemSprite;


# direct methods
.method constructor <init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;Lcom/sns/game/util/LogicalHandleCallBack;Lorg/cocos2d/menus/CCMenuItemSprite;Lorg/cocos2d/layers/CCLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$4;->this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    iput-object p2, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$4;->val$lglCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    iput-object p3, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$4;->val$target:Lorg/cocos2d/menus/CCMenuItemSprite;

    iput-object p4, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$4;->val$layer:Lorg/cocos2d/layers/CCLayer;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingCancel()V
    .locals 3

    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$4;->val$target:Lorg/cocos2d/menus/CCMenuItemSprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/cocos2d/menus/CCMenuItemSprite;->setIsEnabled(Z)V

    .line 294
    iget-object v1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$4;->val$layer:Lorg/cocos2d/layers/CCLayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onBillingFailed()V
    .locals 0

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/sns/game/sdk/third/ThirdSdkDelegate$4;->onBillingCancel()V

    .line 304
    return-void
.end method

.method public onBillingSuccess()V
    .locals 2

    .prologue
    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$4;->val$lglCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v1}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

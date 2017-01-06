.class public Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;
.super Ljava/lang/Object;
.source "ThirdSdkDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sns/game/sdk/third/ThirdSdkDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BillingData"
.end annotation


# instance fields
.field public point:I

.field public resBtn:Ljava/lang/String;

.field public resDesc:Ljava/lang/String;

.field public resImg:Ljava/lang/String;

.field public tagUI:I

.field final synthetic this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;


# direct methods
.method public constructor <init>(Lcom/sns/game/sdk/third/ThirdSdkDelegate;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingData;->this$0:Lcom/sns/game/sdk/third/ThirdSdkDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

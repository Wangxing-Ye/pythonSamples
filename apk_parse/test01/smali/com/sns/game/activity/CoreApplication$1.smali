.class Lcom/sns/game/activity/CoreApplication$1;
.super Ljava/lang/Object;
.source "CoreApplication.java"

# interfaces
.implements Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/CoreApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/activity/CoreApplication;


# direct methods
.method constructor <init>(Lcom/sns/game/activity/CoreApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/activity/CoreApplication$1;->this$0:Lcom/sns/game/activity/CoreApplication;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PayResult(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.class public Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;
.super Ljava/lang/Object;
.source "ShellHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cynosure/paymentsdk/helper/ShellHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p1, p0, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->result:I

    .line 214
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "successMsg"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p1, p0, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->result:I

    .line 218
    iput-object p2, p0, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    .line 220
    return-void
.end method

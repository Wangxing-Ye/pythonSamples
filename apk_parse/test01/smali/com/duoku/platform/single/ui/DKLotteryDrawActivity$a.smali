.class Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;-><init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "Config"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\nset isActivityFinishAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;->b:Z

    return-void
.end method

.method public a()Z
    .locals 3

    const-string v0, "Config"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get isActivityFinishAllowed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$a;->b:Z

    return v0
.end method

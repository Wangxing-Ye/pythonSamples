.class Lcom/unipay/account/loader/Loader$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipay/account/loader/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unipay/account/loader/Loader;

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>(Lcom/unipay/account/loader/Loader;Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unipay/account/loader/Loader$a;->a:Lcom/unipay/account/loader/Loader;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unipay/account/loader/Loader$a;->c:J

    iput-object p2, p0, Lcom/unipay/account/loader/Loader$a;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 4

    const-string v0, "-S trycnt(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unipay/account/loader/Loader$a;->a:Lcom/unipay/account/loader/Loader;

    invoke-static {v3}, Lcom/unipay/account/loader/Loader;->c(Lcom/unipay/account/loader/Loader;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    iget-wide v0, p0, Lcom/unipay/account/loader/Loader$a;->c:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/unipay/account/loader/Loader$a;->c:J

    const-string v0, "-S mMillis(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/unipay/account/loader/Loader$a;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/unipay/account/loader/Loader$a;->c:J

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/unipay/account/loader/Loader$a;->cancel()Z

    invoke-static {}, Lcom/unipay/account/loader/c;->a()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/account/loader/Loader$a;->b:Ljava/util/HashSet;

    invoke-static {v1, v0}, Lcom/unipay/account/loader/c;->a(Ljava/util/HashSet;Ljava/util/HashSet;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    iget-object v0, p0, Lcom/unipay/account/loader/Loader$a;->a:Lcom/unipay/account/loader/Loader;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->c(Lcom/unipay/account/loader/Loader;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    const-string v0, "load timeout!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/account/loader/Loader$a;->a:Lcom/unipay/account/loader/Loader;

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lcom/unipay/account/loader/Loader;->a(Lcom/unipay/account/loader/Loader;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unipay/account/loader/Loader$a;->a:Lcom/unipay/account/loader/Loader;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->b(Lcom/unipay/account/loader/Loader;)Z

    goto :goto_0
.end method

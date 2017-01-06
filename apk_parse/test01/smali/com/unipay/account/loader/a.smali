.class Lcom/unipay/account/loader/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/unipay/account/loader/Loader;


# direct methods
.method constructor <init>(Lcom/unipay/account/loader/Loader;I)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/loader/a;->b:Lcom/unipay/account/loader/Loader;

    iput p2, p0, Lcom/unipay/account/loader/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/unipay/account/loader/a;->b:Lcom/unipay/account/loader/Loader;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->a(Lcom/unipay/account/loader/Loader;)Lcom/unipay/account/loader/Loader$b;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "notify load result (%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/unipay/account/loader/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/account/loader/a;->b:Lcom/unipay/account/loader/Loader;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->a(Lcom/unipay/account/loader/Loader;)Lcom/unipay/account/loader/Loader$b;

    move-result-object v0

    iget v1, p0, Lcom/unipay/account/loader/a;->a:I

    invoke-interface {v0, v1}, Lcom/unipay/account/loader/Loader$b;->a(I)V

    iget-object v0, p0, Lcom/unipay/account/loader/a;->b:Lcom/unipay/account/loader/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unipay/account/loader/Loader;->a(Lcom/unipay/account/loader/Loader;Lcom/unipay/account/loader/Loader$b;)Lcom/unipay/account/loader/Loader$b;

    :cond_0
    return-void
.end method

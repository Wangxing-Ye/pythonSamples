.class Lcom/unipay/account/loader/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unipay/account/loader/Loader;


# direct methods
.method constructor <init>(Lcom/unipay/account/loader/Loader;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/loader/b;->a:Lcom/unipay/account/loader/Loader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/loader/b;->a:Lcom/unipay/account/loader/Loader;

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->b(Lcom/unipay/account/loader/Loader;)Z

    return-void
.end method

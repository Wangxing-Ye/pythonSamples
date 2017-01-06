.class Lcom/duoku/platform/single/d/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$IPayCallback;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/d/a/h;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/d/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/d/a/i;->a:Lcom/duoku/platform/single/d/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/i;->a:Lcom/duoku/platform/single/d/a/h;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/h;->a(Lcom/duoku/platform/single/d/a/h;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "china mobile base pay resultCode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/duoku/platform/single/d/a/i;->a:Lcom/duoku/platform/single/d/a/h;

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/a/h;->a()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/i;->a:Lcom/duoku/platform/single/d/a/h;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/h;->b(Lcom/duoku/platform/single/d/a/h;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/duoku/platform/single/d/a/i;->a:Lcom/duoku/platform/single/d/a/h;

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/a/h;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

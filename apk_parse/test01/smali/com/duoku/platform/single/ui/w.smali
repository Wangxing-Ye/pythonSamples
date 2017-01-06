.class Lcom/duoku/platform/single/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

.field private final synthetic b:I

.field private final synthetic c:Lcom/duoku/platform/single/h/a/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;ILcom/duoku/platform/single/h/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/w;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iput p2, p0, Lcom/duoku/platform/single/ui/w;->b:I

    iput-object p3, p0, Lcom/duoku/platform/single/ui/w;->c:Lcom/duoku/platform/single/h/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/ui/w;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    iget v1, p0, Lcom/duoku/platform/single/ui/w;->b:I

    iget-object v2, p0, Lcom/duoku/platform/single/ui/w;->c:Lcom/duoku/platform/single/h/a/a;

    iget v3, p0, Lcom/duoku/platform/single/ui/w;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;->a(ILcom/duoku/platform/single/h/a/a;I)V

    return-void
.end method

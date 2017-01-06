.class Lcom/unicom/dcLoader/welcomeview$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unicom/dcLoader/welcomeview$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unicom/dcLoader/welcomeview$a;


# direct methods
.method constructor <init>(Lcom/unicom/dcLoader/welcomeview$a;)V
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/welcomeview$a$1;->a:Lcom/unicom/dcLoader/welcomeview$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview$a$1;->a:Lcom/unicom/dcLoader/welcomeview$a;

    iget-object v0, v0, Lcom/unicom/dcLoader/welcomeview$a;->a:Lcom/unicom/dcLoader/welcomeview;

    iget-object v1, p0, Lcom/unicom/dcLoader/welcomeview$a$1;->a:Lcom/unicom/dcLoader/welcomeview$a;

    iget-object v1, v1, Lcom/unicom/dcLoader/welcomeview$a;->a:Lcom/unicom/dcLoader/welcomeview;

    # invokes: Lcom/unicom/dcLoader/welcomeview;->callwelcome(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/unicom/dcLoader/welcomeview;->access$300(Lcom/unicom/dcLoader/welcomeview;Landroid/content/Context;)V

    return-void
.end method

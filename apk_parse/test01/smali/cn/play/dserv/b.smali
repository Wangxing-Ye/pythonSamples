.class final Lcn/play/dserv/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcn/play/dserv/CheckTool;

.field private final synthetic b:Lcn/play/dserv/ExitCallBack;


# direct methods
.method constructor <init>(Lcn/play/dserv/CheckTool;Lcn/play/dserv/ExitCallBack;)V
    .locals 0

    iput-object p2, p0, Lcn/play/dserv/b;->b:Lcn/play/dserv/ExitCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcn/play/dserv/b;->b:Lcn/play/dserv/ExitCallBack;

    invoke-interface {v0}, Lcn/play/dserv/ExitCallBack;->cancel()V

    return-void
.end method

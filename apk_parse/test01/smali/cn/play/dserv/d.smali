.class final Lcn/play/dserv/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcn/play/dserv/CheckTool;

.field private final synthetic b:Lcn/play/dserv/ExitCallBack;


# direct methods
.method constructor <init>(Lcn/play/dserv/CheckTool;Lcn/play/dserv/ExitCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/play/dserv/d;->a:Lcn/play/dserv/CheckTool;

    iput-object p2, p0, Lcn/play/dserv/d;->b:Lcn/play/dserv/ExitCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/play/dserv/d;->a:Lcn/play/dserv/CheckTool;

    invoke-static {v0}, Lcn/play/dserv/CheckTool;->a(Lcn/play/dserv/CheckTool;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcn/play/dserv/d;->a:Lcn/play/dserv/CheckTool;

    invoke-static {v0, v1}, Lcn/play/dserv/CheckTool;->a(Lcn/play/dserv/CheckTool;Landroid/app/AlertDialog;)V

    iget-object v0, p0, Lcn/play/dserv/d;->a:Lcn/play/dserv/CheckTool;

    invoke-static {v0, v1}, Lcn/play/dserv/CheckTool;->a(Lcn/play/dserv/CheckTool;Landroid/view/View;)V

    iget-object v0, p0, Lcn/play/dserv/d;->b:Lcn/play/dserv/ExitCallBack;

    invoke-interface {v0}, Lcn/play/dserv/ExitCallBack;->cancel()V

    return-void
.end method
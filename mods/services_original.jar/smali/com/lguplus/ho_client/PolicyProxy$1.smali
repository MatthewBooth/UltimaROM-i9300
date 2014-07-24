.class Lcom/lguplus/ho_client/PolicyProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "PolicyProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/ho_client/PolicyProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lguplus/ho_client/PolicyProxy;


# direct methods
.method constructor <init>(Lcom/lguplus/ho_client/PolicyProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/lguplus/ho_client/PolicyProxy$1;->this$0:Lcom/lguplus/ho_client/PolicyProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.lguplus.ho_client_impl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy$1;->this$0:Lcom/lguplus/ho_client/PolicyProxy;

    const-string v3, "package is replaced"

    invoke-virtual {v2, v3}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy$1;->this$0:Lcom/lguplus/ho_client/PolicyProxy;

    iget-object v2, v2, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy$1;->this$0:Lcom/lguplus/ho_client/PolicyProxy;

    iget-object v2, v2, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    invoke-interface {v2}, Lcom/lguplus/ho_client/HOClient;->unRegisterReceiver()V

    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy$1;->this$0:Lcom/lguplus/ho_client/PolicyProxy;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/lguplus/ho_client/PolicyProxy;->hoClient:Lcom/lguplus/ho_client/HOClient;

    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy$1;->this$0:Lcom/lguplus/ho_client/PolicyProxy;

    const-string v3, "HOClient hoclient = null, replaced(true), getHoClient start"

    invoke-virtual {v2, v3}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy$1;->this$0:Lcom/lguplus/ho_client/PolicyProxy;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lguplus/ho_client/PolicyProxy;->getHoClient(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy$1;->this$0:Lcom/lguplus/ho_client/PolicyProxy;

    const-string v3, "HOClient hoclient = null, replaced(false), getHoClient start"

    invoke-virtual {v2, v3}, Lcom/lguplus/ho_client/PolicyProxy;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lguplus/ho_client/PolicyProxy$1;->this$0:Lcom/lguplus/ho_client/PolicyProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lguplus/ho_client/PolicyProxy;->getHoClient(Z)V

    goto :goto_0
.end method

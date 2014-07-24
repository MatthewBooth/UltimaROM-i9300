.class Lcom/sec/knox/container/EnterpriseContainerService$2;
.super Ljava/lang/Object;
.source "EnterpriseContainerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/knox/container/EnterpriseContainerService;->onContainerStateChange(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$2;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iput-object p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "EnterpriseContainerService"

    const-string v1, "container state change broadcast sent"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$2;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

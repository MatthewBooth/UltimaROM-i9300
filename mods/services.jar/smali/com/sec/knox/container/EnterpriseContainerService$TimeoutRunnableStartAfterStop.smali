.class Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;
.super Ljava/lang/Object;
.source "EnterpriseContainerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutRunnableStartAfterStop"
.end annotation


# instance fields
.field private containerId:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;->containerId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;->containerId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeoutRunnableStartAfterStop starting timer for container id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1200(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I
    invoke-static {v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "EnterpriseContainerService"

    const-string v2, "TimeoutRunnableStartAfterStop starting as refcounter > 0"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;->containerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

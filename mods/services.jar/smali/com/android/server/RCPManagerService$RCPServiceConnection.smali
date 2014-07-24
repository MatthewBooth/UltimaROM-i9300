.class Lcom/android/server/RCPManagerService$RCPServiceConnection;
.super Ljava/lang/Object;
.source "RCPManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RCPServiceConnection"
.end annotation


# instance fields
.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onServiceConnected called for class = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    #getter for: Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onServiceDisconnected called for class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    #getter for: Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    iget v2, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    #calls: Lcom/android/server/RCPManagerService;->unregisterProxy(I)V
    invoke-static {v1, v2}, Lcom/android/server/RCPManagerService;->access$1000(Lcom/android/server/RCPManagerService;I)V

    iget-object v1, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    iget v2, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;-><init>(Lcom/android/server/RCPManagerService$RCPServiceConnection;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

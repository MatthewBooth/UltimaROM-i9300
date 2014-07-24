.class public Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
.super Ljava/lang/Thread;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnInstallThread"
.end annotation


# instance fields
.field mApksToInstall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field mContainerId:I

.field mParentHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mApksToInstall:Ljava/util/List;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Handler;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mApksToInstall:Ljava/util/List;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mApksToInstall:Ljava/util/List;

    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    iput-object p5, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const-string v0, "EnterpriseContainerService"

    const-string v1, "Constructor of UnInstall thread"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private uninstallPackage(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6100(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    invoke-direct {v1, v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v2, v1, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "EnterpriseContainerService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const-string v2, "EnterpriseContainerService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5900(Lcom/sec/knox/container/EnterpriseContainerService;)V

    const-string v6, "EnterpriseContainerService"

    const-string v7, "In run of UnInstallThread"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mApksToInstall:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoveContainer Apkfile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->uninstallPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v7}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    throw v6

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    if-eqz v6, :cond_2

    const-string v6, "EnterpriseContainerService"

    const-string v7, "Callback object for All Package Uninstall success"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v6, "containerid"

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v7, 0x3eb

    invoke-interface {v6, v7, v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    if-eqz v6, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "containerid"

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mContainerId:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-string v6, "EnterpriseContainerService"

    const-string v7, "Uninstaller Thread msg to Handler"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    return-void

    :cond_2
    :try_start_3
    const-string v6, "EnterpriseContainerService"

    const-string v7, "Call Back not found for uninstall package"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    const-string v6, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

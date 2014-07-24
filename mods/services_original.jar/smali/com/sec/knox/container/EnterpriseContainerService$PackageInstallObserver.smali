.class Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# static fields
.field public static final MAX_RETRY:I = 0x3


# instance fields
.field containerId:I

.field finished:Z

.field private numRetry:I

.field pkgName:Ljava/lang/String;

.field result:I

.field retry:Z

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    iput-boolean v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z

    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->containerId:I

    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I

    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    iput-boolean v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z

    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I

    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z

    return-void
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x1

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageInstalled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    if-eq p2, v6, :cond_0

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ECS] packageInstalled() name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "//status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UnKnown"

    invoke-virtual {v3, v4, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->WriteContainerHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    const/16 v3, -0x6e

    if-ne p2, v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z

    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package installation failed due to internal error. Retry true. num retry:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :cond_1
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting retry flag to false either success or numRetry:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->numRetry:I

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v0

    const/4 v3, -0x1

    :try_start_3
    iput v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

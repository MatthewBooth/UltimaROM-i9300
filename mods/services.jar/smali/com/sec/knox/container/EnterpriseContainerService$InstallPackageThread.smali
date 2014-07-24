.class Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;
.super Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallPackageThread"
.end annotation


# instance fields
.field private mApkFilePath:Ljava/lang/String;

.field private mInstallSource:I

.field private mInstallType:I

.field private mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;)V

    iput-object p4, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mApkFilePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    iput p6, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallType:I

    iput p7, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallSource:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v13, 0x1

    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InstallPackageThread run(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, -0x6e

    :try_start_0
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5900(Lcom/sec/knox/container/EnterpriseContainerService;)V

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    packed-switch v9, :pswitch_data_0

    :goto_0
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    :goto_1
    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    :try_start_1
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    if-eqz v9, :cond_7

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    if-nez v4, :cond_2

    const-string v9, "EnterpriseContainerService"

    const-string v10, "Package: name is null"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v4, :cond_3

    const-string v9, "packageName"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-ne v7, v13, :cond_5

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v10, 0x3ee

    invoke-interface {v9, v10, v6}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    if-nez v4, :cond_4

    const-string v9, "EnterpriseContainerService"

    const-string v10, "Package Name: null  INSTALL SUCCESS."

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    return-void

    :pswitch_0
    :try_start_2
    const-string v9, "EnterpriseContainerService"

    const-string v10, "Apk install process has started....."

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x92

    new-instance v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    invoke-direct {v5, v9, v10}, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    const-string v11, "com.sec.knox.containeragent"

    invoke-virtual {v9, v10, v5, v2, v11}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    :try_start_4
    iget-boolean v9, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v9, :cond_0

    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_6
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_5

    :catchall_0
    move-exception v9

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v1

    move-object v4, v5

    :goto_6
    :try_start_8
    const-string v9, "EnterpriseContainerService"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    goto :goto_1

    :cond_0
    :try_start_9
    iget v7, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget-object v10, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->checkInstalledPackageSignature(Ljava/lang/String;)Z
    invoke-static {v9, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6300(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;)Z

    move-result v9

    if-eq v9, v13, :cond_1

    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkInstalledPackageSignature() == false"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x2

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    :goto_7
    if-ne v7, v13, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v9, "containerid"

    iget v10, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->containerId:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "package_install_name"

    iget-object v10, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "package_install_uid"

    iget v10, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "package_install_source"

    iget v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mInstallSource:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "package_original_signature"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object v4, v5

    goto/16 :goto_0

    :cond_1
    const-string v9, "EnterpriseContainerService"

    const-string v10, "checkInstalledPackageSignature() == true"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_7

    :catchall_1
    move-exception v9

    move-object v4, v5

    :goto_8
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    throw v9

    :cond_2
    :try_start_b
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package: name  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    const-string v9, "EnterpriseContainerService"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    :try_start_c
    const-string v9, "packageName"

    iget-object v10, v4, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package Name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " INSTALL SUCCESS."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    const-string v9, "pmerrorcode"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v10, 0x3ef

    invoke-interface {v9, v10, v6}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    const-string v9, "EnterpriseContainerService"

    const-string v10, "Callback Object updateStatus invoked"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_6

    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package Name: null INSTALL FAILED. ErrorCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package Name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " INSTALL FAILED. ErrorCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    const-string v9, "EnterpriseContainerService"

    const-string v10, "Call Back not found for install package"

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_4

    :catchall_2
    move-exception v9

    goto/16 :goto_8

    :catch_3
    move-exception v1

    goto/16 :goto_6

    :cond_8
    move-object v4, v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

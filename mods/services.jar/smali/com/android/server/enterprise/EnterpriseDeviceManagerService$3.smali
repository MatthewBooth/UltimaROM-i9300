.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->selfUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field final synthetic val$admins:[Ljava/lang/String;

.field final synthetic val$apkFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;[Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$admins:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$apkFile:Ljava/io/File;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x1

    monitor-enter p0

    if-ne p2, v6, :cond_0

    :try_start_0
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "packageInstalled"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Activate Admin for new apk"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$800()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$admins:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$admins:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, v3, v4

    const/4 v2, 0x2

    :goto_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$admins:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$admins:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Activate Admin for new apk failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :try_start_3
    const-string v3, "self_update_admin_component"

    const-string v4, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->val$apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$802(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

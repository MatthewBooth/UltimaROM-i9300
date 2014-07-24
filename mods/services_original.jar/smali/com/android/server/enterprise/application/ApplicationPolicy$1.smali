.class Lcom/android/server/enterprise/application/ApplicationPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerPackageChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v10, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$700(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->getSendingUserId()I

    move-result v9

    if-eqz v5, :cond_1

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v5, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v11, "applicationUninstallationCount"

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v6, v5, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$900(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "android.intent.extra.REPLACING"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z
    invoke-static {v10, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1000(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v11, 0x2

    const/4 v12, 0x0

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    invoke-static {v10, v5, v6, v11, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1100(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    :goto_2
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;
    invoke-static {v11, v5, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v11

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;Landroid/content/Context;)V
    invoke-static {v10, v11, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v5, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v11, "applicationInstallationCount"

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v6, v5, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$900(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "ApplicationPolicy"

    const-string v11, "App install count incremented"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z
    invoke-static {v10, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1000(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$1;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemAppDisableState(Ljava/lang/String;)V
    invoke-static {v10, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1200(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.class Lcom/android/server/print/PrintManagerService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService;->registerBoradcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/PrintManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    #getter for: Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService;->access$300(Lcom/android/server/print/PrintManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 12

    iget-object v9, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    #getter for: Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/print/PrintManagerService;->access$000(Lcom/android/server/print/PrintManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v11

    #calls: Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    invoke-static {v9, v11}, Lcom/android/server/print/PrintManagerService;->access$200(Lcom/android/server/print/PrintManagerService;I)Lcom/android/server/print/UserState;

    move-result-object v8

    const/4 v7, 0x0

    invoke-virtual {v8}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p2

    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez p4, :cond_1

    const/4 v9, 0x1

    monitor-exit v10

    :goto_2
    return v9

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v8}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    :cond_4
    const/4 v9, 0x0

    monitor-exit v10

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 10

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.printservice.PrintService"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    #getter for: Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/print/PrintManagerService;->access$300(Lcom/android/server/print/PrintManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v9

    invoke-virtual {v7, v4, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    #getter for: Lcom/android/server/print/PrintManagerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/print/PrintManagerService;->access$300(Lcom/android/server/print/PrintManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v8

    #calls: Lcom/android/server/print/PrintManagerService;->showEnableInstalledPrintServiceNotification(Landroid/content/ComponentName;Ljava/lang/String;I)V
    invoke-static {v7, v0, v5, v8}, Lcom/android/server/print/PrintManagerService;->access$400(Lcom/android/server/print/PrintManagerService;Landroid/content/ComponentName;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    #getter for: Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService;->access$000(Lcom/android/server/print/PrintManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v5

    #calls: Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    invoke-static {v3, v5}, Lcom/android/server/print/PrintManagerService;->access$200(Lcom/android/server/print/PrintManagerService;I)Lcom/android/server/print/UserState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    const/4 v3, 0x1

    monitor-exit v4

    :goto_0
    return v3

    :cond_1
    monitor-exit v4

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 7

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    #getter for: Lcom/android/server/print/PrintManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService;->access$000(Lcom/android/server/print/PrintManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$3;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v5

    #calls: Lcom/android/server/print/PrintManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    invoke-static {v3, v5}, Lcom/android/server/print/PrintManagerService;->access$200(Lcom/android/server/print/PrintManagerService;I)Lcom/android/server/print/UserState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const-string v3, "enabled_print_services"

    invoke-virtual {v2}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/print/PrintManagerService$3;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    invoke-virtual {v2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    monitor-exit v4

    :goto_0
    return-void

    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

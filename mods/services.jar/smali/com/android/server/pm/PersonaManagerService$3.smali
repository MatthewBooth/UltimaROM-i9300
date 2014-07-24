.class Lcom/android/server/pm/PersonaManagerService$3;
.super Landroid/app/IStopUserCallback$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->stopAndRemovePersona(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$removePersona:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$removePersona:Z

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 1

    const-string/jumbo v0, "userStopAborted"

    #calls: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    return-void
.end method

.method public userStopped(I)V
    .locals 13

    const-string/jumbo v10, "userStopped"

    #calls: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    iget-boolean v10, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$removePersona:Z

    if-eqz v10, :cond_1

    const-string v10, "PersonaManagerService"

    const-string/jumbo v11, "userStopped triggered uninstall process..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    #calls: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static {v10, p1}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v5, :cond_0

    iget-boolean v10, v5, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v10, :cond_0

    invoke-virtual {v5}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v10

    if-eqz v10, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v9

    const-string v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unmounting file system due to super lock: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, v5, Landroid/content/pm/PersonaInfo;->state:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    move-object v0, v7

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    #calls: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v10, v6, p1, v4}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v11, 0x0

    #calls: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v10, v11, p1, v4}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v10, "PersonaManagerService"

    const-string v11, "Failed to unmount file system on super lock."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

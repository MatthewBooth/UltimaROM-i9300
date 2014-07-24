.class public Lcom/android/server/pm/PersonaFileManagerService;
.super Landroid/content/pm/IPersonaFileHandler$Stub;
.source "PersonaFileManagerService.java"


# static fields
.field private static SEANDROID_SECURITY_VERIFICATION:Z = false

.field private static final TAG:Ljava/lang/String; = "PersonaFileSystemManagerService"

.field private static sContext:Landroid/content/Context;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaFileManagerService;->sContext:Landroid/content/Context;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/PersonaFileManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPersonaFileHandler$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PersonaFileManagerService;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/pm/PersonaFileManagerService;->sContext:Landroid/content/Context;

    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5

    const-string v1, "PersonaFileManagerService"

    sget-object v2, Lcom/android/server/pm/PersonaFileManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/pm/PersonaFileManagerService;->SEANDROID_SECURITY_VERIFICATION:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0

    :cond_0
    const-string v2, "PersonaFileSystemManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isEncryptionEnabled(I)Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;ZI)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v2, "changeEncryptionKey"

    invoke-static {v2}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PersonaFileSystemManagerService"

    const-string v3, "changeEncryptionKey: encryption feature not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    const-string v2, "persona_file_system"

    invoke-static {v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPersonaFileHandler;->changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    goto :goto_0
.end method

.method public createPartition(ILjava/lang/String;ZI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "createPartition"

    invoke-static {v3}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PersonaFileSystemManagerService"

    const-string v4, "createPartition: encryption feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    const-string v3, "persona_file_system"

    invoke-static {v3}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPersonaFileHandler;->createPartition(ILjava/lang/String;ZI)Z

    move-result v2

    goto :goto_0
.end method

.method public isEncrypted(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "isEncrypted"

    invoke-static {v3}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PersonaFileSystemManagerService"

    const-string v4, "isEncrypted: encryption feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    const-string v3, "persona_file_system"

    invoke-static {v3}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaFileHandler;->isEncrypted(I)Z

    move-result v2

    goto :goto_0
.end method

.method public mount(ILjava/lang/String;ZI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "mount"

    invoke-static {v3}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PersonaFileSystemManagerService"

    const-string v4, "mount: encryption feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    const-string v3, "persona_file_system"

    invoke-static {v3}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPersonaFileHandler;->mount(ILjava/lang/String;ZI)Z

    move-result v2

    goto :goto_0
.end method

.method public removePartition(IZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "removePartition"

    invoke-static {v3}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PersonaFileSystemManagerService"

    const-string v4, "removePartition: encryption feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    const-string v3, "persona_file_system"

    invoke-static {v3}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaFileHandler;->removePartition(IZ)Z

    move-result v2

    goto :goto_0
.end method

.method public unmount(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v3, "unmount"

    invoke-static {v3}, Lcom/android/server/pm/PersonaFileManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaFileManagerService;->isEncryptionEnabled(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PersonaFileSystemManagerService"

    const-string/jumbo v4, "unmount: encryption feature not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    const-string v3, "persona_file_system"

    invoke-static {v3}, Lcom/android/server/pm/HandlerCacheManager;->getHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaFileHandler;->unmount(I)Z

    move-result v2

    goto :goto_0
.end method

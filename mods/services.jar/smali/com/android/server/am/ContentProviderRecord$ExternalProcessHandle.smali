.class Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
.super Ljava/lang/Object;
.source "ContentProviderRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ContentProviderRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalProcessHandle"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExternalProcessHanldle"


# instance fields
.field private mAcquisitionCount:I

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/am/ContentProviderRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExternalProcessHanldle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t register for death for token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I
    .locals 2

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I
    .locals 2

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    #calls: Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V
    invoke-static {v0, v2}, Lcom/android/server/am/ContentProviderRecord;->access$100(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlinkFromOwnDeathLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

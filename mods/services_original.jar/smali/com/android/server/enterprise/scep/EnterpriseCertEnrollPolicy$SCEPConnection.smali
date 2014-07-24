.class public Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;
.super Ljava/lang/Object;
.source "EnterpriseCertEnrollPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCEPConnection"
.end annotation


# instance fields
.field mAdminUid:I

.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    iput p2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In Binder Died death receipient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-static {p2}, Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v2

    #setter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepService:Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    invoke-static {v1, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$302(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    #getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepService:Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    invoke-static {v3}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$300(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected service was present overwrite mAdminUid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] binder["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    #getter for: Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepService:Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;
    invoke-static {v3}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$300(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/sec/enterprise/knox/certenroll/ICertEnrollmentService;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected service was not present overwrite mAdminUid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] binder["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCEP Service has unexpectedly disconnected details:AdminUid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and PackageName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->access$400()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mAdminUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

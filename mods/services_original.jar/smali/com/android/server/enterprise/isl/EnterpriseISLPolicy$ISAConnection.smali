.class public Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;
.super Ljava/lang/Object;
.source "EnterpriseISLPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ISAConnection"
.end annotation


# instance fields
.field public mAdminId:I

.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onServiceConnected for admin_ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    iget v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    #calls: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    invoke-static {p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$600()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$600()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    iget v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ISAConnection;->mAdminId:I

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->setISLCallBack(I)V

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISA Service connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISA ComponentName className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISA Service has unexpectedly disconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$700()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$800()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$600()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

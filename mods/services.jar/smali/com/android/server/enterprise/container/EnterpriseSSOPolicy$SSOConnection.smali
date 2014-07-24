.class public Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;
.super Ljava/lang/Object;
.source "EnterpriseSSOPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSOConnection"
.end annotation


# instance fields
.field public mClientID:I

.field public mContainerID:I

.field public mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    iput p3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    iput-object p4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v2

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/server/enterprise/utils/SSOTypeMapData;-><init>(IILjava/lang/String;Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;)V

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$900()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$900()Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->updateClintEntry(ILjava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1000(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected -  ContainerId   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected -  PackageName   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected -  clientId   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSO ComponentName className : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ssoInterface : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "sso.enterprise.container.setup.success"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "containerid"

    iget v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "packageName"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    #getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V
    invoke-static {v3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EnterpriseSSOPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected - ContainerId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EnterpriseSSOPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSO ComponentName className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$900()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mClientID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "sso.enterprise.container.disconnected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "containerid"

    iget v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->mContainerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "packageName"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    #getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    #calls: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V
    invoke-static {v1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    return-void
.end method

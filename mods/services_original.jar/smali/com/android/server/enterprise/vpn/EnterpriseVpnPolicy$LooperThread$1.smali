.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread$1;
.super Landroid/os/Handler;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

.field final synthetic val$this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread$1;->this$1:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread$1;->val$this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v3, "Cisco_Vpn_Policy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cisco service state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v3, "user_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Cisco_Vpn_Policy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cisco service state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread$1;->this$1:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mProxyConnections:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->access$500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

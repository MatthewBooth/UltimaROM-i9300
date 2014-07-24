.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyServiceConnection"
.end annotation


# instance fields
.field private mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    iput p2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mUserId:I

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;)Landroid/app/enterprise/IEnterpriseVpnInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    return-object v0
.end method


# virtual methods
.method getPreparedCiscoInterface()Landroid/app/enterprise/IEnterpriseVpnInterface;
    .locals 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    if-nez v4, :cond_0

    const-string v4, "Cisco_Vpn_Policy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not bound to proxy apk yet - user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v4

    iget-object v1, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mCiscoMessenger:Landroid/os/Messenger;

    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    invoke-interface {v4, v1}, Landroid/app/enterprise/IEnterpriseVpnInterface;->prepareService(Landroid/os/Messenger;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v0

    const-string v4, "Cisco_Vpn_Policy"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "Cisco_Vpn_Policy"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "Cisco_Vpn_Policy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/app/enterprise/IEnterpriseVpnInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "Cisco_Vpn_Policy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mProxyConnections:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->startConnection()V

    :cond_0
    return-void
.end method

.method startConnection()V
    .locals 7

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-string v3, "Cisco_Vpn_Policy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will bind to proxy service as user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.app.enterprise.VPN_ANYCONNECT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.enterprise.mdm.vpn"

    const-string v5, "com.sec.enterprise.mdm.vpn.EnterpriseVpnAnyconnect"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, p0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method stopConnection()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProxyServiceConnection;->mProxyService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    return-void
.end method

.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseVpnPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "extra_vpn_type"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onReceive]: action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "com.sec.enterprise.mdm.MDM_VPN_ADD_SOLUTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "extra_start_action"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;

    invoke-direct {v1, v4, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->startConnection()V

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->addVpnSolutionConnection(Ljava/lang/String;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;)V
    invoke-static {v4, v3, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;Ljava/lang/String;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;)V

    goto :goto_0

    :cond_2
    const-string v4, "com.sec.enterprise.mdm.MDM_VPN_REMOVE_SOLUTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->removeVpnSolutionConnection(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    invoke-static {v4, v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->access$300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->stopConnection()V

    goto :goto_0
.end method

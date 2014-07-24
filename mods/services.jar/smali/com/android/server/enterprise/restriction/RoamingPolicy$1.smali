.class Lcom/android/server/enterprise/restriction/RoamingPolicy$1;
.super Landroid/telephony/PhoneStateListener;
.source "RoamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RoamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    const-string v0, "RoamingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RoamingSyncDisabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->access$000(Lcom/android/server/enterprise/restriction/RoamingPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RoamingPolicy"

    const-string v1, "Entering Roaming"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    #calls: Lcom/android/server/enterprise/restriction/RoamingPolicy;->storeUserAutoSyncSetting()V
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->access$100(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    #calls: Lcom/android/server/enterprise/restriction/RoamingPolicy;->setMasterSyncAutomatically(Z)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->access$200(Lcom/android/server/enterprise/restriction/RoamingPolicy;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "RoamingPolicy"

    const-string v1, "Leaving Roaming"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    #calls: Lcom/android/server/enterprise/restriction/RoamingPolicy;->restoreUserAutoSyncSetting()V
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->access$300(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V

    goto :goto_0
.end method

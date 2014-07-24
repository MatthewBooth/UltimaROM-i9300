.class Lcom/android/server/enterprise/wifi/WifiPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "edm.intent.action.lock"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    new-instance v8, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getTlsCertificateSecurityLevel(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    if-ne v7, v10, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/enterprise/wifi/WifiPolicy$2$1;

    invoke-direct {v7, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$2$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$2;)V

    invoke-direct {v1, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    new-instance v4, Lcom/android/server/enterprise/wifi/WifiPolicy$2$2;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$2$2;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$2;)V

    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v10, :cond_0

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    #calls: Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$100(Lcom/android/server/enterprise/wifi/WifiPolicy;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v3, Lcom/android/server/enterprise/wifi/WifiPolicy$2$3;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$2$3;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$2;)V

    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$302(Z)Z

    goto :goto_0
.end method

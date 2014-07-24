.class Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    #getter for: Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z
    invoke-static {v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->access$000(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BluetoothPolicyService"

    const-string v3, "***** Restarting Bluetooth *****"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    #setter for: Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z
    invoke-static {v2, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->access$002(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Z)Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    #calls: Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->disableDesktopConnectivity()V
    invoke-static {v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->access$100(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    goto :goto_0
.end method

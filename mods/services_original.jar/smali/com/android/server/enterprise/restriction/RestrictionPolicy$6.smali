.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v1, v7, v8, v9}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v7, v10, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceStatusBarExpansion(Z)V
    invoke-static {v7, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Z)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v4

    const-string v7, "RestrictionPolicy"

    const-string/jumbo v8, "updateUsbMode failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v6, "RestrictionPolicy"

    const-string/jumbo v7, "updateUsbMode failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v7, "android.intent.action.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_4

    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    const-string v6, "RestrictionPolicy"

    const-string v7, "Network Policy update failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v7, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v3

    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Intent.ACTION_USER_SWITCHED occurred!! action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    const-string v7, "screenCaptureEnabled"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v9, v5, v3, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IIZ)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v6, 0x1

    :cond_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "/data/system/enterprise.conf"

    invoke-static {v7, v6, v8}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1
.end method

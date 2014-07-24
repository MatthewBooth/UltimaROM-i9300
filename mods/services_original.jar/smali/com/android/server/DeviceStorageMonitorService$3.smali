.class Lcom/android/server/DeviceStorageMonitorService$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z
    invoke-static {v0}, Lcom/android/server/DeviceStorageMonitorService;->access$500(Lcom/android/server/DeviceStorageMonitorService;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #calls: Lcom/android/server/DeviceStorageMonitorService;->fakecancelNotification()V
    invoke-static {v0}, Lcom/android/server/DeviceStorageMonitorService;->access$600(Lcom/android/server/DeviceStorageMonitorService;)V

    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "Locale has changed. Need to re-send Notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z
    invoke-static {v0, v1}, Lcom/android/server/DeviceStorageMonitorService;->access$502(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mLocaleFlag:Z
    invoke-static {v0, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$702(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #calls: Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V
    invoke-static {v0, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$000(Lcom/android/server/DeviceStorageMonitorService;Z)V

    return-void
.end method

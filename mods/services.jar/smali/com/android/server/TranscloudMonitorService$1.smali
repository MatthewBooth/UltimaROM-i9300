.class Lcom/android/server/TranscloudMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "TranscloudMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TranscloudMonitorService;->registerTranscloudInstallObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TranscloudMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/TranscloudMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/TranscloudMonitorService$1;->this$0:Lcom/android/server/TranscloudMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.service.transcloud"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Transcloud"

    const-string v3, "Transcloud installed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/TranscloudMonitorService$1;->this$0:Lcom/android/server/TranscloudMonitorService;

    #calls: Lcom/android/server/TranscloudMonitorService;->addTranscloudManagerService()Z
    invoke-static {v2}, Lcom/android/server/TranscloudMonitorService;->access$000(Lcom/android/server/TranscloudMonitorService;)Z

    iget-object v2, p0, Lcom/android/server/TranscloudMonitorService$1;->this$0:Lcom/android/server/TranscloudMonitorService;

    #calls: Lcom/android/server/TranscloudMonitorService;->systemReadyTranscloudManagerService()Z
    invoke-static {v2}, Lcom/android/server/TranscloudMonitorService;->access$100(Lcom/android/server/TranscloudMonitorService;)Z

    iget-object v2, p0, Lcom/android/server/TranscloudMonitorService$1;->this$0:Lcom/android/server/TranscloudMonitorService;

    #getter for: Lcom/android/server/TranscloudMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/TranscloudMonitorService;->access$200(Lcom/android/server/TranscloudMonitorService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.class Lcom/android/server/StatusBarManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StatusBarManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$7;->this$0:Lcom/android/server/StatusBarManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService$7;->this$0:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v3}, Lcom/android/server/StatusBarManagerService;->collapsePanels()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "com.system.action.GET_ALL_NOTIFICATIONS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/StatusBarManagerService$7;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v4, v3, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService$7;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v3, v3, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/server/StatusBarManagerService$7;->this$0:Lcom/android/server/StatusBarManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    #calls: Lcom/android/server/StatusBarManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    invoke-static {v3, v5, v6, v2}, Lcom/android/server/StatusBarManagerService;->access$200(Lcom/android/server/StatusBarManagerService;ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

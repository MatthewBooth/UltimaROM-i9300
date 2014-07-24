.class Lcom/android/server/enterprise/auditlog/AuditLogService$1;
.super Landroid/content/BroadcastReceiver;
.source "AuditLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/AuditLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.REBOOT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    #getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    #getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    #setter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z
    invoke-static {v4, v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$102(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    #getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    #getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    :try_start_2
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v1, v0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v6}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->setAuditEnabled(Z)V

    goto :goto_1
.end method

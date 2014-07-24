.class Lcom/android/server/ssrm/Monitor$24;
.super Landroid/app/IProcessObserver$Stub;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method getPackageNameFromPID(I)Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v2, v2, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 5

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor$24;->getPackageNameFromPID(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v3, v3, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v3, v3, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x9

    iput v3, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v3, v3, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v4, v3, Lcom/android/server/ssrm/Monitor;->mAMSQuerySyncObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v3, v3, Lcom/android/server/ssrm/Monitor;->mAMSQuerySyncObject:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor$24;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v3, v3, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onImportanceChanged(III)V
    .locals 0

    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    return-void
.end method

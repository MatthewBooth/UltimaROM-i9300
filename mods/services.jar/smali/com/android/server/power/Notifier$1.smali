.class Lcom/android/server/power/Notifier$1;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$ScreenOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOn()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "PowerManagerNotifier"

    const-string v1, "[api] WindowManagerPolicy.ScreenOnListener : Received onScreenOn()."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #getter for: Lcom/android/server/power/Notifier;->mIsforceReleaseScreenOnBlocker:Z
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$000(Lcom/android/server/power/Notifier;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #getter for: Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #getter for: Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$200(Lcom/android/server/power/Notifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #getter for: Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$300(Lcom/android/server/power/Notifier;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #getter for: Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$400(Lcom/android/server/power/Notifier;)Lcom/android/server/power/Notifier$NotifierHandler;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z
    invoke-static {v0, v2}, Lcom/android/server/power/Notifier;->access$202(Lcom/android/server/power/Notifier;Z)Z

    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #getter for: Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$500(Lcom/android/server/power/Notifier;)Lcom/android/server/power/ScreenOnBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/ScreenOnBlocker;->release()V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #setter for: Lcom/android/server/power/Notifier;->mIsforceReleaseScreenOnBlocker:Z
    invoke-static {v0, v2}, Lcom/android/server/power/Notifier;->access$002(Lcom/android/server/power/Notifier;Z)Z

    goto :goto_0
.end method

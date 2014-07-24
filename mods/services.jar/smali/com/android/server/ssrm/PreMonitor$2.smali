.class Lcom/android/server/ssrm/PreMonitor$2;
.super Ljava/lang/Object;
.source "PreMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/PreMonitor;->bootComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/PreMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/PreMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/PreMonitor$2;->this$0:Lcom/android/server/ssrm/PreMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    :try_start_0
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const-string v2, "SSRMv2:PreMonitor"

    const-string v3, "run:: The PreSIOP is deactivating now."

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v2

    iget v2, v2, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->arm:I

    if-eq v2, v4, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$200()Landroid/os/DVFSHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v2

    iget v2, v2, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->gpu:I

    if-eq v2, v4, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$400()Landroid/os/DVFSHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    iget v2, v2, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNext:I

    if-eq v2, v4, :cond_2

    iget-object v2, v1, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    iget v2, v2, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;->mMaxBrightnessNext:I

    invoke-static {v2}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->notifyMaxBrightnessToSettings()V

    :cond_2
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->button:Z

    if-nez v2, :cond_3

    const/16 v2, 0xff

    invoke-static {v2}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxButtonBrightness(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    invoke-static {v5}, Lcom/android/server/ssrm/PreMonitor;->access$102(Z)Z

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "SSRMv2:PreMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v5}, Lcom/android/server/ssrm/PreMonitor;->access$102(Z)Z

    throw v2
.end method

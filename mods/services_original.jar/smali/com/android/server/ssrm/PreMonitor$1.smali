.class Lcom/android/server/ssrm/PreMonitor$1;
.super Ljava/lang/Object;
.source "PreMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/PreMonitor;->run()V
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

    iput-object p1, p0, Lcom/android/server/ssrm/PreMonitor$1;->this$0:Lcom/android/server/ssrm/PreMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, -0x1

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->updateBatteryTemperature()V

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBatteryTemperature()I

    move-result v6

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->triggerTemperature:I

    if-le v6, v0, :cond_1

    const-string v0, "SSRMv2:PreMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run:: The PreSIOP is not activated. bat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor;->access$102(Z)Z

    const-string v0, "SSRMv2:PreMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run:: The PreSIOP is activated. bat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->arm:I

    if-eq v0, v8, :cond_2

    new-instance v0, Landroid/os/DVFSHelper;

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$300()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PRESIOP_ARM_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor;->access$202(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$200()Landroid/os/DVFSHelper;

    move-result-object v0

    const-string v1, "CPU"

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v2

    iget v2, v2, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->arm:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$200()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_2
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->gpu:I

    if-eq v0, v8, :cond_3

    new-instance v0, Landroid/os/DVFSHelper;

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$300()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PRESIOP_GPU_MAX"

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor;->access$402(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$400()Landroid/os/DVFSHelper;

    move-result-object v0

    const-string v1, "GPU"

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v2

    iget v2, v2, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->gpu:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$400()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_3
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->brightness:I

    if-eq v0, v8, :cond_4

    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->brightness:I

    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxBrightness(I)V

    :cond_4
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$000()Lcom/android/server/ssrm/PreMonitor$SIOPTable;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->button:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->limitMaxButtonBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

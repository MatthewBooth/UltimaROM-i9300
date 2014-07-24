.class Lcom/android/server/ssrm/Monitor$25;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->onSipChanged(Landroid/content/Intent;)V
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

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$25;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    iget-boolean v3, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    if-eq v2, v3, :cond_1

    iget-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    iput-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    iget-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onSIPVisibilityChangedForAll(Z)V

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$25;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-boolean v3, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/Monitor;->updateFallbackTime(Z)V

    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$25;->this$0:Lcom/android/server/ssrm/Monitor;

    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSIPIntentReceived:: InterruptedException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$25;->this$0:Lcom/android/server/ssrm/Monitor;

    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "onSIPIntentReceived:: Redundant SIP visibility update will be ignored."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.class Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator$1;
.super Landroid/content/BroadcastReceiver;
.source "RemainingUsageTimeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator$1;->this$0:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator$1;->this$0:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    iget-object v6, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator$1;->this$0:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    iget v6, v6, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->initStartChecking(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "status"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator$1;->this$0:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    iget v5, v5, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->mEndLevel:I

    if-eq v5, v4, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Battery Level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-eq v1, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator$1;->this$0:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    invoke-virtual {v5}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->checkCurrentMode()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator$1;->this$0:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->initStartChecking(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/io/File;

    const-string v5, "/data/system/rut.db"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_4
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator$1;->this$0:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    invoke-virtual {v5}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->createRemainUsageTimeHistory()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator$1;->this$0:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->onBatteryChange(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

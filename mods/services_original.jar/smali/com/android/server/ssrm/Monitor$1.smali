.class Lcom/android/server/ssrm/Monitor$1;
.super Landroid/os/Handler;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->initHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v4, v6}, Lcom/android/server/ssrm/Monitor;->onForegroundAppChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/Monitor;->onReceiveBroadcastIntent(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;

    iget-object v4, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;->value:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/ssrm/Monitor;->handleSsrmCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v4, v4, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/ssrm/SortingMachine;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mAppStartCondition:Lcom/android/server/ssrm/settings/Condition;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

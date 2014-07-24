.class Lcom/android/server/TimaService$TimaServiceHandler;
.super Landroid/os/Handler;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimaServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaService;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TimaServiceHandler.handleMessage what ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    #getter for: Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/android/server/TimaService;->access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;

    move-result-object v6

    if-eqz v6, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v6, "TimaService"

    const-string v7, "Notification or Bundle is not ready!"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v6, "MSG="

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    const-string v6, "TimaService"

    const-string v7, "Invalid TIMA message!"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v6, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v6, :cond_4

    const-string v6, "TimaService"

    const-string v7, "TimaServiceHandler(): iBootCompleted==false"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    const/16 v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    #getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v6, 0x1080027

    iput v6, v3, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    #getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "TIMA security measurement"

    invoke-virtual {v3, v6, v7, v5, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    #getter for: Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/android/server/TimaService;->access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;

    move-result-object v6

    const/16 v7, 0x1b58

    invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "TimaService"

    const-string v7, "Exception in handleMessage"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

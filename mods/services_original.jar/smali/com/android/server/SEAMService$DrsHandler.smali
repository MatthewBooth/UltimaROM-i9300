.class Lcom/android/server/SEAMService$DrsHandler;
.super Landroid/os/Handler;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SEAMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrsHandler"
.end annotation


# instance fields
.field drs:Lcom/android/server/DrsService;

.field final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method constructor <init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/SEAMService$DrsHandler;->this$0:Lcom/android/server/SEAMService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/android/server/DrsService;->getInstance()Lcom/android/server/DrsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SEAMService$DrsHandler;->drs:Lcom/android/server/DrsService;

    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/server/SEAMService$DrsHandler;->drs:Lcom/android/server/DrsService;

    invoke-virtual {v2, v1}, Lcom/android/server/DrsService;->relabelDataDir(Ljava/util/Queue;)Z

    goto :goto_0

    :cond_0
    const-string v2, "SEAMService"

    const-string v3, "data type not match"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/SEAMService$DrsHandler;->drs:Lcom/android/server/DrsService;

    invoke-virtual {v2, v0}, Lcom/android/server/DrsService;->relabelAppDir(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v2, "SEAMService"

    const-string v3, "data type not match"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/16 v1, 0xa

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SEAMService$DrsHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method

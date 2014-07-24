.class final Lcom/android/server/LightsService$SvcLEDReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SvcLEDReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/LightsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v1, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$200(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    const-string v1, "LightsService"

    const-string v3, "[api] onReceive : SvcLEDReceiver re-enables LightSenor and sends MSG_FORCEDSVCLEDTASK"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    #calls: Lcom/android/server/LightsService;->acquireWakeLockForLED()V
    invoke-static {v1}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)V

    iget-object v1, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    const/4 v3, 0x1

    #calls: Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;Z)V

    iget-object v1, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$SvcLEDHandler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$SvcLEDHandler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$SvcLEDHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v3}, Lcom/android/server/LightsService;->access$700(Lcom/android/server/LightsService;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

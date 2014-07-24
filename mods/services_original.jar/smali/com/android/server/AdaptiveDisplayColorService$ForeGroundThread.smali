.class final Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
.super Ljava/lang/Thread;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForeGroundThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method private constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #getter for: Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    invoke-static {v1}, Lcom/android/server/AdaptiveDisplayColorService;->access$1100(Lcom/android/server/AdaptiveDisplayColorService;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    invoke-static {}, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->interrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x12c

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #getter for: Lcom/android/server/AdaptiveDisplayColorService;->mThreadEnableCondition:Z
    invoke-static {v1}, Lcom/android/server/AdaptiveDisplayColorService;->access$1200(Lcom/android/server/AdaptiveDisplayColorService;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    if-eqz v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    iget-object v1, v1, Lcom/android/server/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #setter for: Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    invoke-static {v1, v5}, Lcom/android/server/AdaptiveDisplayColorService;->access$1102(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    :goto_1
    return-void

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #setter for: Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    invoke-static {v1, v5}, Lcom/android/server/AdaptiveDisplayColorService;->access$1102(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #setter for: Lcom/android/server/AdaptiveDisplayColorService;->mForeGroundThread:Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;
    invoke-static {v2, v5}, Lcom/android/server/AdaptiveDisplayColorService;->access$1102(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;)Lcom/android/server/AdaptiveDisplayColorService$ForeGroundThread;

    throw v1
.end method

.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionForCaptureEffect"
.end annotation


# instance fields
.field private mShotEvent:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    iput p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v6, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const/4 v5, 0x0

    iget v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    move-object v4, p0

    new-instance v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect$1;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg2:I

    iput v5, v3, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "sweepDirection"

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget v7, v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isStatusBarVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg1:I

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isNavigationBarVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

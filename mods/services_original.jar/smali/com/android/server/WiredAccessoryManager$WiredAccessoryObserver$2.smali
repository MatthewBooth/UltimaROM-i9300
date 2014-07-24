.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;
.super Landroid/os/Handler;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    #calls: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->sendUSBAudioIntent(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    invoke-static {v1, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->access$1500(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #getter for: Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.class Lcom/android/server/smartclip/GestureEffectManager$2;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/GestureEffectManager;->injectionKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/GestureEffectManager;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/GestureEffectManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iput p2, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v1, v1, Lcom/android/server/smartclip/GestureEffectManager;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v1, v1, Lcom/android/server/smartclip/GestureEffectManager;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v1, v1, Lcom/android/server/smartclip/GestureEffectManager;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    #getter for: Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$600(Lcom/android/server/smartclip/GestureEffectManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GestureEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPenGestureView.mSPenGestureEventDispatchThread : Thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ThreadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v0, v0, Lcom/android/server/smartclip/GestureEffectManager;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    #getter for: Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$600(Lcom/android/server/smartclip/GestureEffectManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GestureEffectManager"

    const-string v1, "SPenGestureView$Runnable.mSPenGestureEventDispatchThread : before sendKeyDownUpSync(key)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    iget v1, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->val$key:I

    const/16 v2, 0x4002

    #calls: Lcom/android/server/smartclip/GestureEffectManager;->sendKeyDownUpSync(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/smartclip/GestureEffectManager;->access$700(Lcom/android/server/smartclip/GestureEffectManager;II)V

    iget-object v0, p0, Lcom/android/server/smartclip/GestureEffectManager$2;->this$0:Lcom/android/server/smartclip/GestureEffectManager;

    #getter for: Lcom/android/server/smartclip/GestureEffectManager;->DEBUG:Z
    invoke-static {v0}, Lcom/android/server/smartclip/GestureEffectManager;->access$600(Lcom/android/server/smartclip/GestureEffectManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GestureEffectManager"

    const-string v1, "SPenGestureView$Runnable.mSPenGestureEventDispatchThread : after sendKeyDownUpSync(key)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

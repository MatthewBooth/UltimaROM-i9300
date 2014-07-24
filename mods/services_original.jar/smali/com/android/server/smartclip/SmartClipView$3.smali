.class Lcom/android/server/smartclip/SmartClipView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SmartClipView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "SmartClipView"

    const-string v1, "Pen DoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v1, v1, Lcom/android/server/smartclip/SmartClipView;->mPenDoubleTap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->access$402(Lcom/android/server/smartclip/SmartClipView;Z)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "SmartClipView"

    const-string v1, "Pen LongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v1, v1, Lcom/android/server/smartclip/SmartClipView;->mPenLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$400(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v3, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v5, 0x96

    if-ge v0, v5, :cond_0

    if-ltz v3, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$3;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #setter for: Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z
    invoke-static {v5, v4}, Lcom/android/server/smartclip/SmartClipView;->access$402(Lcom/android/server/smartclip/SmartClipView;Z)Z

    const-string v5, "SmartClipView"

    const-string v6, "onScroll() vertical Up - out of threshold!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v4

    :cond_2
    const-string v4, "SmartClipView"

    const-string v5, "There is no previous down event."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0
.end method

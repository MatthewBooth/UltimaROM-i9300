.class final Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnifiedContentInteractonStateHandler"
.end annotation


# static fields
.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_SCALE:F = 1.3f

.field private static final SCALING_THRESHOLD:F = 0.3f


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v1

    const v2, 0x3fa66666

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->persistScale(F)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1200(Lcom/android/server/accessibility/ScreenMagnifier;F)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mPreviousState:I
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1300(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v1, v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v2, 0x2

    #calls: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    iput v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v5

    iget v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mInitialScaleFactor:F

    sub-float v0, v5, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3e99999a

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iput-boolean v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->mScaling:Z

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    mul-float v1, v5, v6

    const v5, 0x3fa66666

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x40a0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "normalizedNewScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    invoke-virtual {v5, v2, v6, v7, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScale(FFFZ)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Panned content by scrollX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scrollY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->offsetMagnifiedRegionCenter(FF)V

    goto :goto_0
.end method

.class public Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_LEFT_CENTER_LEFT:I = 0x65

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_RIGHT_CENTER_RIGHT:I = 0x64

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

.field private mCanStartEasyOneHand:Z

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mFirstDownTime:J

.field private mFirstDownX:I

.field private mFirstDownY:I

.field private mMaxReachedTime:J

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mStartFromLeft:Z

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private mSwipeFromTopMargin:I

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;)V
    .locals 3

    const/16 v2, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    const-string v1, "callbacks"

    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    const-string v1, "context"

    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iget v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4248

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFromTopMargin:I

    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 5

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v0

    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p1
.end method

.method private detectEasyOneHandGesture(Landroid/view/MotionEvent;)I
    .locals 14

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v5, v10, 0x3

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v3, 0x3

    :goto_0
    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int v4, v10, v3

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int v2, v10, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v8, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v9, v10

    const-string v10, "SystemGestures"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "detectEasyOneHandGesture() isRunning="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mStartFromLeft="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mStartFromLeft:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", MoveDistanceX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v13, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", MoveDistanceY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    iget v13, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mFirstDownX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mFirstDownY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", upX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", upY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", width="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMaxX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMinX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", upX-DownX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    sub-int v12, v8, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", upY-DownY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    sub-int v12, v9, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v10, v11

    if-le v10, v5, :cond_2

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    sub-int/2addr v11, v12

    if-le v10, v11, :cond_2

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    if-ltz v10, :cond_2

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    sub-int v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v10, v10, 0x4

    if-ge v0, v10, :cond_2

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    div-int/lit8 v10, v10, 0x8

    if-ge v1, v10, :cond_2

    iget-wide v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x320

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    iget-wide v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxReachedTime:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0xc8

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    if-ge v10, v4, :cond_1

    if-ge v8, v2, :cond_1

    const-string v10, "SystemGestures"

    const-string v11, "detectEasyOneHandGesture() success left"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x65

    :goto_1
    return v10

    :cond_0
    const/4 v3, 0x5

    goto/16 :goto_0

    :cond_1
    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v11, v4

    if-le v10, v11, :cond_2

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v10, v2

    if-le v8, v10, :cond_2

    const-string v10, "SystemGestures"

    const-string v11, "detectEasyOneHandGesture() success right"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x64

    goto :goto_1

    :cond_2
    const/4 v10, -0x1

    goto :goto_1
.end method

.method private detectSwipe(IJFF)I
    .locals 10

    iget-object v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    aget v4, v8, p1

    iget-object v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    aget v5, v8, p1

    iget-object v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v8, v8, p1

    sub-long v2, p2, v8

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_2

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    cmpl-float v8, p5, v8

    if-lez v8, :cond_2

    const-wide/16 v8, 0x1f4

    cmp-long v8, v2, v8

    if-gez v8, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFromTopMargin:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFromTopMargin:I

    sub-int v7, v8, v9

    :cond_0
    if-eqz v6, :cond_1

    int-to-float v8, v6

    cmpl-float v8, p4, v8

    if-lez v8, :cond_2

    int-to-float v8, v7

    cmpg-float v8, p4, v8

    if-gez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_3

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v8, v8

    sub-float v8, v5, v8

    cmpg-float v8, p5, v8

    if-gez v8, :cond_3

    const-wide/16 v8, 0x1f4

    cmp-long v8, v2, v8

    if-gez v8, :cond_3

    const/4 v8, 0x2

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_4

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v8, v8

    sub-float v8, v4, v8

    cmpg-float v8, p4, v8

    if-gez v8, :cond_4

    const-wide/16 v8, 0x1f4

    cmp-long v8, v2, v8

    if-gez v8, :cond_4

    const/4 v8, 0x3

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_3

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    :goto_2
    return v19

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    if-nez v19, :cond_0

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_4
    const/16 v19, 0x0

    goto :goto_2
.end method

.method private findIndex(I)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v1, v2

    iget v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 11

    const/4 v3, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    move v3, v5

    :cond_1
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v8, v3

    if-lt v5, v8, :cond_2

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    if-le v5, v8, :cond_3

    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v8, v3

    if-ge v5, v8, :cond_4

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mStartFromLeft:Z

    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iput v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    invoke-direct {p0, p1, v7}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v5, v3, :cond_5

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_0

    :cond_5
    move v6, v7

    goto :goto_2

    :pswitch_3
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    if-eqz v8, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v1, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v2, v8

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    if-le v8, v1, :cond_c

    move v8, v1

    :goto_3
    iput v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    if-le v8, v1, :cond_d

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    :goto_4
    iput v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    if-le v8, v2, :cond_e

    move v8, v2

    :goto_5
    iput v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    if-le v8, v2, :cond_6

    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    :cond_6
    iput v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v9, v9, 0x4

    if-le v8, v9, :cond_a

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v8

    if-eqz v8, :cond_7

    move v3, v5

    :cond_7
    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v9, v3

    if-ge v8, v9, :cond_8

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    if-ge v1, v8, :cond_9

    :cond_8
    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v10, v3

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_a

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    if-gt v1, v8, :cond_a

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxReachedTime:J

    :cond_a
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v8, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v4

    if-nez v4, :cond_b

    move v7, v6

    :cond_b
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-ne v4, v6, :cond_f

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto/16 :goto_0

    :cond_c
    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    goto :goto_3

    :cond_d
    move v8, v1

    goto :goto_4

    :cond_e
    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    goto :goto_5

    :cond_f
    const/4 v6, 0x2

    if-ne v4, v6, :cond_10

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto/16 :goto_0

    :cond_10
    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto/16 :goto_0

    :pswitch_4
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    if-eqz v5, :cond_11

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectEasyOneHandGesture(Landroid/view/MotionEvent;)I

    move-result v0

    const/16 v5, 0x65

    if-ne v0, v5, :cond_12

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeLeftCenterLeft()V

    :cond_11
    :goto_6
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0x64

    if-ne v0, v5, :cond_11

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeRightCenterRight()V

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

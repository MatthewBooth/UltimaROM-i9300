.class public Lcom/android/server/wm/StackTapPointerEventListener;
.super Ljava/lang/Object;
.source "StackTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/StackTapPointerEventListener$1;,
        Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;
    }
.end annotation


# static fields
.field private static final TAP_MOTION_SLOP_INCHES:F = 0.125f

.field private static final TAP_TIMEOUT_MSEC:I = 0x12c


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDownX:F

.field private mDownY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mMotionSlop:I

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mPointerId:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object p1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x3e00

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "multiwindow_facade"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    .locals 15

    const/4 v6, 0x0

    move/from16 v0, p1

    float-to-int v10, v0

    move/from16 v0, p2

    float-to-int v11, v0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    iget-object v12, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v3

    iget-object v12, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_0
    iget-object v12, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v12, v1, 0x10

    if-nez v12, :cond_0

    const/16 v12, 0x8ca

    if-eq v7, v12, :cond_0

    if-eqz p3, :cond_2

    const/high16 v12, 0x1000

    and-int/2addr v12, v1

    if-nez v12, :cond_0

    :cond_2
    invoke-virtual {v8, v5}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v5}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    const/16 v14, 0x800

    invoke-virtual {v12, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_3

    neg-int v12, v3

    neg-int v14, v3

    invoke-virtual {v4, v12, v14}, Landroid/graphics/Rect;->inset(II)V

    :cond_3
    invoke-virtual {v4, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v6, v8

    :cond_4
    monitor-exit v13

    return-object v6

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12
.end method

.method private otherAppTouched(FFZ)Z
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 4

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;-><init>(Lcom/android/server/wm/StackTapPointerEventListener;Lcom/android/server/wm/StackTapPointerEventListener$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit16 v2, v0, 0xff

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    iget v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    iget v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/wm/StackTapPointerEventListener;->otherAppTouched(FFZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x1f

    iget v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

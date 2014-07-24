.class Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
.super Landroid/view/View;
.source "GuideRelayoutWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;,
        Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;
    }
.end annotation


# static fields
.field private static final DIR_BOTTOM:I = 0x2

.field private static final DIR_LEFT:I = 0x0

.field private static final DIR_MAX:I = 0x3

.field private static final DIR_RIGHT:I = 0x1

.field static final GESTURE_MAX:I = 0x7

.field static final GESTURE_MOVE:I = 0x1

.field static final GESTURE_NONE:I = 0x0

.field static final GESTURE_RESIZE_BOTTOM:I = 0x6

.field static final GESTURE_RESIZE_LEFT:I = 0x2

.field static final GESTURE_RESIZE_LEFTBOTTOM:I = 0x4

.field static final GESTURE_RESIZE_RIGHT:I = 0x3

.field static final GESTURE_RESIZE_RIGHTBOTTOM:I = 0x5


# instance fields
.field private final AUTO_CLOSE_MILLISEC:I

.field final FADEOUT_DELAY:I

.field final TAG:Ljava/lang/String;

.field private mAutoDismissHandler:Landroid/os/Handler;

.field private mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

.field private mCurrentOrientation:I

.field private mDeltaX:I

.field private mDeltaY:I

.field private mFadeoutAlpha:I

.field private mFadeoutHandler:Landroid/os/Handler;

.field private mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

.field private mFlagAutoClose:Z

.field private mFlagDimming:Z

.field private mFlagDrawResizeDecor:Z

.field private mFlagDrawingRedBorder:Z

.field private mGestureMode:I

.field private mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

.field private mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

.field private mPnt:Landroid/graphics/Paint;

.field private mPosX:I

.field private mPosY:I

.field private mResizeArrowRect:[Landroid/graphics/Rect;

.field private mResizePtrBmp:Landroid/graphics/Bitmap;

.field private mResizeSymbolRect:[Landroid/graphics/Rect;

.field private mRightArrowPtrBmp:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/content/Context;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v1, "GuideView"

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaX:I

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaY:I

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->FADEOUT_DELAY:I

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    new-array v1, v6, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeSymbolRect:[Landroid/graphics/Rect;

    new-array v1, v5, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDimming:Z

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->AUTO_CLOSE_MILLISEC:I

    iput-object p3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    const/high16 v2, 0x4234

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeSymbolRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;-><init>(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return p1
.end method

.method static synthetic access$1420(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaX:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaY:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateGesture(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I

    return p1
.end method

.method private calculateGesture(II)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1050106

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/16 v10, 0x32

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v13, v13, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v13, v13, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v4

    new-instance v11, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v15, v15, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-direct {v11, v13, v14, v15, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v15

    sub-int v15, v2, v15

    invoke-direct {v5, v13, v10, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v13

    sub-int v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    sub-int v14, v2, v14

    invoke-direct {v8, v13, v10, v4, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v2, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    invoke-direct {v6, v13, v14, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    sub-int v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v2, v14

    invoke-direct {v9, v13, v14, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    sub-int v14, v2, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v15

    sub-int v15, v4, v15

    invoke-direct {v3, v13, v14, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    const-string v13, "GuideView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calculateGesture("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v13, v13, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v13, v13, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedSize:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v13, v13, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseCoutomView:Z

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x4

    goto :goto_0

    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x5

    goto :goto_0

    :cond_4
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    goto :goto_0

    :cond_5
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x2

    goto :goto_0

    :cond_6
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x3

    goto :goto_0

    :cond_7
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x6

    goto :goto_0

    :cond_8
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private drawResizeDecor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method private resizeGuideView(II)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const-string v4, "GuideView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPinupResizePosition("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v8, :cond_1

    :cond_0
    add-int v4, v0, p2

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-gt v4, v5, :cond_5

    add-int/2addr v0, p2

    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v7, :cond_7

    :cond_2
    add-int v4, v1, p1

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_6

    add-int/2addr v1, p1

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->adjustRatio(Landroid/graphics/Rect;)V

    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->adjustSize(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int v0, v3, v4

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v1, v2, v4

    goto :goto_1

    :cond_7
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v8, :cond_3

    :cond_8
    add-int v4, v2, p1

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_9

    add-int/2addr v2, p1

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int v2, v1, v4

    goto :goto_1
.end method

.method private updateResizeDecorRect()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    goto :goto_1
.end method


# virtual methods
.method public adjustRatio(Landroid/graphics/Rect;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v4, v3

    int-to-double v6, v2

    div-double v0, v4, v6

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-double v5, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    mul-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    div-int v2, v4, v5

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-double v5, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    cmpg-double v4, v0, v4

    if-gez v4, :cond_1

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-double v5, v3

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    mul-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    div-int v3, v4, v5

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method public adjustSize(Landroid/graphics/Rect;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    div-double/2addr v2, v4

    double-to-int v0, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v2, :cond_3

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v2, v6, :cond_9

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v4, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_3

    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v4, :cond_5

    :goto_4
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_4

    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v4, :cond_6

    :goto_5
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_5

    :cond_7
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v2, v7, :cond_8

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_8
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_9
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v2, v7, :cond_3

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public moveGuideView(II)V
    .locals 7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int v0, v1, p2

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    if-gez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p2

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v6, v6, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int v1, v0, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p2

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v6, v6, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "GuideView"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->getMode()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    const-string v7, "GuideView"

    const-string v8, "onTouchEvent - the mode is not DIALOG_MODE_MOVE_N_RESIZE"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v1, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v2, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_1
    move v6, v7

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateGesture(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-nez v8, :cond_1

    const-string v7, "GuideView"

    const-string v8, "onTouchEvent(ACTION_DOWN) - Invalid touch area. Close Dialog."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    if-eqz v8, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    if-eqz v8, :cond_3

    const/16 v8, 0xff

    iput v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    move v6, v7

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x3f80

    const/high16 v5, 0x3f80

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v8}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$700(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$702(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    :cond_4
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    sub-int v8, v1, v8

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    div-int/lit8 v8, v8, 0x2

    mul-int/lit8 v3, v8, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    sub-int v8, v2, v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    div-int/lit8 v8, v8, 0x2

    mul-int/lit8 v4, v8, 0x2

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    const-string v6, "GuideView"

    const-string v8, "onTouchEvent::ACTION_MOVE [Filtered by offset[2]"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto/16 :goto_0

    :cond_5
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    packed-switch v8, :pswitch_data_1

    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    move v6, v7

    goto/16 :goto_0

    :pswitch_2
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->moveGuideView(II)V

    goto :goto_2

    :pswitch_3
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->resizeGuideView(II)V

    goto :goto_2

    :pswitch_4
    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    sub-int v6, v1, v6

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v3, v6, 0x2

    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v4, v6, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    const-string v0, "GuideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged( hasWindowFocus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    :cond_0
    return-void
.end method

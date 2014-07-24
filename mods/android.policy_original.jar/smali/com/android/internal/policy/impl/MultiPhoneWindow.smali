.class public Lcom/android/internal/policy/impl/MultiPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final FEATURE_DISABLE_LEFT_RESIZE:Z = true

.field static final FEATURE_GUIDE_MOVE_LAYOUT_ENABLED:Z = true

.field static final FEATURE_GUIDE_RESIZE_LAYOUT_ENABLED:Z = true

.field static final FLOATING_CYCLE_DEBUG:Z = false

.field static final FLOATING_SIZE_DEBUG:Z = false

.field static final SAFE_DEBUG:Z = true

.field private static final STATE_FLOATING:I = 0x2

.field private static final STATE_MINIMIZED_FLOATING:I = 0x4

.field private static final STATE_NORMAL:I = 0x1

.field private static final STATE_SCALED_FLOATING:I = 0x3

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"

.field static final TEMP_TOAST_HEIGHT:I = 0x28


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentLayoutGenerated:Z

.field private mContentRootContainer:Landroid/view/ViewGroup;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCustomMinimizeView:Landroid/view/View;

.field private mDecorBackground:Landroid/graphics/drawable/Drawable;

.field private mFocusLineColor:I

.field private mGuideView:Lcom/android/internal/policy/impl/GuideView;

.field private mHasWindowFocus:Z

.field private mInitialFlag:I

.field private mIsBorder:Z

.field private mIvt:[B

.field private mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mLastOrientation:I

.field private mLastStackBound:Landroid/graphics/Rect;

.field private mMinimizedIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizedLabel:Ljava/lang/CharSequence;

.field private mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOutLineColor:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mResizablePadding:Landroid/graphics/Rect;

.field private mStackBound:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private final mThickness:I

.field private final mThicknessBorderPaintInner:F

.field private final mThicknessBorderPaintOuter:F

.field private final mThicknessForUnFocused:I

.field mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

.field private mTitleBarHeight:I

.field private mTmpBound:Landroid/graphics/Rect;

.field private mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mUnFocusLineColor:I

.field private final mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameRightRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameTopRect:Landroid/graphics/Rect;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

.field private mWindowIconic:Landroid/widget/ImageView;

.field private mWindowTitleBar:Landroid/view/View;

.field sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

.field sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initResource()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805d5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805d6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805d7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805d4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintInner:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintOuter:F

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0xa2t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusLineColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnFocusLineColor:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintInner:F

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOutLineColor:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintOuter:F

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Canvas;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->drawBorderBitmap(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/GuideView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method private adjustMinimizedStackBoxBound(Landroid/graphics/Rect;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1050115

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int v3, v5, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int v0, v5, v1

    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_2

    iget v5, p1, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    :goto_0
    iget v5, v4, Landroid/graphics/Point;->y:I

    if-le v0, v5, :cond_3

    iget v5, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v5, v4, Landroid/graphics/Point;->x:I

    if-le v3, v5, :cond_0

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v5, v6, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method

.method private adjustScaleFactor()V
    .locals 10

    const/high16 v3, 0x3f80

    const/high16 v6, 0x3f80

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    if-gt v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v7

    if-nez v7, :cond_2

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    if-ge v7, v8, :cond_2

    :cond_1
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    iput v7, v4, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float v3, v7, v8

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v6, v7, v8

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    :cond_4
    return-void
.end method

.method private adjustStackBoxBound(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v0, v3, 0x3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v1, v3, 0x3

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_2

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_0
    :goto_0
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_3

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v3, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_3
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v3, v4, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method private checkFunctionState()V
    .locals 10

    const/4 v5, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_4

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    const-string v8, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    const-string v8, "\\|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v6, :cond_5

    if-eqz v4, :cond_5

    :try_start_1
    const-string v8, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    const-string v8, "\\|"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    if-eqz v5, :cond_3

    :try_start_2
    const-string v8, "minimize"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x1020353

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-string v8, "maximize"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x1020355

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const-string v8, "exit"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x1020357

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_3

    :catch_1
    move-exception v8

    move-object v5, v6

    goto :goto_3

    :cond_5
    move-object v5, v6

    goto :goto_2

    :cond_6
    move-object v6, v5

    goto :goto_1
.end method

.method private dismissGuide()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GuideView;->dismiss()V

    :cond_0
    return-void
.end method

.method private drawBorderBitmap(Landroid/graphics/Canvas;II)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, v3, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v3, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p3, v3

    invoke-virtual {v1, v5, v3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v3, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p3, v3

    invoke-virtual {v1, v5, v3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, v3, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 14

    if-nez p4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v13, v1

    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v1, 0x3f80

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-lez v13, :cond_0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v13, :cond_2

    int-to-float v2, v11

    add-int v1, v9, v12

    int-to-float v3, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int v1, v9, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v11

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v12

    int-to-float v3, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v11, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_0

    add-int v1, v9, v11

    int-to-float v2, v1

    int-to-float v3, v12

    add-int v1, v9, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v11

    int-to-float v2, v1

    int-to-float v3, v12

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private forceHideInputMethod()Z
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method private getState()I
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initResource()V
    .locals 4

    const v3, 0x1060087

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusLineColor:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOutLineColor:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnFocusLineColor:I

    return-void
.end method

.method private initStackBound(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private moveStackBound(IIZ)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustMinimizedStackBoxBound(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    return-void

    :cond_1
    if-nez p3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBoxBound(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x2

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private refreshUI(Z)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v12

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    packed-switch v12, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    and-int/lit16 v15, v15, 0x200

    if-nez v15, :cond_4

    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v15, v15, -0x201

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    const/high16 v16, 0x400

    and-int v15, v15, v16

    if-eqz v15, :cond_5

    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v16, 0x400

    or-int v15, v15, v16

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_5
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v5, v15, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v16, 0x1020354

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v11

    iget v15, v11, Landroid/graphics/Rect;->left:I

    if-gez v15, :cond_6

    iget v15, v11, Landroid/graphics/Rect;->left:I

    neg-int v15, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/graphics/Rect;->offset(II)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_9

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-ge v6, v15, :cond_9

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    instance-of v15, v14, Landroid/view/ViewGroup;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object v15, v14

    check-cast v15, Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    check-cast v14, Landroid/view/ViewGroup;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v15, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    iget v15, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    const/4 v8, 0x1

    :cond_a
    if-eqz p1, :cond_c

    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const v16, 0x10a005c

    invoke-static/range {v15 .. v16}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    new-instance v16, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    :cond_b
    :goto_4
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v16, -0x4000001

    and-int v15, v15, v16

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v5, v15, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_d

    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v15, :cond_b

    if-eqz p1, :cond_f

    if-eqz v8, :cond_b

    :cond_f
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    goto :goto_4

    :pswitch_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v15

    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    if-eqz v10, :cond_10

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForPortraitOrientation()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForLandscapeOrientation()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v15, v15, 0x200

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v16, -0x4000001

    and-int v15, v15, v16

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v5, v15, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v15

    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_16

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v15, v15, 0x200

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v5, v15, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private requestState(I)V
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    invoke-virtual {v0, v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    invoke-virtual {v0, v6, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/16 v1, 0x800

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v2, 0x1020354

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setMinimizeViewVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMinimizedDrawable(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setStackBound(Landroid/graphics/Rect;Z)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBoxBound(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private showGuide(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/GuideView;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GuideView;->show(IIII)V

    return-void
.end method

.method private showGuide(Landroid/graphics/Rect;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GuideView;->setType(I)V

    return-void
.end method

.method private updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    return-void
.end method


# virtual methods
.method public arrangeScaleStackBound()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isResumed()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-ne v7, v10, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    const/16 v8, 0x800

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v7, v8, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v7, v2, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    sub-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_3

    iget v6, v2, Landroid/graphics/Point;->y:I

    :cond_3
    iget v7, v2, Landroid/graphics/Point;->x:I

    if-le v5, v7, :cond_4

    iget v5, v2, Landroid/graphics/Point;->x:I

    :cond_4
    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    const/4 v7, 0x0

    invoke-direct {p0, v4, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v7, v8, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v7, v8, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ge v7, v8, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public disableMultiWindow(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x4000

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/4 v2, 0x2

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .locals 3

    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 11

    const v10, 0x1020356

    const v6, 0x1020354

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x1090077

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v4, 0x1090078

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v5, 0x1020352

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v5, 0x1020358

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v5, 0x1020358

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkFunctionState()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v5, 0x1020351

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForPortraitOrientation()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForLandscapeOrientation()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-string v4, "MultiPhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateLayout : sMinimumStackBoundForPortraitOrient"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sMinimumStackBoundForLandscapeOrient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v4

    if-eq v4, v7, :cond_2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    return-object v3
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getOptionsPanelGravity()I
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-ne v1, v5, :cond_1

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v5, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    const/16 v3, 0x51

    :goto_0
    return v3

    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    goto :goto_0
.end method

.method public getStackBound()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isTouchBlocked()Z
    .locals 6

    const/4 v1, 0x0

    const v5, 0x3e4ccccd

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public minimizeWindow(IZ)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    goto :goto_0
.end method

.method public moveWindow(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public multiWindow(IZ)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method public normalWindow(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .locals 21

    const/4 v9, 0x0

    const/4 v8, 0x0

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-nez v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v10, :cond_0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    if-eqz v14, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_6

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-nez v17, :cond_0

    :cond_4
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v11, v17, v18

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    const/16 v17, 0x0

    cmpl-float v17, v12, v17

    if-lez v17, :cond_5

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v17, v17, v18

    if-lez v17, :cond_5

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    mul-float v17, v17, v11

    add-float v18, v11, v12

    div-float v11, v17, v18

    :cond_5
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v13, v17, v18

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3851b717

    add-float v18, v18, v11

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3851b717

    add-float v18, v18, v13

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    :goto_1
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    goto/16 :goto_0

    :cond_6
    new-instance v8, Landroid/graphics/Rect;

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :pswitch_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    if-gez v17, :cond_b

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v5, v0

    :cond_7
    :goto_2
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    :cond_8
    :goto_3
    if-nez v5, :cond_9

    if-eqz v6, :cond_a

    :cond_9
    invoke-virtual {v9, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    :cond_a
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    :cond_b
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    goto :goto_2

    :cond_c
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeAllPanels()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    invoke-virtual {p0, v3, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeWindow(IZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-nez v5, :cond_0

    const/high16 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, v8, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    const/16 v3, 0x800

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v4

    if-eq v4, v7, :cond_5

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-eq v5, v6, :cond_b

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-eqz v6, :cond_7

    move v3, v4

    :cond_7
    invoke-interface {v5, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    :cond_8
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v8, :cond_9

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_a

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    :cond_a
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eq v3, v5, :cond_c

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_1

    :cond_c
    invoke-virtual {p1, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v3, v5, :cond_d

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-eq v3, v5, :cond_8

    :cond_d
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v3, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    const/4 v0, 0x1

    return v0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setMinimizeView(Landroid/view/View;)V
    .locals 3

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v1, 0x1020351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    const/4 v0, 0x1

    return v0
.end method

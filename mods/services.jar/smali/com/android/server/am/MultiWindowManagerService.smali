.class public Lcom/android/server/am/MultiWindowManagerService;
.super Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;,
        Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;,
        Lcom/android/server/am/MultiWindowManagerService$H;,
        Lcom/android/server/am/MultiWindowManagerService$Movement;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static LIMIT_NUM_OF_MULTI_INSTANCE:I = 0x0

.field private static QUADVIEW_DISPLAY_RATIO:F = 0.0f

.field private static QUADVIEW_FULL_DISPLAY_RATIO:F = 0.0f

.field public static START_ACTIVITY_WITH_LAST_PINUP:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field private static mSelf:Lcom/android/server/am/MultiWindowManagerService;


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:Landroid/graphics/Rect;

.field private C:Landroid/graphics/Rect;

.field private D:Landroid/graphics/Rect;

.field private E:Landroid/graphics/Rect;

.field private F:Landroid/graphics/Rect;

.field private SPLIT_ZONE_LEFT:Z

.field private SPLIT_ZONE_RIGHT:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmStateListener:Landroid/content/BroadcastReceiver;

.field private mAppListPosition:I

.field private mBehaviorBasedLaunch:Z

.field mCallbackDeathRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterBarDirection:I

.field private mCenterBarDockingMargin:I

.field private mCenterBarFlingSize:I

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mContext:Landroid/content/Context;

.field private mCurrMovements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentArrangeState:I

.field private mCurrentLaunchMode:I

.field final mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

.field private mIgnoreIntentWindowMode:Z

.field private mIsMultiDisplay:Z

.field private mIsTouchDown:Z

.field private mIvt:[B

.field private mLastArrangeState:I

.field private mLastDisplay:Landroid/graphics/Point;

.field private mLock:Ljava/lang/Object;

.field mMinimizeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimizeIconState:I

.field private mMovements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private mMovingMargin:I

.field private mMultiDisplayId:I

.field private mOldPositionX:F

.field private mOldPositionY:F

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mShiftPosition:Ljava/lang/Runnable;

.field private mShiftX:I

.field private mShiftXArrange:I

.field private mShiftY:I

.field private mSupportAllApps:Z

.field mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportControlbar:Z

.field private mSupportHalfSplit:Z

.field mSupportMultiInstanceAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mToolkitWindowDefHeight:I

.field mToolkitWindowDefWidth:I

.field mToolkitWindowX:I

.field mToolkitWindowY:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVisibleArrangeState:I

.field mWindowDefHeight:I

.field mWindowDefWidth:I

.field mWindowGap:I

.field private mWindowInfoMapByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowInfoMapByTaskId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field mWindowMinimizedHeight:I

.field mWindowMinimizedWidth:I

.field mbLoadSupportControlbar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-class v0, Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    sput-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->START_ACTIVITY_WITH_LAST_PINUP:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->LIMIT_NUM_OF_MULTI_INSTANCE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    const v0, 0x3ecccccd

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    const v0, 0x3f4ccccd

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_FULL_DISPLAY_RATIO:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mVisibleArrangeState:I

    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_LEFT:Z

    iput-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_RIGHT:Z

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    iput-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftY:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$H;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$3;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MultiWindowManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MultiWindowManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiWindowManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/MultiWindowManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAll(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiWindowManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addMinimizeCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;-><init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private applyCenterBarDocking(Landroid/graphics/Point;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050111

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    div-int/lit8 v4, v2, 0x2

    add-int v0, v3, v4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    :cond_0
    :goto_0
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_4

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_3

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_3
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_0

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_4
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_5

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    sub-int/2addr v3, v4

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_5
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_1

    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_1

    iget v3, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 5

    if-eqz p2, :cond_2

    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const-string v2, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    :cond_0
    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    :goto_0
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method

.method private calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;
    .locals 10

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v5, :cond_3

    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    const-string v6, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v9, v0

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p2, :cond_4

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    :cond_4
    return-object v2

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private calculateRotatedPosition(ILandroid/os/Bundle;Landroid/graphics/Point;)V
    .locals 17

    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-nez v4, :cond_0

    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    :cond_0
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v13, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v10

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    iget v13, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v3

    iput v13, v4, Landroid/graphics/Rect;->right:I

    const/high16 v13, 0x20

    and-int v13, v13, p1

    if-eqz v13, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_4

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    iget v15, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    :goto_1
    iget v13, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->x:I

    if-le v13, v14, :cond_5

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_4
    iget v13, v4, Landroid/graphics/Rect;->top:I

    if-gez v13, :cond_3

    const/4 v13, 0x0

    iget v14, v4, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_5
    iget v13, v4, Landroid/graphics/Rect;->left:I

    if-gez v13, :cond_1

    iget v13, v4, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_6
    const/high16 v13, 0x20

    and-int v13, v13, p1

    if-nez v13, :cond_1

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-double v15, v15

    div-double v6, v13, v15

    iget v13, v4, Landroid/graphics/Rect;->top:I

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-double v15, v15

    div-double v8, v13, v15

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->x:I

    int-to-double v13, v13

    mul-double/2addr v13, v6

    double-to-int v1, v13

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->y:I

    int-to-double v13, v13

    mul-double/2addr v13, v8

    double-to-int v2, v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v1, v13

    iput v13, v5, Landroid/graphics/Point;->x:I

    iput v2, v5, Landroid/graphics/Point;->y:I

    iget v13, v5, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Rect;->left:I

    sub-int v11, v13, v14

    iget v13, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v11

    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v13, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v11

    iput v13, v4, Landroid/graphics/Rect;->right:I

    iget v13, v5, Landroid/graphics/Point;->y:I

    iget v14, v4, Landroid/graphics/Rect;->top:I

    sub-int v12, v13, v14

    iget v13, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v12

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v12

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_1

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method private calculateToolkitWindowSize(I)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getEmptySplitZone(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_3

    const/16 v3, 0xf

    and-int/lit8 v0, v3, -0x1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    and-int/lit8 v0, v0, -0xd

    :try_start_0
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v5, 0x40

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v5, 0x20

    if-ne v3, v5, :cond_2

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :cond_2
    monitor-exit v4

    :cond_3
    return v0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getSelf()Lcom/android/server/am/MultiWindowManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/util/MathUtils;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/util/MathUtils;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v1, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/am/MultiWindowManagerService$Movement;-><init>(Lcom/android/server/am/MultiWindowManagerService;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    return-void

    :cond_0
    iput v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    goto :goto_0
.end method

.method private initMinimizeInfo(Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/MultiWindowManagerService$Movement;

    invoke-direct {v3, p0, v4, v4}, Lcom/android/server/am/MultiWindowManagerService$Movement;-><init>(Lcom/android/server/am/MultiWindowManagerService;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private minimizeAll(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private removeMinimizeCallback(Landroid/os/IBinder;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateWindowRects()V
    .locals 14

    const/4 v9, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v7

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v1, 0x2

    add-int v4, v10, v7

    div-int/lit8 v5, v2, 0x2

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050111

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    float-to-int v8, v10

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050112

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    if-le v2, v1, :cond_1

    const/4 v6, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v11, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v11, Landroid/graphics/Point;->y:I

    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v5, v8

    add-int/2addr v11, v3

    sub-int v12, v4, v8

    invoke-direct {v10, v9, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v4, v8

    sub-int v12, v5, v8

    add-int/2addr v12, v3

    add-int v13, v1, v7

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v5, v8

    sub-int/2addr v11, v3

    sub-int v12, v4, v8

    invoke-direct {v10, v11, v9, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v5, v8

    sub-int/2addr v10, v3

    add-int v11, v4, v8

    add-int v12, v1, v7

    invoke-direct {v9, v10, v11, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    :goto_1
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    move v6, v9

    goto :goto_0

    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    :cond_2
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v5, v8

    sub-int v12, v4, v8

    add-int/2addr v12, v3

    invoke-direct {v10, v9, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v4, v8

    sub-int/2addr v11, v3

    sub-int v12, v5, v8

    add-int v13, v1, v7

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v5, v8

    sub-int v12, v4, v8

    add-int/2addr v12, v3

    invoke-direct {v10, v11, v9, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v5, v8

    add-int v11, v4, v8

    sub-int/2addr v11, v3

    add-int v12, v1, v7

    invoke-direct {v9, v10, v11, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    goto :goto_1
.end method


# virtual methods
.method public addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_0

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    :cond_0
    return-void
.end method

.method public applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;)V
    .locals 0

    return-void
.end method

.method public applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0

    return-void
.end method

.method public arrangeSplitWindow()V
    .locals 0

    return-void
.end method

.method public arrangeToolkitWindowInfos(IILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    return-void
.end method

.method public arrangeWindowInfo(ILandroid/os/Bundle;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    const/high16 v2, 0x100

    if-ne v0, v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    and-int/lit8 v2, p1, 0xf

    if-eqz v2, :cond_2

    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_1

    :try_start_1
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public arrangeWindowInfos(IILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-static {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    and-int/lit16 v6, p1, 0x80

    if-eqz v6, :cond_0

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    :cond_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public calculateCenterbarPoint(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Point;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .locals 7

    const/high16 v6, 0x3f00

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowRects()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_0
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_1
    and-int/lit8 v4, p1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportFixedSplitView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v4, v4, 0x70

    if-eqz v4, :cond_5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sget v5, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v3, v4

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sget v5, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v1, v4

    and-int/lit8 v4, p1, 0xf

    if-eqz v4, :cond_5

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v3, :cond_4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v3, v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    :cond_4
    :goto_0
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v1, :cond_5

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    :cond_5
    :goto_1
    return-object v2

    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v3, :cond_4

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v1, :cond_5

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v1, v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method public checkBehaviorBasedLaunch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    return v0
.end method

.method public checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public checkIgnoreIntentWindowMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    return v0
.end method

.method public checkSupportAllApps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    return v0
.end method

.method public checkWindowInfos(Ljava/util/ArrayList;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    const/4 v8, 0x0

    if-nez p1, :cond_0

    move-object v5, v8

    :goto_0
    return-object v5

    :cond_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_1

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v8

    goto :goto_0
.end method

.method public dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->initMinimizeInfo(Landroid/os/IBinder;)V

    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump MultiWindowManager from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "mCenterBarPoint = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_1
    const-string v10, "ArrangeState = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_2

    const-string v10, "ARRANGE_SPLITED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "Total MultiWindowServiceCallback size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_3
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_7

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    iget-object v10, v2, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    const-string v10, "null"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_2
    :try_start_1
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_3

    const-string v10, "ARRANGE_SPLITED3R"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_4

    const-string v10, "ARRANGE_SPLITED3L"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_5

    const-string v10, "ARRANGE_SPLITED4"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_6

    const-string v10, "ARRANGE_DEFINED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v10, "ARRANGE_UNDEFINED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "MinimizeCallback size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_8

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v10, v1, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "mWindowInfoMapByComponent size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v10, "No : "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v10, "mWindowInfoMapByTaskId size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v10, "No : "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public findDockingWindowZone(IIIII)I
    .locals 21

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowRects()V

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v12

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v11, 0x0

    if-gez p3, :cond_0

    const/16 p3, 0x0

    :cond_0
    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    move/from16 v3, p3

    iget v11, v4, Landroid/graphics/Point;->y:I

    :goto_0
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v14, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v14, v17

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v6, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v7, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v8, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x3

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v5, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x3

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x4

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x5

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v16, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    :sswitch_0
    move-object/from16 v2, v16

    array-length v10, v2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_c

    aget-object v15, v2, v9

    iget-object v13, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    add-int v17, p3, v12

    move/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_b

    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :goto_3
    return v17

    :cond_1
    move/from16 v3, p2

    iget v11, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    :sswitch_1
    move-object/from16 v16, v14

    goto :goto_1

    :sswitch_2
    if-nez p5, :cond_4

    move/from16 v0, p4

    if-le v3, v0, :cond_2

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_2

    move-object/from16 v16, v14

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v16, v5

    goto :goto_1

    :cond_3
    move-object/from16 v16, v14

    goto :goto_1

    :cond_4
    move-object/from16 v16, v14

    goto :goto_1

    :sswitch_3
    if-nez p5, :cond_6

    move/from16 v0, p4

    if-le v3, v0, :cond_5

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_5

    move-object/from16 v16, v14

    goto :goto_1

    :cond_5
    move-object/from16 v16, v5

    goto :goto_1

    :cond_6
    move-object/from16 v16, v6

    goto :goto_1

    :sswitch_4
    if-nez p5, :cond_8

    move/from16 v0, p4

    if-le v3, v0, :cond_7

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_7

    move-object/from16 v16, v14

    goto :goto_1

    :cond_7
    move-object/from16 v16, v5

    goto :goto_1

    :cond_8
    move-object/from16 v16, v7

    goto :goto_1

    :sswitch_5
    if-nez p5, :cond_a

    move/from16 v0, p4

    if-le v3, v0, :cond_9

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_9

    move-object/from16 v16, v14

    goto/16 :goto_1

    :cond_9
    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_a
    move-object/from16 v16, v8

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_c
    const/16 v17, 0x0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method public getAppListPosition()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppListPosition:I

    return v0
.end method

.method public getArrangeState()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentLaunchMode()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 26

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050111

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    const/4 v15, 0x0

    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v15

    if-eqz v10, :cond_3

    const-string v20, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v6, v0

    :cond_0
    const-string v20, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v4, v0

    :cond_1
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    :cond_2
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v6, v0, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    :cond_5
    if-eqz v4, :cond_6

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v4, v0, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    sub-int v13, v20, v16

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    sub-int v11, v20, v16

    :cond_9
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v20, v20, v6

    shr-int/lit8 v9, v20, 0x1

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    sub-int v20, v20, v4

    shr-int/lit8 v20, v20, 0x1

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v21

    add-int v17, v20, v21

    new-instance v19, Landroid/graphics/Rect;

    add-int v20, v9, v6

    add-int v21, v17, v4

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    add-int v20, v9, v13

    add-int v21, v17, v11

    move/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v14, v9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    const-string v20, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v20, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v20, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    new-instance v21, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v25, v0

    invoke-direct/range {v21 .. v25}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v18

    :cond_a
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public getMinimizeIconState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    return v0
.end method

.method public getMultiDisplayState()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMultiDisplayTarget()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")I"
        }
    .end annotation

    if-eqz p2, :cond_0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    :cond_1
    and-int/lit8 v3, v2, 0xf

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v5

    return v0

    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getResumedTaskCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    :goto_1
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    return v2

    :cond_1
    if-eqz p2, :cond_0

    iget-object v4, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget v4, p2, Lcom/android/server/am/TaskRecord;->userId:I

    goto :goto_1

    :cond_3
    const/4 v4, -0x2

    goto :goto_1
.end method

.method public getVisibleArrangeState()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mVisibleArrangeState:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 6

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    monitor-exit v4

    :goto_0
    return-object v2

    :cond_1
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public handleDisplayRemoved(I)V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public init()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultSupportedAppList()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftY:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    return-void
.end method

.method public isEmptyZone(Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isFixedRatioApp(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/am/MultiWindowManagerService;->isSupportApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.support.multiwindow"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "fullscreenOnly"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    return v2
.end method

.method public isSupportPopup(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.sec.android.app.popupuireceiver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.providers.downloads.ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.popupwindow.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "freestyleOnly"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public launchExternalDisplay(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public loadDefaultSupportedAppList()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1070052

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object v2, v10

    array-length v8, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v9, v2, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x107005a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object v2, v14

    array-length v8, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v13, v2, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1070053

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object v2, v12

    array-length v8, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v11, v2, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v15

    :cond_2
    const/4 v3, 0x0

    if-eqz v3, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    const-string v15, ","

    throw v3

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    throw v4

    move-result-object v7

    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v15, "-"

    throw v1

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    throw v1

    move-result-object v1

    move-object/from16 v0, p0

    throw v0

    throw v15

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    throw v0

    throw v15

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    throw v0

    throw v15

    move-result v15

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    throw v0

    throw v15

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    if-eqz v5, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    const-string v15, ","

    throw v5

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    throw v6

    move-result-object v7

    :cond_6
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v15, "-"

    throw v1

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    throw v1

    move-result-object v1

    move-object/from16 v0, p0

    throw v0

    throw v15

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    throw v0

    throw v15

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    throw v0

    throw v15

    move-result v15

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    throw v0

    throw v15

    goto :goto_4

    :cond_8
    return-void
.end method

.method public loadDefaultWindowInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    return-void
.end method

.method public minimizeAll()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAll(Ljava/lang/String;)V

    return-void
.end method

.method public notifyMultiDisplayState(ZZ)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const-string v0, "MultiWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send broadcast intent  ACTION_NOTIFY_MULTIDISPLAY_STATUS mIsMultiDisplay set as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$4;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    iget-object v5, v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;-><init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/IBinder;ILandroid/os/IBinder;)V

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-ne p2, v4, :cond_3

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/MultiWindowManagerService;->addMinimizeCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V

    :cond_3
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removeWindowInfo(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWindowInfoByComponent(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rotateCenterBar(I)V
    .locals 3

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->applyCenterBarDocking(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppListPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppListPosition:I

    return-void
.end method

.method public setCenterBarDirection(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    return-void
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMinimizeStackedIcon()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMultiDisplayState(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMultiDisplayTarget(I)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setToolkitRect(Landroid/graphics/Rect;)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    if-nez v1, :cond_3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    :cond_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    if-nez v1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    goto :goto_0
.end method

.method public skipFullScreenCheck(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Lcom/android/server/am/MultiWindowManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiWindowManagerService$1;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/am/MultiWindowManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiWindowManagerService$2;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public unRegisterCallback(Landroid/os/IBinder;)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    iget-object v4, v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizeCallback(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updateArrangeState(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    iput v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    const/high16 v10, 0x100

    if-eq v6, v10, :cond_0

    const/high16 v10, 0x200

    if-ne v6, v10, :cond_0

    and-int/lit8 v9, v7, 0xf

    if-eqz v9, :cond_0

    and-int/lit8 v0, v0, -0x4

    const/4 v10, 0x3

    if-nez v10, :cond_1

    if-nez v5, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_1
    if-nez v11, :cond_2

    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v0, v0, 0x20

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x4

    if-nez v10, :cond_0

    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v0, v0, 0x10

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    and-int/lit8 v10, v0, 0x10

    if-eqz v10, :cond_7

    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_7

    const/16 v10, 0x40

    iput v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    :cond_4
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {p0, v1, v10}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiDisplayState(ZZ)Z

    :cond_5
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    iget v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    if-eq v10, v11, :cond_8

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    iget v10, v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mType:I

    if-nez v10, :cond_6

    iget-object v10, v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-static {v10}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;

    move-result-object v2

    :try_start_0
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    invoke-interface {v2, v10}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;->onArrangeStateUpdate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v10

    goto :goto_2

    :cond_7
    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    goto :goto_1

    :cond_8
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    iput v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    return v10
.end method

.method public updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    return-void
.end method

.method public updateSplitZoneAfterDestroy(Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p3, :cond_0

    :try_start_0
    const-string v2, "MultiWindowManagerService"

    const-string/jumbo v4, "updateWindowInfo: failed due because winInfo is null."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

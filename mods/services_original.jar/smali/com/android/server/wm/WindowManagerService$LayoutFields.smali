.class Lcom/android/server/wm/WindowManagerService$LayoutFields;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutFields"
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2


# instance fields
.field private mButtonBrightness:F

.field private mButtonLightTimeout:J

.field mDisplayHasContent:Z

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field mObscureApplicationContentOnSecondaryDisplays:Z

.field private mObscured:Z

.field mOrientationChangeComplete:Z

.field private mScreenBrightness:F

.field private mScreenDimDuration:J

.field private mSyswin:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, -0x4080

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    iput v4, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    iput v4, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    iput-wide v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    iput-wide v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenDimDuration:J

    iput-wide v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonLightTimeout:J

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscureApplicationContentOnSecondaryDisplays:Z

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenDimDuration:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenDimDuration:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonLightTimeout:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonLightTimeout:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return p1
.end method

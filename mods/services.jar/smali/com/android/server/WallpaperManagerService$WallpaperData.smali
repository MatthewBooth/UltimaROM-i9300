.class Lcom/android/server/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation


# instance fields
.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

.field height:I

.field imageWallpaperPending:Z

.field lastDiedTime:J

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field userId:I

.field wallpaperComponent:Landroid/content/ComponentName;

.field wallpaperFile:Ljava/io/File;

.field wallpaperObserver:Lcom/android/server/WallpaperManagerService$WallpaperObserver;

.field wallpaperUpdating:Z

.field width:I


# direct methods
.method constructor <init>(I)V
    .locals 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    iput v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    iput v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    iput p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    new-instance v0, Ljava/io/File;

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

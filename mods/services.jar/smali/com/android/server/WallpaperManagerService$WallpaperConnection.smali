.class Lcom/android/server/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mDimensionsChanged:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mInfo:Landroid/app/WallpaperInfo;

.field mReply:Landroid/os/IRemoteCallback;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final mToken:Landroid/os/Binder;

.field mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z

    iput-object p2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    iput-object p3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 5

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-boolean v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->width:I

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget v4, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->height:I

    invoke-interface {v1, v3, v4}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z

    :cond_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "WallpaperService"

    const-string v3, "Failed to set wallpaper dimensions"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v3, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    :try_start_1
    const-string v3, "WallpaperService"

    const-string/jumbo v5, "user switch sendResult in engineShown"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    :cond_0
    monitor-exit v4

    return-void

    :catch_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/WallpaperManagerService$WallpaperConnection;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    const/4 v3, 0x1

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/server/WallpaperManagerService;->access$300(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;Z)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    const-string v0, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper service gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-boolean v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-wide v2, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v2, v2, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v2, :cond_0

    const-string v0, "WallpaperService"

    const-string v2, "Reverting to built-in wallpaper!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

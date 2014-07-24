.class Lcom/android/server/WallpaperManagerService$PersonaObserver;
.super Landroid/content/pm/IPersonaObserver$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field private mContainerId:I

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPersonaObserver$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    iput p2, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    return-void
.end method


# virtual methods
.method public onFirstBoot()V
    .locals 2

    const-string v0, "WallpaperService"

    const-string v1, "PersonaObserver.onFirstBoot()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInit()V
    .locals 2

    const-string v0, "WallpaperService"

    const-string v1, "PersonaObserver.onInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyGuardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPersonaSwitch()V
    .locals 4

    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PersonaObserver.onPersonaSwitch() handler container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSessionExpired()V
    .locals 2

    const-string v0, "WallpaperService"

    const-string v1, "PersonaObserver.onSessionExpired()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStateChange(II)V
    .locals 0

    return-void
.end method

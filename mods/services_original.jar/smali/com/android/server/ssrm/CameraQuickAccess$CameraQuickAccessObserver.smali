.class Lcom/android/server/ssrm/CameraQuickAccess$CameraQuickAccessObserver;
.super Landroid/database/ContentObserver;
.source "CameraQuickAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CameraQuickAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraQuickAccessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CameraQuickAccess;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CameraQuickAccess;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ssrm/CameraQuickAccess$CameraQuickAccessObserver;->this$0:Lcom/android/server/ssrm/CameraQuickAccess;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v1, p0, Lcom/android/server/ssrm/CameraQuickAccess$CameraQuickAccessObserver;->this$0:Lcom/android/server/ssrm/CameraQuickAccess;

    iget-object v1, v1, Lcom/android/server/ssrm/CameraQuickAccess;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "camera_quick_access"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "SSRMv2:CameraQuickAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_deepsleep_mode,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->updateTouchBooster(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

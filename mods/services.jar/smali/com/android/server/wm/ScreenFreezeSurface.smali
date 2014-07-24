.class public Lcom/android/server/wm/ScreenFreezeSurface;
.super Ljava/lang/Object;
.source "ScreenFreezeSurface.java"


# instance fields
.field final mLayer:I

.field mLeft:I

.field final mSurface:Landroid/view/SurfaceControl;

.field mTop:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/SurfaceControl$OutOfResourcesException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mLeft:I

    iput p4, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mTop:I

    iput p2, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mLayer:I

    sub-int v3, p5, p3

    sub-int v4, p6, p4

    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "ScreenFreezeSurface"

    const/4 v5, -0x1

    const/4 v6, 0x4

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    invoke-virtual {v7}, Landroid/view/Surface;->destroy()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const v1, 0x3f7d70a4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p7}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayer(I)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    return-void
.end method

.method public kill()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

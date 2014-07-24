.class Lcom/android/server/display/IpRemoteDisplayController$11;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$connectedMode:I

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$oldSurface:Landroid/view/Surface;

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$width:I

    iput p7, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$height:I

    iput p8, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$flags:I

    iput p9, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$connectedMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1100(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayDisconnected()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_1

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use surface on WFD !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1100(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$surface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$width:I

    iget v4, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$height:I

    iget v5, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$flags:I

    iget v6, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$connectedMode:I

    invoke-interface/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IpRemoteDisplayController"

    const-string v1, "advertiseDisplay failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$11;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    #getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1100(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayConnectionFailed()V

    goto :goto_0
.end method

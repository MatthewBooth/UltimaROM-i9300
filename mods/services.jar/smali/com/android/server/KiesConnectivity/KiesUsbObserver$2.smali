.class Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;
.super Landroid/content/BroadcastReceiver;
.source "KiesUsbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "connected"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "configured"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "mtp"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "mass_storage"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, -0x1

    const-string/jumbo v8, "sys.usb.config"

    const-string v9, "none"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUsbMode() -> sys.usb.config : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUsbMode() -> bCDFS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const-string v8, "mass_storage"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "mass_storage,adb"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v7, 0x1

    const/16 v6, 0x7d0

    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    #calls: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v8, v7, v6}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    #getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v8}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    #getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v8}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->startCDFSEjectTimer()V

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "startCDFSEjectTimer"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    #getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v8}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v7, 0x0

    const/16 v6, 0x7d0

    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    #calls: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v8, v7, v6}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    #getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v8}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "stopCDFSEjectTimer"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

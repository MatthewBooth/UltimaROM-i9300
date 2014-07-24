.class Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;
.super Landroid/os/UEventObserver;
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

    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6

    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    #calls: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->getUsbMode()I
    invoke-static {v3}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$300(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)I

    move-result v1

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCDFSEventObjserver -> state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", usbMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "time stop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1388

    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    #calls: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v3, v2, v1}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "time reset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x1770

    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    #calls: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v3, v2, v1}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    goto :goto_0

    :cond_2
    const-string v3, "Load AT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v2, 0x1b58

    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    #calls: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v3, v2, v1}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "USB message -Load AT"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v3, "Load User"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x1f40

    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    #calls: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v3, v2, v1}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "USB message -Load User"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

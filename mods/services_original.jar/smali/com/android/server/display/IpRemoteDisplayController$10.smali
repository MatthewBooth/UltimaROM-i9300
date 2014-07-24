.class Lcom/android/server/display/IpRemoteDisplayController$10;
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


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$10;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$10;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v1, 0x0

    const/4 v2, 0x4

    #calls: Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$1200(Lcom/android/server/display/IpRemoteDisplayController;II)V

    return-void
.end method

.class Lcom/android/server/enterprise/geofencing/GeofenceService$1;
.super Landroid/content/BroadcastReceiver;
.source "GeofenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

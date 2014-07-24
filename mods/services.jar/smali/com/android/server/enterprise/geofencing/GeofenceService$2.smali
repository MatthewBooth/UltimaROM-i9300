.class Lcom/android/server/enterprise/geofencing/GeofenceService$2;
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

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iput v6, v2, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    const-string v6, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "android.intent.extra.user_handle"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$500(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "ADMIN"

    const-string v8, "adminUid"

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #calls: Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V
    invoke-static {v6, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$600(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    goto :goto_0
.end method

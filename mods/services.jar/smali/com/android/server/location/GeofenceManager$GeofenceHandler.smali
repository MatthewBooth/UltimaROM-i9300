.class final Lcom/android/server/location/GeofenceManager$GeofenceHandler;
.super Landroid/os/Handler;
.source "GeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeofenceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GeofenceManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/GeofenceManager;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$GeofenceHandler;->this$0:Lcom/android/server/location/GeofenceManager;

    #calls: Lcom/android/server/location/GeofenceManager;->updateFences()V
    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->access$000(Lcom/android/server/location/GeofenceManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

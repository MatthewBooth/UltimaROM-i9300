.class Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$1;
.super Landroid/os/Handler;
.source "AbsAirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$1;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$1;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$1;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

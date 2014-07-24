.class Lcom/android/server/ssrm/fgapps/tsp/PassivePen$1;
.super Landroid/os/Handler;
.source "PassivePen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/tsp/PassivePen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/tsp/PassivePen;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/tsp/PassivePen;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen$1;->this$0:Lcom/android/server/ssrm/fgapps/tsp/PassivePen;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen$1;->this$0:Lcom/android/server/ssrm/fgapps/tsp/PassivePen;

    iget v0, v0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;->mLastValue:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SSRMv2:TSP:PassivePen"

    const-string/jumbo v1, "stylus_enable,1"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

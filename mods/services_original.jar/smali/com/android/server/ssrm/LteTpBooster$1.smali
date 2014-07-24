.class Lcom/android/server/ssrm/LteTpBooster$1;
.super Landroid/content/BroadcastReceiver;
.source "LteTpBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/LteTpBooster;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/LteTpBooster;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/LteTpBooster;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/LteTpBooster$1;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/ssrm/LteTpBooster$1;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    #setter for: Lcom/android/server/ssrm/LteTpBooster;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2, v1}, Lcom/android/server/ssrm/LteTpBooster;->access$102(Lcom/android/server/ssrm/LteTpBooster;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster$1;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    #setter for: Lcom/android/server/ssrm/LteTpBooster;->mContext:Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/android/server/ssrm/LteTpBooster;->access$202(Lcom/android/server/ssrm/LteTpBooster;Landroid/content/Context;)Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster$1;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    #getter for: Lcom/android/server/ssrm/LteTpBooster;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/ssrm/LteTpBooster;->access$100(Lcom/android/server/ssrm/LteTpBooster;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/ssrm/LteTpBooster$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v2, p0, Lcom/android/server/ssrm/LteTpBooster$1;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    #getter for: Lcom/android/server/ssrm/LteTpBooster;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/ssrm/LteTpBooster;->access$100(Lcom/android/server/ssrm/LteTpBooster;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "LteTpBooster"

    const-string v2, "MOBILE CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster$1;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    #getter for: Lcom/android/server/ssrm/LteTpBooster;->mTrafficHandler:Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;
    invoke-static {v1}, Lcom/android/server/ssrm/LteTpBooster;->access$300(Lcom/android/server/ssrm/LteTpBooster;)Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;

    move-result-object v1

    invoke-static {v1, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_1
    const-string v1, "LteTpBooster"

    const-string v2, "MOBILE DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/LteTpBooster$1;->this$0:Lcom/android/server/ssrm/LteTpBooster;

    #getter for: Lcom/android/server/ssrm/LteTpBooster;->mTrafficHandler:Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;
    invoke-static {v1}, Lcom/android/server/ssrm/LteTpBooster;->access$300(Lcom/android/server/ssrm/LteTpBooster;)Lcom/android/server/ssrm/LteTpBooster$TrafficHandler;

    move-result-object v1

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/android/server/RegulatoryObserver$1;
.super Landroid/os/Handler;
.source "RegulatoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RegulatoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RegulatoryObserver;


# direct methods
.method constructor <init>(Lcom/android/server/RegulatoryObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RegulatoryObserver$1;->this$0:Lcom/android/server/RegulatoryObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/RegulatoryObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast intent for crda country code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/RegulatoryObserver$1;->this$0:Lcom/android/server/RegulatoryObserver;

    #getter for: Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/RegulatoryObserver;->access$100(Lcom/android/server/RegulatoryObserver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "crda.custom.intent.action.COUNTRY_CODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/RegulatoryObserver$1;->this$0:Lcom/android/server/RegulatoryObserver;

    #getter for: Lcom/android/server/RegulatoryObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/RegulatoryObserver;->access$200(Lcom/android/server/RegulatoryObserver;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

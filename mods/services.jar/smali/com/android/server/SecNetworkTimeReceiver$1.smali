.class Lcom/android/server/SecNetworkTimeReceiver$1;
.super Ljava/lang/Object;
.source "SecNetworkTimeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecNetworkTimeReceiver;->SecUpdateNetworkTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecNetworkTimeReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/SecNetworkTimeReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SecNetworkTimeReceiver$1;->this$0:Lcom/android/server/SecNetworkTimeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    #calls: Lcom/android/server/SecNetworkTimeReceiver;->sec_update_networktime(J)V
    invoke-static {v0, v1}, Lcom/android/server/SecNetworkTimeReceiver;->access$000(J)V

    return-void
.end method

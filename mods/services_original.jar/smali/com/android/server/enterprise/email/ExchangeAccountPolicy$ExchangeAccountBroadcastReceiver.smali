.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExchangeAccountBroadcastReceiver"
.end annotation


# instance fields
.field public mHaveResult:Z

.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->mHaveResult:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->mHaveResult:Z

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

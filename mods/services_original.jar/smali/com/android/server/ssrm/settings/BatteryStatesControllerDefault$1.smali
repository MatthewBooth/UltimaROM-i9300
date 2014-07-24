.class Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$1;
.super Landroid/os/Handler;
.source "BatteryStatesControllerDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->createHandler(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$1;->this$0:Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;

    invoke-direct {v1, v0}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;-><init>(Landroid/os/Message;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

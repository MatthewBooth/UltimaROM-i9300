.class Lcom/android/server/palmMotion/PalmMotionService$3;
.super Landroid/content/BroadcastReceiver;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/palmMotion/PalmMotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/palmMotion/PalmMotionService;


# direct methods
.method constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$3;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "ResponseAxT9Info"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$3;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/android/server/palmMotion/PalmMotionService;->mUseGestureDetectorTouchEventEx:Z
    invoke-static {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService;->access$302(Lcom/android/server/palmMotion/PalmMotionService;Z)Z

    :cond_0
    return-void
.end method

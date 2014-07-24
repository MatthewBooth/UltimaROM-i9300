.class final Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method private constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #setter for: Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v4, v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    :cond_0
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #calls: Lcom/android/server/AdaptiveDisplayColorService;->boot_complete()V
    invoke-static {v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$200(Lcom/android/server/AdaptiveDisplayColorService;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #setter for: Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v4, v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    :cond_3
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #calls: Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_on_intent()V
    invoke-static {v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$300(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    :cond_4
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #calls: Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_off_intent()V
    invoke-static {v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$400(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    :cond_5
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #setter for: Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v3, v4}, Lcom/android/server/AdaptiveDisplayColorService;->access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    goto :goto_0

    :cond_6
    const-string v5, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    const-string v5, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z
    invoke-static {v3, v4}, Lcom/android/server/AdaptiveDisplayColorService;->access$502(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    goto :goto_0

    :cond_7
    const-string v5, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v3, "reason"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_8
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #calls: Lcom/android/server/AdaptiveDisplayColorService;->emergency_mode_changed_intent()V
    invoke-static {v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$600(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    :cond_9
    const-string v5, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_a

    :goto_1
    #setter for: Lcom/android/server/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z
    invoke-static {v5, v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$702(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #calls: Lcom/android/server/AdaptiveDisplayColorService;->receive_ebookmode_intent()V
    invoke-static {v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$800(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto/16 :goto_0

    :cond_a
    move v3, v4

    goto :goto_1
.end method

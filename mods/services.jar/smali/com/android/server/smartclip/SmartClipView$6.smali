.class Lcom/android/server/smartclip/SmartClipView$6;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_quick_note"

    const/4 v8, -0x2

    invoke-static {v6, v7, v3, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    :cond_0
    #setter for: Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v5, v3}, Lcom/android/server/smartclip/SmartClipView;->access$1502(Lcom/android/server/smartclip/SmartClipView;Z)Z

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$1600(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$1500(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$1700(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "SmartClipView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Double tap is disable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$1500(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$1700(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :try_start_0
    const-string v3, "SmartClipView"

    const-string v5, "Double tapped!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.PEN_GESTURE_PENMEMO_ACTION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v3, v5}, Lcom/android/server/smartclip/SmartClipView;->access$1802(Lcom/android/server/smartclip/SmartClipView;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$1800(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$1900(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$2000(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$2000(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    :cond_3
    if-eq v0, v4, :cond_4

    if-eq v0, v9, :cond_4

    if-eq v1, v4, :cond_4

    if-ne v1, v9, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.spengesture.DOUBLE_TAB"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2100(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.class public Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SsrmPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onCallStateChanged:: CALL_STATE_IDLE"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    iput-boolean v3, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onCallStateChanged:: CALL_STATE_RINGING"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    iput-boolean v3, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onCallStateChanged:: CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;->this$0:Lcom/android/server/ssrm/Monitor;

    iput-boolean v4, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    goto :goto_0
.end method

.class Lcom/android/server/am/MultiWindowFacadeService$1;
.super Landroid/telephony/PhoneStateListener;
.source "MultiWindowFacadeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowFacadeService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowFacadeService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowFacadeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService$1;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService$1;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    iget-object v0, v0, Lcom/android/server/am/MultiWindowFacadeService;->mHandler:Lcom/android/server/am/MultiWindowFacadeService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService$1;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowFacadeService;->mHandler:Lcom/android/server/am/MultiWindowFacadeService$H;

    const-string v2, "com.android.phone"

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

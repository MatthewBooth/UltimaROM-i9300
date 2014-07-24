.class Lcom/android/server/ssrm/TouchSeparation$1;
.super Landroid/os/Handler;
.source "TouchSeparation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/TouchSeparation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/TouchSeparation;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/TouchSeparation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/TouchSeparation$1;->this$0:Lcom/android/server/ssrm/TouchSeparation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "SSRMv2:TouchSeparation"

    const-string v1, "handleMessage() ++"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation$1;->this$0:Lcom/android/server/ssrm/TouchSeparation;

    invoke-virtual {v0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchMode()V

    return-void
.end method

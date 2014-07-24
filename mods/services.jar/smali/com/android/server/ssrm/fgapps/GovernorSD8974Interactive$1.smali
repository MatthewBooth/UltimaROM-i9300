.class Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;
.super Landroid/os/Handler;
.source "GovernorSD8974Interactive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "MSG_KNOWN_GAME_FOREGROUND"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ssrm/HotGameList;->isKnownGame(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateModeChangeParameters()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

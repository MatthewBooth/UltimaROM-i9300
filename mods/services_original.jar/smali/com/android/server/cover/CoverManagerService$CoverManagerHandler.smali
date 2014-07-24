.class final Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
.super Landroid/os/Handler;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    #calls: Lcom/android/server/cover/CoverManagerService;->handleSendCoverState(Lcom/samsung/android/cover/CoverState;)V
    invoke-static {v1, v0}, Lcom/android/server/cover/CoverManagerService;->access$000(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    #calls: Lcom/android/server/cover/CoverManagerService;->handleHideSViewCover()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$100(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    #calls: Lcom/android/server/cover/CoverManagerService;->handleShowSViewCover()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$200(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    #calls: Lcom/android/server/cover/CoverManagerService;->handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V
    invoke-static {v1, v0}, Lcom/android/server/cover/CoverManagerService;->access$300(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    #calls: Lcom/android/server/cover/CoverManagerService;->handleStartFreezeScreen()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$400(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    #calls: Lcom/android/server/cover/CoverManagerService;->handleStopFreezeScreen()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$500(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    const/4 v1, 0x1

    #calls: Lcom/android/server/cover/CoverManagerService;->handleSetPartialScreen(Z)V
    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerService;->access$600(Lcom/android/server/cover/CoverManagerService;Z)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/cover/CoverManagerService;->handleSetPartialScreen(Z)V
    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerService;->access$600(Lcom/android/server/cover/CoverManagerService;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

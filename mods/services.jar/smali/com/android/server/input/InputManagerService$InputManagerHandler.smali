.class final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/view/InputDevice;

    check-cast v0, [Landroid/view/InputDevice;

    #calls: Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #calls: Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$500(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #calls: Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$000(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #calls: Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.class final Lcom/android/server/am/MultiWindowFacadeService$H;
.super Landroid/os/Handler;
.source "MultiWindowFacadeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowFacadeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final MSG_MINIMIZE_ALL:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowFacadeService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowFacadeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService$H;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

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
    const-string v0, "MultiWindowFacade"

    const-string v1, "MSG_MINIMIZE_ALL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService$H;->this$0:Lcom/android/server/am/MultiWindowFacadeService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowFacadeService;->minimizeAll(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

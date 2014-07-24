.class final Lcom/android/server/am/MultiWindowManagerService$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final MSG_MINIMIZE_ALL:I = 0x3

.field private static final MSG_MINIMIZE_EXPANDED_ICON:I = 0x1

.field private static final MSG_MINIMIZE_STACKED_ICON:I = 0x2

.field private static final MSG_RELAUNCH_ALL_EXTERNAL_ACTIVITY:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v5, v5, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz v4, :cond_0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v6, 0x1

    #setter for: Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I
    invoke-static {v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->access$502(Lcom/android/server/am/MultiWindowManagerService;I)I

    goto :goto_0

    :sswitch_1
    if-eqz v4, :cond_0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I
    invoke-static {v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->access$502(Lcom/android/server/am/MultiWindowManagerService;I)I

    goto :goto_0

    :sswitch_2
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    #calls: Lcom/android/server/am/MultiWindowManagerService;->minimizeAll(Ljava/lang/String;)V
    invoke-static {v6, v5}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

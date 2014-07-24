.class Lcom/android/server/analytics/data/collection/input/InputEventDataCollector$InternalHandler;
.super Landroid/os/Handler;
.source "InputEventDataCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalHandler"
.end annotation


# static fields
.field public static final MSG_PROCESS_INPUT_LOG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector$InternalHandler;->this$0:Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector$InternalHandler;->this$0:Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;

    #getter for: Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mInstance:Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->access$000(Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;)Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->processInputEventLog(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->access$100(Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

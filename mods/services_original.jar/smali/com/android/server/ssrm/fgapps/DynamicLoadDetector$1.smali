.class Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$1;
.super Landroid/os/Handler;
.source "DynamicLoadDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->scheduleMonitoring(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->onLoadDetected(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->scheduleMonitoring(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$1;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->scheduleMonitoring(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class Lcom/android/server/am/MultiWindowManagerService$3;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "MultiWindowManagerService"

    const-string v6, "mShiftPosition mCurrMovements.size=0 reuturn"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$100(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$100(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$100(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v6, v0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    iput v6, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v6, v0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    iput v6, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v5, v5, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_3

    const-string v5, "MultiWindowManagerService"

    const-string v6, "mShiftPosition mMinimizeCallbacks and mCurrMovements are size different"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-lez v1, :cond_8

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v5, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v5, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v5, v5, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v4, v5, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iput v8, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iput v8, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    :cond_5
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v5, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v6, v6, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    const/4 v2, 0x1

    :cond_6
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v5, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v6, v6, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    iput v6, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    const/4 v2, 0x1

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v5, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v5, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_a

    :cond_9
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iput v8, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iput v8, v5, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    :cond_a
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z
    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$300(Lcom/android/server/am/MultiWindowManagerService;)Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v2, :cond_0

    :cond_b
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v5, v5, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v6, v6, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

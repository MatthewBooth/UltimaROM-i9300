.class Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v14, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z
    invoke-static {v10, v14}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    :try_start_0
    const-string v10, "SPenGesture"

    const-string v11, "mSPenGestureCropDispatchThread run!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_0

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v0, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    :cond_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_4

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_5

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    :cond_3
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    :cond_4
    :goto_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, 0xa

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, 0xa

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sub-int/2addr v11, v12

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sub-int/2addr v11, v12

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    const-wide/16 v10, 0x64

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->IsKnoxRunning()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/high16 v11, -0x4080

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/high16 v11, -0x4080

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, 0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$1002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v10, v10, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mToastHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    :goto_1
    return-void

    :cond_5
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget v11, v1, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    goto :goto_1

    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #calls: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_7

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_7
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_8

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_8
    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v13

    invoke-direct {v7, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v9, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_9

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_b

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F

    move-result v11

    const/high16 v12, 0x4100

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F

    move-result v11

    const/high16 v12, 0x4080

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v10

    if-ne v10, v14, :cond_a

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4100

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4080

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_a
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v9, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v9, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->reset()V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, -0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/high16 v11, -0x4080

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/high16 v11, -0x4080

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, 0x1

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$3402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$5402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I

    new-instance v10, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10$1;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;)V

    const-wide/16 v11, 0x64

    invoke-virtual {v6, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$7700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_1

    :cond_b
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4100

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$4900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4080

    iget-object v13, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static {v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$6500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

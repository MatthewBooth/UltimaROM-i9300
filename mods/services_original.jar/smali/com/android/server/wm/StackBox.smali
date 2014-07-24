.class public Lcom/android/server/wm/StackBox;
.super Ljava/lang/Object;
.source "StackBox.java"


# static fields
.field public static final TASK_STACK_GOES_ABOVE:I = 0x4

.field public static final TASK_STACK_GOES_AFTER:I = 0x1

.field public static final TASK_STACK_GOES_BEFORE:I = 0x0

.field public static final TASK_STACK_GOES_BELOW:I = 0x5

.field public static final TASK_STACK_GOES_OVER:I = 0x6

.field public static final TASK_STACK_GOES_UNDER:I = 0x7

.field public static final TASK_STACK_TO_LEFT_OF:I = 0x2

.field public static final TASK_STACK_TO_RIGHT_OF:I = 0x3

.field static sCurrentBoxId:I


# instance fields
.field layoutNeeded:Z

.field mBounds:Landroid/graphics/Rect;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mFirst:Lcom/android/server/wm/StackBox;

.field mLastIsOutOfBounds:Z

.field mMinimizedRect:Landroid/graphics/Rect;

.field mParent:Lcom/android/server/wm/StackBox;

.field mSecond:Lcom/android/server/wm/StackBox;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mStackBoxId:I

.field final mStackBoxType:I

.field mStackBoxVisible:Z

.field mTmpRectFir:Landroid/graphics/Rect;

.field mTmpRectSec:Landroid/graphics/Rect;

.field mUnderStatusBar:Z

.field mVertical:Z

.field mWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->mLastIsOutOfBounds:Z

    const-class v1, Lcom/android/server/wm/StackBox;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    iput v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iput p4, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private checkFixedBound(Landroid/graphics/Rect;Z)Z
    .locals 17

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v15, v8, Landroid/graphics/Point;->x:I

    mul-int/lit8 v15, v15, 0x14

    div-int/lit8 v6, v15, 0x64

    iget v15, v8, Landroid/graphics/Point;->y:I

    mul-int/lit8 v15, v15, 0x14

    div-int/lit8 v1, v15, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/16 v2, 0x8

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v15, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v15}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    :goto_1
    if-eqz v12, :cond_2

    add-int/lit8 v14, v14, 0x1

    iget-object v12, v12, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-boolean v15, v15, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_b

    or-int/2addr v9, v5

    :cond_3
    :goto_2
    const/4 v7, 0x0

    and-int v15, v9, v3

    if-eqz v15, :cond_5

    if-nez p2, :cond_4

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v6

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->left:I

    :cond_4
    const/4 v7, 0x1

    :cond_5
    and-int v15, v9, v4

    if-eqz v15, :cond_7

    if-nez p2, :cond_6

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v6

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->right:I

    :cond_6
    const/4 v7, 0x1

    :cond_7
    and-int v15, v9, v5

    if-eqz v15, :cond_9

    if-nez p2, :cond_8

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->top:I

    :cond_8
    const/4 v7, 0x1

    :cond_9
    and-int v15, v9, v2

    if-eqz v15, :cond_0

    if-nez p2, :cond_a

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v1

    move-object/from16 v0, p1

    iput v15, v0, Landroid/graphics/Rect;->bottom:I

    :cond_a
    const/4 v7, 0x1

    goto :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_3

    or-int/2addr v9, v2

    goto :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_d

    or-int/2addr v9, v3

    goto :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_3

    or-int/2addr v9, v4

    goto :goto_2

    :cond_e
    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-boolean v15, v15, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_10

    or-int/2addr v9, v5

    const/4 v11, 0x1

    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_11

    or-int/2addr v9, v3

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_f

    or-int/2addr v9, v2

    const/4 v11, 0x1

    goto :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_3

    or-int/2addr v9, v4

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_14

    or-int/2addr v9, v3

    const/4 v11, 0x1

    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3e4ccccd

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-eqz v15, :cond_15

    or-int/2addr v9, v5

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_13

    or-int/2addr v9, v4

    const/4 v11, 0x1

    goto :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v15, v15, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget v15, v15, Lcom/android/server/wm/StackBox;->mWeight:F

    const v16, 0x3f4ccccd

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v15}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v15

    if-nez v15, :cond_3

    or-int/2addr v9, v2

    const/4 v10, 0x1

    goto/16 :goto_2
.end method

.method private getMinimizedRect()Landroid/graphics/Rect;
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mMinimizedRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method buildWeight()V
    .locals 7

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getFirstZone()Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v2, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v5, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v5, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iput-object v2, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    :cond_2
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    :goto_0
    if-eqz v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    move v4, v3

    :goto_1
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v5

    if-le v5, v3, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    :goto_2
    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    move v4, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x3f80

    :goto_3
    iput v5, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public checkFixedBound()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/StackBox;->checkFixedBound(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method close()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    goto :goto_0
.end method

.method contains(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mWeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mVertical="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mStackBoxType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " layoutNeeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFirst="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSecond="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;",
            "Lcom/android/server/wm/StackBox;",
            ")V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V

    :goto_1
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getAppStacks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->getAppStacks(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->getAppStacks(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getEnableSplitstackId(Lcom/samsung/android/multiwindow/MultiWindowStyle;)I
    .locals 9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v5, v7, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v7, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v7}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v5, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    :cond_2
    :goto_2
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_5

    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v5, v7, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_1

    :cond_4
    iget-object v5, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_2

    :cond_5
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_6

    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    :cond_6
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_0

    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_7

    if-eqz v1, :cond_0

    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_0

    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    if-nez v1, :cond_9

    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_8

    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    :cond_8
    move-object v3, v5

    :goto_3
    iget-object v7, v3, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_c

    iget-object v7, v3, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_d

    iget-object v6, v3, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v7}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    :goto_5
    iget-object v7, v2, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_b

    iget-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto/16 :goto_0

    :cond_a
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_5

    :cond_b
    move-object v3, v2

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    iget-object v7, v3, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, v7, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_0

    iget-object v6, v3, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v6, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRootStackBox()Lcom/android/server/wm/StackBox;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .locals 4

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/server/wm/StackBox;->getMinimizedRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getStackBounds(Lcom/android/server/wm/AppWindowToken;)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->getStackBounds(Lcom/android/server/wm/AppWindowToken;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackBounds(Lcom/android/server/wm/AppWindowToken;Z)Landroid/graphics/Rect;
    .locals 8

    const/4 v7, 0x3

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget-object v5, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    iget-object v6, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    :cond_2
    if-nez p1, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    if-ne v5, v7, :cond_6

    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTmpContentRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/StackBox;->getMinimizedRect()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    :goto_1
    if-eqz v1, :cond_7

    add-int/lit8 v4, v4, 0x1

    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v5

    sub-int v0, v4, v5

    if-lez v0, :cond_8

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v5, :cond_8

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_8

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    iget-object v5, v1, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    goto/16 :goto_0
.end method

.method getStackBoxForStackId(I)Lcom/android/server/wm/StackBox;
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne p1, v1, :cond_1

    move-object v0, p0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBoxForStackId(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBoxForStackId(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    goto :goto_0
.end method

.method getStackId()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->getStackIdRecv()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getStackIdRecv()Lcom/android/server/wm/Task;
    .locals 7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v6}, Lcom/android/server/wm/StackBox;->getStackIdRecv()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v6}, Lcom/android/server/wm/StackBox;->getStackIdRecv()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    :cond_3
    if-le v4, v3, :cond_4

    move-object v5, v1

    goto :goto_0

    :cond_4
    move-object v5, v0

    goto :goto_0
.end method

.method public getStackOriginalBound(Lcom/android/server/wm/AppWindowToken;)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/StackBox;->getStackBounds(Lcom/android/server/wm/AppWindowToken;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public hasIsolatedSplitStackBox()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle(Z)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final isApplicationStackBox()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimming()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method isFirstChild()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isFloatingStackBox()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/StackBox;->isFloatingStackBox(Z)Z

    move-result v0

    return v0
.end method

.method final isFloatingStackBox(Z)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isFrontStackBox()Z
    .locals 9

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, p0

    :goto_0
    iget-object v7, v5, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v7, :cond_0

    iget-object v5, v5, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/server/wm/DisplayContent;->getRootStackBox(I)Lcom/android/server/wm/StackBox;

    move-result-object v7

    if-eq v5, v7, :cond_2

    :cond_1
    :goto_1
    return v6

    :cond_2
    invoke-virtual {p0, v2, v5}, Lcom/android/server/wm/StackBox;->gatherLeafStackBox(Ljava/util/ArrayList;Lcom/android/server/wm/StackBox;)V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    iget-object v7, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    :goto_3
    if-eqz v3, :cond_1

    and-int v7, v4, v3

    if-eqz v7, :cond_3

    if-ge v4, v3, :cond_3

    goto :goto_1

    :cond_4
    move v4, v6

    goto :goto_2

    :cond_5
    move v3, v6

    goto :goto_3

    :cond_6
    const/4 v6, 0x1

    goto :goto_1
.end method

.method final isHiddenStackBox()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isHomeStackBox()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->makeDirty()V

    :cond_0
    return-void
.end method

.method remove()I
    .locals 8

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v6, v5, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, p0, v6}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;Z)Z

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/server/wm/DisplayContent;->getRootStackBox(I)Lcom/android/server/wm/StackBox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v5

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v4, v5, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v2, v5, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iput-object v2, v4, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-boolean v5, v5, Lcom/android/server/wm/StackBox;->mVertical:Z

    iput-boolean v5, v4, Lcom/android/server/wm/StackBox;->mVertical:Z

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/android/server/wm/StackBox;->mWeight:F

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/DisplayContent;->getAppTopLevelStackBoxIndex(Lcom/android/server/wm/StackBox;)I

    move-result v1

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/wm/DisplayContent;->addTopLevelStackBox(Lcom/android/server/wm/StackBox;I)V

    :goto_2
    invoke-virtual {v4}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v5

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v4, v5, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/DisplayContent;->addStackBox(Lcom/android/server/wm/StackBox;Z)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v5

    if-eqz v5, :cond_5

    iput-object v4, v2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_2

    :cond_5
    iput-object v4, v2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    goto :goto_2
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    goto :goto_0
.end method

.method resetDimming()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    goto :goto_0
.end method

.method resize(IF)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v1, p1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iput p2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_0

    :cond_3
    const/high16 v2, 0x3f80

    sub-float p2, v2, p2

    goto :goto_1
.end method

.method public resizeWeight(Z)Z
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v2, :cond_4

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    :cond_4
    :goto_3
    iget-object v2, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    return v2
.end method

.method reverseVerticalValue()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->reverseVerticalValue()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->reverseVerticalValue()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setStackBoxSizes(Landroid/graphics/Rect;Z)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    iget-boolean v7, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    if-eq v7, p2, :cond_0

    const/4 v0, 0x1

    iput-boolean p2, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v8

    :goto_0
    or-int/2addr v0, v7

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7, p1}, Lcom/android/server/wm/TaskStack;->isOutOfBoundsIncludeChild(Landroid/graphics/Rect;)Z

    move-result v5

    iget-boolean v7, p0, Lcom/android/server/wm/StackBox;->mLastIsOutOfBounds:Z

    if-ne v7, v5, :cond_1

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7, p2}, Lcom/android/server/wm/TaskStack;->needToChangeUnderStatusBarAllWindow(Z)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    move v7, v8

    :goto_1
    or-int/2addr v0, v7

    iput-boolean v5, p0, Lcom/android/server/wm/StackBox;->mLastIsOutOfBounds:Z

    invoke-direct {p0, p1, v8}, Lcom/android/server/wm/StackBox;->checkFixedBound(Landroid/graphics/Rect;Z)Z

    move-result v7

    or-int/2addr v0, v7

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->getRootStackBox()Lcom/android/server/wm/StackBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v3

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v7, :cond_7

    if-nez v3, :cond_7

    if-nez v5, :cond_7

    invoke-direct {p0, p1, v9}, Lcom/android/server/wm/StackBox;->checkFixedBound(Landroid/graphics/Rect;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/TaskStack;->setWindowFlagFixedBound(Z)V

    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Z)V

    :cond_3
    :goto_3
    return v0

    :cond_4
    move v7, v9

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7, v9}, Lcom/android/server/wm/TaskStack;->setWindowFlagFixedBound(Z)V

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-boolean v7, v7, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7, v9}, Lcom/android/server/wm/TaskStack;->setWindowFlagFixedBound(Z)V

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    :goto_4
    iget-boolean v7, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v7, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v7, v4

    iget v8, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v7, v8

    float-to-int v1, v7

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v8, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v7

    or-int/2addr v0, v7

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v8, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v7

    or-int/2addr v0, v7

    goto :goto_3

    :cond_9
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->getRootStackBox()Lcom/android/server/wm/StackBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/StackBox;->hasIsolatedSplitStackBox()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mIsolatedWeightList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_4

    :cond_b
    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mWeightList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v7, v6

    iget v8, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v7, v8

    float-to-int v2, v7

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v2

    iput v8, v7, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v8, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v7

    or-int/2addr v0, v7

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/StackBox;->mTmpRectFir:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iput v8, v7, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    iput v8, v7, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v8, p0, Lcom/android/server/wm/StackBox;->mTmpRectSec:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v7

    or-int/2addr v0, v7

    goto/16 :goto_3
.end method

.method split(IIIF)Lcom/android/server/wm/TaskStack;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    iget v4, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v4, p2, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_1

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v4, p1, v5}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    if-nez p3, :cond_4

    const/4 p3, 0x2

    :cond_3
    :goto_1
    packed-switch p3, :pswitch_data_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    const/4 v4, 0x2

    if-ne p3, v4, :cond_5

    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    move-object v0, v2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    :goto_2
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v4, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v0, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v4, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v1, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iput-object v3, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    :cond_4
    if-ne p3, v7, :cond_3

    const/4 p3, 0x3

    goto :goto_1

    :cond_5
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    move-object v1, v2

    goto :goto_2

    :pswitch_0
    iput-boolean v7, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    const/4 v4, 0x4

    if-ne p3, v4, :cond_6

    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    move-object v0, v2

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_2

    :cond_6
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    move-object v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method stackIdFromPoint(II)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/StackBox;->getMinimizedRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    goto :goto_0
.end method

.method switchBounds(I)Z
    .locals 2

    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method switchUserStacks(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->switchUser(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

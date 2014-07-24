.class public Lcom/android/internal/policy/impl/GuideView;
.super Landroid/widget/FrameLayout;
.source "GuideView.java"


# static fields
.field static final INVALID:I = -0x1

.field static final NORMAL:I = 0x0

.field static final WARNING:I = 0x1


# instance fields
.field private mBorderView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mParent:Landroid/view/View;

.field private mShowing:Z

.field private mType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/GuideView;->mParent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/GuideView;->setType(I)V

    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GuideView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v0
.end method

.method private refreshBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x10805de

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x10805dd

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->refreshBackground()V

    goto :goto_0
.end method

.method public show(IIII)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->refreshBackground()V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    return-void
.end method

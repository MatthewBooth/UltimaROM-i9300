.class public Lcom/android/internal/policy/impl/RecentApplicationsBackground;
.super Landroid/widget/LinearLayout;
.source "RecentApplicationsBackground.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentApplicationsBackground"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mTmp0:Landroid/graphics/Rect;

.field private mTmp1:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mTmp0:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mTmp1:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->init()V

    return-void
.end method

.method private getChildBounds(Landroid/graphics/Rect;)V
    .locals 5

    const v3, 0x7fffffff

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, p1, Landroid/graphics/Rect;->left:I

    const/high16 v3, -0x8000

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackgroundSizeChanged:Z

    if-eqz v7, :cond_0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackgroundSizeChanged:Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mTmp0:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mTmp1:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->getChildBounds(Landroid/graphics/Rect;)V

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, v7, v8

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int v2, v7, v8

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0, v4, v6, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v7, 0xbf

    invoke-virtual {p1, v7, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget v0, p0, Landroid/view/View;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/view/View;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackgroundSizeChanged:Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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

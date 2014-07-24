.class public Lcom/android/server/sec/ClippedItemViewContainer;
.super Landroid/widget/FrameLayout;
.source "ClippedItemViewContainer.java"


# instance fields
.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mIsDisabled:Z

.field private mIsPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sec/ClippedItemViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x4d3abcff

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, -0x8000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 13

    iget-boolean v12, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    if-nez v12, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_15

    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_1
    instance-of v12, p2, Landroid/widget/ImageView;

    if-eqz v12, :cond_6

    move-object v7, p2

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_5
    :goto_0
    return v9

    :cond_6
    instance-of v12, p2, Landroid/webkit/WebView;

    if-eqz v12, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    :cond_8
    instance-of v12, p2, Landroid/widget/TextView;

    if-eqz v12, :cond_f

    move-object v10, p2

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_9
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    array-length v12, v5

    if-ge v6, v12, :cond_b

    aget-object v12, v5, v6

    if-eqz v12, :cond_a

    aget-object v12, v5, v6

    invoke-virtual {v12, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_c
    const/4 v6, 0x0

    :goto_2
    array-length v12, v5

    if-ge v6, v12, :cond_e

    aget-object v12, v5, v6

    if-eqz v12, :cond_d

    aget-object v12, v5, v6

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_e
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_f
    instance-of v12, p2, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_15

    move-object v8, p2

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_10
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_12

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v12, v11, Landroid/widget/ImageView;

    if-eqz v12, :cond_11

    move-object v7, v11

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_12
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_13
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_5

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v12, v11, Landroid/widget/ImageView;

    if-eqz v12, :cond_14

    move-object v7, v11

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_15
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget v3, v2, v1

    const v4, 0x101009e

    if-ne v3, v4, :cond_0

    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    :cond_0
    aget v3, v2, v1

    const v4, 0x10100a7

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ClipboardServiceEx"

    const-string v4, "pressed !!! "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    if-eqz v3, :cond_1

    :cond_4
    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method

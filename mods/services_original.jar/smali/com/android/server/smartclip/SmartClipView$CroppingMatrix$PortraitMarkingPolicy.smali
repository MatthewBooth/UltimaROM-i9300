.class final Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$PortraitMarkingPolicy;
.super Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PortraitMarkingPolicy"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;-><init>(II)V

    return-void
.end method


# virtual methods
.method public calulate(II)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;->mWidth:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

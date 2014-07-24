.class abstract Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;
.super Ljava/lang/Object;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MarkingPolicy"
.end annotation


# instance fields
.field protected final mHeight:I

.field protected final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;->mHeight:I

    iput p2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;->mWidth:I

    return-void
.end method


# virtual methods
.method public abstract calulate(II)I
.end method

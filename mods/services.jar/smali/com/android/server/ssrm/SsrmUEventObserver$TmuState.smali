.class Lcom/android/server/ssrm/SsrmUEventObserver$TmuState;
.super Ljava/lang/Object;
.source "SsrmUEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/SsrmUEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TmuState"
.end annotation


# static fields
.field static final FIRST_THROTTLING:I = 0x1

.field static final SECOND_THROTTLING:I = 0x2

.field static final TRIPPING:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

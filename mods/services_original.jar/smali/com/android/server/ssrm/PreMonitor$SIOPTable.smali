.class Lcom/android/server/ssrm/PreMonitor$SIOPTable;
.super Ljava/lang/Object;
.source "PreMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PreMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SIOPTable"
.end annotation


# instance fields
.field public arm:I

.field public brightness:I

.field public button:Z

.field public duration:I

.field public gpu:I

.field public triggerTemperature:I


# direct methods
.method constructor <init>(IIIIZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->triggerTemperature:I

    iput p2, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->arm:I

    iput p3, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->gpu:I

    iput p4, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->brightness:I

    iput-boolean p5, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->button:Z

    mul-int/lit16 v0, p6, 0x3e8

    iput v0, p0, Lcom/android/server/ssrm/PreMonitor$SIOPTable;->duration:I

    return-void
.end method

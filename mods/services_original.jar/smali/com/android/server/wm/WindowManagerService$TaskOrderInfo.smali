.class public Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskOrderInfo"
.end annotation


# instance fields
.field public stackId:I

.field public taskId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;->taskId:I

    iput p2, p0, Lcom/android/server/wm/WindowManagerService$TaskOrderInfo;->stackId:I

    return-void
.end method

.class Lcom/android/server/am/MultiWindowManagerService$Movement;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Movement"
.end annotation


# instance fields
.field public movementX:F

.field public movementY:F

.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiWindowManagerService;FF)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$Movement;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    iput p2, p0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementX:F

    iput p3, p0, Lcom/android/server/am/MultiWindowManagerService$Movement;->movementY:F

    return-void
.end method

.class Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinimizeCallback"
.end annotation


# instance fields
.field mCallback:Landroid/os/IBinder;

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mCallback:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    return-void
.end method

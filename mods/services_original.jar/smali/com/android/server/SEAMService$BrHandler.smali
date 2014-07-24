.class final Lcom/android/server/SEAMService$BrHandler;
.super Landroid/os/Handler;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SEAMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method public constructor <init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SEAMService$BrHandler;->this$0:Lcom/android/server/SEAMService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

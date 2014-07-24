.class Lcom/android/server/ssrm/Monitor$35;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Lcom/android/server/ssrm/Monitor$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->registerCommands()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$35;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    aget-object v1, v0, v4

    if-eqz v1, :cond_1

    aget-object v1, v0, v3

    if-eqz v1, :cond_1

    aget-object v1, v0, v5

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sswrite"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    aget-object v2, v0, v5

    aget-object v3, v0, v3

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/android/server/ssrm/SSRMUtil;->executeCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

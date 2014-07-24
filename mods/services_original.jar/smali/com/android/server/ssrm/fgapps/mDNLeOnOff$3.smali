.class Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;
.super Ljava/lang/Object;
.source "mDNLeOnOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->onBootComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject2:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, 0x2ee

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$3;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

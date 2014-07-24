.class Lcom/android/server/enterprise/storage/ContainerStorageProvider$ContainerDbErrorHandler;
.super Ljava/lang/Object;
.source "ContainerStorageProvider.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/storage/ContainerStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerDbErrorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/storage/ContainerStorageProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/storage/ContainerStorageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/storage/ContainerStorageProvider$ContainerDbErrorHandler;->this$0:Lcom/android/server/enterprise/storage/ContainerStorageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "ContainerStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContainerStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContainerStorageProvider"

    const-string v1, "#######                                             ######"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContainerStorageProvider"

    const-string v1, "####### !! CONTAINER DATABASE CORRUPTION OCCURED !! ######"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContainerStorageProvider"

    const-string v1, "#######                                             ######"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContainerStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContainerStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

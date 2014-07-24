.class Lcom/android/server/enterprise/storage/EcppStorageProvider$EcppDbErrorHandler;
.super Ljava/lang/Object;
.source "EcppStorageProvider.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/storage/EcppStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EcppDbErrorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/storage/EcppStorageProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/storage/EcppStorageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider$EcppDbErrorHandler;->this$0:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EcppStorageProvider"

    const-string v1, "############                                  ############"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EcppStorageProvider"

    const-string v1, "######### !! ECPP DATABASE CORRUPTION OCCURED !! #########"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EcppStorageProvider"

    const-string v1, "############                                  ############"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

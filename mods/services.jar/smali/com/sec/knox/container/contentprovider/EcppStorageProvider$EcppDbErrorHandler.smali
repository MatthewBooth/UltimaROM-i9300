.class Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;
.super Ljava/lang/Object;
.source "EcppStorageProvider.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/contentprovider/EcppStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EcppDbErrorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/contentprovider/EcppStorageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;->this$0:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EcppStorageProvider"

    const-string v1, "############                                  ############"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EcppStorageProvider"

    const-string v1, "######### !! ECPP DATABASE CORRUPTION OCCURED !! #########"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EcppStorageProvider"

    const-string v1, "############                                  ############"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

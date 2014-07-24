.class public Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
.super Landroid/database/sqlite/SQLiteSecureOpenHelper;
.source "SsrmSecureDatabaseHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "ssrm_secure.db"

.field static final DATABASE_VERSION:I = 0x1

.field static final ORIG_DATABASE_NAME:Ljava/lang/String; = "ssrm_org.db"

.field private static final TAG:Ljava/lang/String; = "SSRMv2:SsrmSecureDatabaseHelper"

.field static mPassword:[B

.field static sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;


# instance fields
.field db_path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteSecureOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    const-string v0, "/data/system/"

    iput-object v0, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    .locals 3

    const-class v1, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    const-string/jumbo v2, "ssrm_secure.db"

    invoke-direct {v0, p0, v2}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public generateSecureDB(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ssrm_org.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ssrm_secure.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SSRMv2:SsrmSecureDatabaseHelper"

    const-string v3, "Original Plain database file does not exist"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string v2, "SSRMv2:SsrmSecureDatabaseHelper"

    const-string v3, "Delete secure database file"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->mPassword:[B

    :try_start_0
    sget-object v2, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->mPassword:[B

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->convert2SecureDB(Ljava/io/File;Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "SSRMv2:SsrmSecureDatabaseHelper"

    const-string v1, "onCreate::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "SSRMv2:SsrmSecureDatabaseHelper"

    const-string v1, "onUpgrade::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

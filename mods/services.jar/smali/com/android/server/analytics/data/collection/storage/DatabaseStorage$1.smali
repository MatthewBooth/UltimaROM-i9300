.class Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;
.super Ljava/lang/Object;
.source "DatabaseStorage.java"

# interfaces
.implements Lcom/android/server/analytics/data/collection/storage/TableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;->this$0:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    iput-object p2, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTableFound(Lcom/android/server/analytics/data/collection/storage/Table;)V
    .locals 10

    iget-object v4, p1, Lcom/android/server/analytics/data/collection/storage/Table;->mTableName:Ljava/lang/String;

    :try_start_0
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    invoke-static {v5, v4}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    invoke-static {v5, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->access$100(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    invoke-static {v5, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->access$200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    invoke-static {v5, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->access$300(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V
    invoke-static {v5, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->access$400(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/analytics/data/collection/storage/Table;)V

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/analytics/data/collection/storage/Table;)Ljava/util/ArrayList;
    invoke-static {v5, v4, p1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->access$500(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/analytics/data/collection/storage/Table;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/analytics/data/collection/storage/Column;

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ALTER TABLE %s ADD COLUMN %s;"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/android/server/analytics/data/collection/storage/Column;->getSQLDeclaration()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v5, "DatabaseStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "creation/update EX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v5, "DatabaseStorage"

    const-string v6, "onTableFound Altered Table %s with Columns %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.class Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper$1;
.super Ljava/lang/Object;
.source "VpnStorageHelper.java"

# interfaces
.implements Lcom/android/server/enterprise/storage/TableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTableFound(Lcom/android/server/enterprise/storage/Table;)V
    .locals 10

    const/4 v4, 0x0

    :try_start_0
    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    invoke-static {v5, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    invoke-static {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->access$100(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    invoke-static {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->access$200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    invoke-static {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->access$300(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    invoke-static {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->access$400(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    invoke-static {v5, v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->access$500(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/storage/Column;

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ALTER TABLE %s ADD COLUMN %s;"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/Column;->getSQLDeclaration()Ljava/lang/String;

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

    const-string v5, "KnoxVpn.StorageHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " creation/update EX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageHelper;->access$600()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "KnoxVpn.StorageHelper"

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

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

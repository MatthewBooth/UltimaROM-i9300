.class public Lcom/android/server/analytics/data/collection/storage/Column;
.super Ljava/lang/Object;
.source "Column.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;
    }
.end annotation


# instance fields
.field mColumnName:Ljava/lang/String;

.field mColumnType:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

.field mDefaultValue:Ljava/lang/String;

.field mIsPrimaryKey:Z

.field mProperties:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/storage/Column;->mColumnName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/analytics/data/collection/storage/Column;->mColumnType:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    iput-boolean p3, p0, Lcom/android/server/analytics/data/collection/storage/Column;->mIsPrimaryKey:Z

    iput-object p4, p0, Lcom/android/server/analytics/data/collection/storage/Column;->mProperties:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/analytics/data/collection/storage/Column;->mDefaultValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSQLDeclaration()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/analytics/data/collection/storage/Column;->mColumnName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/server/analytics/data/collection/storage/Column;->mColumnType:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/Column;->mProperties:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    iget-object v3, p0, Lcom/android/server/analytics/data/collection/storage/Column;->mProperties:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/Column;->mDefaultValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "%s DEFAULT %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    iget-object v3, p0, Lcom/android/server/analytics/data/collection/storage/Column;->mDefaultValue:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

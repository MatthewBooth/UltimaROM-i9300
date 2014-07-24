.class Lcom/android/server/enterprise/log/FileLogger$LogBuffer;
.super Ljava/lang/Object;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogBuffer"
.end annotation


# static fields
.field private static final CAPACITY:I = 0x14


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastTimeStamp:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/log/FileLogger$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;-><init>()V

    return-void
.end method

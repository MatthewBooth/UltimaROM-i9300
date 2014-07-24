.class Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCmd:Ljava/lang/String;

.field private final mUsage:J

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    iget-wide v2, p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    iget-wide v2, p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->compareTo(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)I

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method getUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    return-wide v0
.end method

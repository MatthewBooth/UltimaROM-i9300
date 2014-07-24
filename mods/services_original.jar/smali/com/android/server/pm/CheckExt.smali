.class public Lcom/android/server/pm/CheckExt;
.super Ljava/lang/Object;
.source "CheckExt.java"

# interfaces
.implements Lcom/android/server/pm/ICheckExt;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private checklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/ICheckExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "CheckExt"

    iput-object v1, p0, Lcom/android/server/pm/CheckExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    new-instance v0, Lcom/android/server/pm/xmlCheckExt;

    invoke-direct {v0}, Lcom/android/server/pm/xmlCheckExt;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public varargs doCheck([Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ICheckExt;

    invoke-interface {v0, p1}, Lcom/android/server/pm/ICheckExt;->doCheck([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

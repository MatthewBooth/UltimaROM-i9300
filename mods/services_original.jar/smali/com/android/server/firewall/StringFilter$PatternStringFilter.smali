.class Lcom/android/server/firewall/StringFilter$PatternStringFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternStringFilter"
.end annotation


# instance fields
.field private final mPattern:Landroid/os/PatternMatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter$1;)V

    new-instance v0, Landroid/os/PatternMatcher;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/firewall/StringFilter$PatternStringFilter;->mPattern:Landroid/os/PatternMatcher;

    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/firewall/StringFilter$PatternStringFilter;->mPattern:Landroid/os/PatternMatcher;

    invoke-virtual {v0, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public final Landroidx/sqlite/db/SupportSQLiteQueryBuilder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public bindArgs:[Ljava/lang/Object;

.field public columns:[Ljava/lang/String;

.field public orderBy:Ljava/lang/String;

.field public selection:Ljava/lang/String;

.field public final table:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\s*\\d+\\s*(,\\s*\\d+\\s*)?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    return-void
    .line 7
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "notification_usage"

    .line 5
    iput-object v0, p0, Landroidx/sqlite/db/SupportSQLiteQueryBuilder;->table:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method

.method public static appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 5
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-lez v1, :cond_0

    .line 10
    move v1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v0

    .line 14
    :goto_0
    if-ne v1, v2, :cond_1

    .line 15
    move v0, v2

    .line 17
    :cond_1
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_2
    return-void
    .line 26
.end method

.class public final Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# static fields
.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field public final attachedDbs:Ljava/util/List;

.field public final delegate:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    sput-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 5
    return-void
    .line 7
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->attachedDbs:Ljava/util/List;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final beginTransaction()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    return-void
    .line 7
.end method

.method public final beginTransactionNonExclusive()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 4
    return-void
    .line 7
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 4
    return-void
    .line 7
.end method

.method public final compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 1

    .line 1
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    .line 2
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 6
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    .line 10
    return-object v0
    .line 13
.end method

.method public final endTransaction()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4
    return-void
    .line 7
.end method

.method public final execSQL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final inTransaction()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isWriteAheadLoggingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 3

    .line 4
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$query$cursorFactory$1;

    invoke-direct {v0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$query$cursorFactory$1;-><init>(Landroidx/sqlite/db/SupportSQLiteQuery;)V

    .line 5
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    new-instance v1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 1
    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p1, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final setTransactionSuccessful()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4
    return-void
    .line 7
.end method

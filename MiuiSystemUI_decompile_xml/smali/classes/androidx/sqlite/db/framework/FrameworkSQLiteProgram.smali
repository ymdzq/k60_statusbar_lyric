.class public Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteProgram;


# instance fields
.field public final delegate:Landroid/database/sqlite/SQLiteProgram;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteProgram;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->delegate:Landroid/database/sqlite/SQLiteProgram;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final bindBlob(I[B)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->delegate:Landroid/database/sqlite/SQLiteProgram;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    .line 4
    return-void
    .line 7
.end method

.method public final bindDouble(DI)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->delegate:Landroid/database/sqlite/SQLiteProgram;

    .line 2
    invoke-virtual {p0, p3, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 4
    return-void
    .line 7
.end method

.method public final bindLong(IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->delegate:Landroid/database/sqlite/SQLiteProgram;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 4
    return-void
    .line 7
.end method

.method public final bindNull(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->delegate:Landroid/database/sqlite/SQLiteProgram;

    .line 2
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final bindString(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->delegate:Landroid/database/sqlite/SQLiteProgram;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->delegate:Landroid/database/sqlite/SQLiteProgram;

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->close()V

    .line 4
    return-void
    .line 7
.end method

.class public final Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;
.super Ljava/lang/Object;
.source "BatteryEventDao_Impl.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfBatteryEventEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfClearAllBefore:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__insertionAdapterOfBatteryEventEntity:Landroidx/room/EntityInsertionAdapter;

    .line 47
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__preparedStmtOfClearAllBefore:Landroidx/room/SharedSQLiteStatement;

    .line 54
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$3;-><init>(Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 97
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 98
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 101
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 100
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 101
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 102
    throw v1
.end method

.method public clearAllBefore(J)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__preparedStmtOfClearAllBefore:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 80
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 83
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 84
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 87
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__preparedStmtOfClearAllBefore:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 86
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 87
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__preparedStmtOfClearAllBefore:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 88
    throw p1
.end method

.method public getAllAfter(J)Landroid/database/Cursor;
    .locals 2

    const-string v0, "SELECT * FROM BatteryEventEntity WHERE timestamp > ? ORDER BY timestamp DESC"

    const/4 v1, 0x1

    .line 141
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 144
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public insert(Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 66
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__insertionAdapterOfBatteryEventEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 72
    throw p1
.end method

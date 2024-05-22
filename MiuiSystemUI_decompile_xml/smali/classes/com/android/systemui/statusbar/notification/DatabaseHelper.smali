.class public final Lcom/android/systemui/statusbar/notification/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static volatile sDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xf

    .line 3
    invoke-direct {p0, p1, v0, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 5
    return-void
    .line 8
.end method

.method public static getDbInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/android/systemui/statusbar/notification/DatabaseHelper;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->sDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-nez v1, :cond_0

    .line 11
    :try_start_1
    new-instance v1, Lcom/android/systemui/statusbar/notification/DatabaseHelper;

    .line 13
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    move-result-object p0

    .line 21
    sput-object p0, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->sDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_1
    sget-object p0, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    return-object p0
    .line 36
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    const-string p0, "CREATE TABLE  IF NOT EXISTS notifications (_id INTEGER PRIMARY KEY AUTOINCREMENT,icon BLOB,title TEXT,content TEXT,time TEXT,info TEXT,subtext TEXT,key INTEGER,pkg TEXT,user_id INTEGER);"

    .line 2
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    const-string p0, "CREATE TABLE IF NOT EXISTS notification_sort(_id INTEGER PRIMARY KEY AUTOINCREMENT, package_name VARCHAR(40) NOT NULL, date INTEGER, click_count INTEGER, show_count INTEGER);"

    .line 7
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    return-void
    .line 12
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    if-eq p2, p3, :cond_0

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 4
    const-string v0, "Got stuck trying to upgrade from version "

    .line 6
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string p2, ", must wipe the settings provider"

    .line 14
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 22
    const-string p3, "DatabaseHelper"

    .line 23
    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string p2, "DROP TABLE IF EXISTS notifications"

    .line 28
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    const-string p2, "DROP TABLE IF EXISTS notification_sort"

    .line 33
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    :cond_0
    return-void
    .line 41
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Upgrading settings database from version "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " to "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "DatabaseHelper"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    if-eq p2, p3, :cond_0

    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    const-string v0, "Got stuck trying to upgrade from version "

    .line 33
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string p2, ", must wipe the settings provider"

    .line 41
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 49
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string p2, "DROP TABLE IF EXISTS notifications"

    .line 53
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string p2, "DROP TABLE IF EXISTS notification_sort"

    .line 58
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    :cond_0
    return-void
    .line 66
.end method

.class public Lcom/android/settings/wifi/WifiDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiDatabaseHelper.java"


# static fields
.field private static sDeInstance:Lcom/android/settings/wifi/WifiDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    const-string/jumbo v2, "wifi_settings.db"

    .line 20
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private addWifiShare(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE wifi ADD COLUMN share_state INTEGER DEFAULT 0"

    .line 86
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDatabaseHelper;->createShareTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createShareTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE wifi_share(_id INTEGER PRIMARY KEY AUTOINCREMENT,uuid TEXT ,marker BIGINT DEFAULT 0,longitude TEXT,latitude TEXT,deleted INTEGER DEFAULT 0,sync_state INTEGER DEFAULT 0,share_state INTEGER DEFAULT 0,share_count INTEGER DEFAULT 0,share_connect_state INTEGER DEFAULT 0,share_feedback INTEGER DEFAULT 0,share_upate_time INTEGER DEFAULT 0,account TEXT,ssid TEXT,bssid TEXT,psk TEXT,wepkey0 TEXT,wepkey1 TEXT,wepkey2 TEXT,wepkey3 TEXT,wep_tx_keyidx INTEGER,priority INTEGER,scan_ssid INTEGER,adhoc INTEGER,keyMgmt TEXT,proto TEXT,authAlg TEXT,pairwise TEXT,groupCipher TEXT,eap TEXT,phase2 TEXT,identity TEXT,anonymousIdentity TEXT,password TEXT,clientCert TEXT,privateKey TEXT,caCert TEXT,clientCertFile TEXT,privateKeyFile TEXT,caCertFile TEXT)"

    .line 187
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE wifi(_id INTEGER PRIMARY KEY AUTOINCREMENT,uuid TEXT ,marker INTEGER DEFAULT 0,longitude TEXT,latitude TEXT,deleted INTEGER DEFAULT 0,sync_state INTEGER DEFAULT 0,share_state INTEGER DEFAULT 0,account TEXT,ssid TEXT,bssid TEXT,psk TEXT,wepkey0 TEXT,wepkey1 TEXT,wepkey2 TEXT,wepkey3 TEXT,wep_tx_keyidx INTEGER,priority INTEGER,scan_ssid INTEGER,adhoc INTEGER,keyMgmt TEXT,proto TEXT,authAlg TEXT,pairwise TEXT,groupCipher TEXT,eap TEXT,phase2 TEXT,identity TEXT,anonymousIdentity TEXT,password TEXT,clientCert TEXT,privateKey TEXT,caCert TEXT,clientCertFile TEXT,privateKeyFile TEXT,caCertFile TEXT)"

    .line 130
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE wifi_sync(_id INTEGER PRIMARY KEY AUTOINCREMENT,account_name TEXT NOT NULL,marker INTEGER DEFAULT 0,sync_extra_info TEXT)"

    .line 139
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDatabaseHelper;->createShareTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static declared-synchronized getInstanceForDe(Landroid/content/Context;)Lcom/android/settings/wifi/WifiDatabaseHelper;
    .locals 2

    const-class v0, Lcom/android/settings/wifi/WifiDatabaseHelper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/android/settings/wifi/WifiDatabaseHelper;->sDeInstance:Lcom/android/settings/wifi/WifiDatabaseHelper;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/android/settings/wifi/WifiDatabaseHelper;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiProviderUtils;->getDeviceEncryptedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/wifi/WifiDatabaseHelper;->sDeInstance:Lcom/android/settings/wifi/WifiDatabaseHelper;

    .line 27
    :cond_0
    sget-object p0, Lcom/android/settings/wifi/WifiDatabaseHelper;->sDeInstance:Lcom/android/settings/wifi/WifiDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDatabaseHelper;->addWifiShare(Landroid/database/sqlite/SQLiteDatabase;)V

    move p2, v0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v0, :cond_1

    const-string/jumbo p2, "update wifi set deleted = 1, sync_state=0 where keyMgmt = \"NONE\" "

    .line 55
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v1

    :cond_1
    if-ne p2, v1, :cond_3

    :try_start_0
    const-string/jumbo v0, "select * from wifi_share"

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 69
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 71
    throw p0

    .line 66
    :catch_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDatabaseHelper;->addWifiShare(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    :goto_0
    add-int/lit8 p2, p2, 0x1

    :cond_3
    const/4 p0, 0x7

    if-ne p2, p0, :cond_4

    const-string p0, "ALTER TABLE wifi_sync ADD COLUMN sync_extra_info TEXT"

    .line 76
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    :cond_4
    if-ne p2, p3, :cond_5

    return-void

    .line 80
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Upgrade wifi database to version "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "fails"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

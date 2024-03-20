.class public Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;
.super Lmiui/cloud/sync/SyncInfoProviderBase;
.source "BluetoothSyncInfoProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.bluetooth.ble.app.headsetdata.provider"

.field private static final TAG:Ljava/lang/String; = "BluetoothSyncInfoProvider"

.field private static final URI_SYNCED:Landroid/net/Uri;

.field private static final URI_UNSYNCED:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.bluetooth.ble.app.headsetdata.provider/unsynceddata"

    .line 14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->URI_UNSYNCED:Landroid/net/Uri;

    const-string v0, "content://com.android.bluetooth.ble.app.headsetdata.provider/synceddata"

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->URI_SYNCED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;-><init>()V

    return-void
.end method

.method private getBluetoothCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBluetoothCount, uri: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothSyncInfoProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 39
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "queryDirtyCount = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 41
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 42
    throw p1

    :cond_0
    const-string p0, "queryDirtyCount: cursor is null"

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getSyncedCount(Landroid/content/Context;)I
    .locals 2

    .line 19
    sget-object v0, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->URI_SYNCED:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->getBluetoothCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getUnsyncedCount(Landroid/content/Context;)I
    .locals 2

    .line 24
    sget-object v0, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->URI_UNSYNCED:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->getBluetoothCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getWifiOnlyUnsyncedCount(Landroid/content/Context;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.class public Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;
.super Lmiui/cloud/sync/SyncInfoProviderBase;
.source "GlobalBrowserSyncInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider$Bookmarks;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.browser.global"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final BOOKMARK_CONTENT_URI:Landroid/net/Uri;

.field private static final BOOKMARK_SELECTION_ALL:Ljava/lang/String; = "_id != 1"

.field private static final DIRTY_BOOKMARK_SELECTION:Ljava/lang/String; = "_id != 1 AND dirty=1"

.field private static final DIRTY_HISTORY_SELECTION:Ljava/lang/String; = "(sourceid IS NULL OR deleted=1)"

.field private static final HISTORY_CONTENT_URI:Landroid/net/Uri;

.field private static final SYNCED_BOOKMARK_SELECTION:Ljava/lang/String; = "_id != 1 AND dirty =0  AND sourceid is not null"

.field private static final SYNCED_HISTORY_SELECTION:Ljava/lang/String; = "(sourceid IS not NULL AND deleted=0)"

.field private static final TAG:Ljava/lang/String; = "GlobalBrowserSyncInfoProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.miui.browser.global"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bookmarks"

    .line 26
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "historysync"

    .line 27
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->HISTORY_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;-><init>()V

    return-void
.end method

.method private getBookmarksDirtyCount(Landroid/content/Context;)I
    .locals 3

    .line 48
    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id != 1 AND dirty=1"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/SyncInfoProviderBase;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 49
    invoke-virtual {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getGlobalBrowserDirtyBookmarksCount count = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlobalBrowserSyncInfoProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method

.method private getBookmarksSyncedCount(Landroid/content/Context;)I
    .locals 3

    .line 80
    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id != 1 AND dirty =0  AND sourceid is not null"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/SyncInfoProviderBase;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 81
    invoke-virtual {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getGlobalBrowserSyncedBookmarksCount count = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlobalBrowserSyncInfoProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method

.method private getHistoryDirtyCount(Landroid/content/Context;)I
    .locals 3

    .line 56
    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->HISTORY_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "(sourceid IS NULL OR deleted=1)"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/SyncInfoProviderBase;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 57
    invoke-virtual {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getGlobalBrowserDirtyHistoryCount count = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlobalBrowserSyncInfoProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method

.method private getHistorySyncedCount(Landroid/content/Context;)I
    .locals 3

    .line 88
    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->HISTORY_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "(sourceid IS not NULL AND deleted=0)"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/SyncInfoProviderBase;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 89
    invoke-virtual {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getGlobalBrowserSyncedHistoryCount count = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlobalBrowserSyncInfoProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method


# virtual methods
.method public getSyncedCount(Landroid/content/Context;)I
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getBookmarksSyncedCount(Landroid/content/Context;)I

    move-result v0

    .line 71
    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getHistorySyncedCount(Landroid/content/Context;)I

    move-result p0

    const/4 p1, -0x1

    if-eq v0, p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    return p1
.end method

.method public getUnsyncedCount(Landroid/content/Context;)I
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getBookmarksDirtyCount(Landroid/content/Context;)I

    move-result v0

    .line 39
    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getHistoryDirtyCount(Landroid/content/Context;)I

    move-result p0

    const/4 p1, -0x1

    if-eq v0, p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    return p1
.end method

.method public getWifiOnlyUnsyncedCount(Landroid/content/Context;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

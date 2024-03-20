.class public final Lmiui/cloud/sync/providers/BrowserSyncInfoProvider;
.super Lmiui/cloud/sync/SyncInfoProviderBase;
.source "BrowserSyncInfoProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.browser"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getSyncedCount(Landroid/content/Context;)I
    .locals 0

    .line 8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUnsyncedCount(Landroid/content/Context;)I
    .locals 0

    .line 6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWifiOnlyUnsyncedCount(Landroid/content/Context;)I
    .locals 0

    .line 7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

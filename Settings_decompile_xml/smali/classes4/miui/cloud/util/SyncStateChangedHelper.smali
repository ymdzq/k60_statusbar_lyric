.class public Lmiui/cloud/util/SyncStateChangedHelper;
.super Ljava/lang/Object;
.source "SyncStateChangedHelper.java"


# static fields
.field public static final INTERNAL_STAT_URI:Landroid/net/Uri; = null

.field public static final OPEN_SWITCH_STATE_STAT_URI:Landroid/net/Uri; = null

.field public static final OPEN_SYNC_PHONE_STATE:Landroid/net/Uri; = null

.field public static final OPEN_SYNC_RESULT_URI:Landroid/net/Uri; = null

.field public static final OPEN_SYNC_TIME_CONSUME:Landroid/net/Uri; = null

.field public static final PATH_INTERNAL:Ljava/lang/String; = "internal"

.field public static final PATH_OPEN_SWITCH_STATE:Ljava/lang/String; = "open_switch_state"

.field public static final PATH_OPEN_SYNC_PHONE_STATE:Ljava/lang/String; = "open_sync_phone_state"

.field public static final PATH_OPEN_SYNC_RESULT:Ljava/lang/String; = "open_sync_result"

.field public static final PATH_OPEN_SYNC_TIME_CONSUME:Ljava/lang/String; = "open_sync_time_consume"

.field public static final SYNC_AUTHORITY:Ljava/lang/String; = "authority"

.field public static final SYNC_CHANGE_SOURCE:Ljava/lang/String; = "change_source"

.field public static final SYNC_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.miui.cloudservice.SyncSettingStatusProvider"

.field public static final SYNC_SETTING_STATUS_PROVIDER:Ljava/lang/String; = "com.miui.cloudservice.SyncSettingStatusProvider"

.field public static final SYNC_STATUS:Ljava/lang/String; = "status"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clearAllSyncChangedLog(Landroid/content/Context;)V
    .locals 1

    .line 8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCurrentSyncSettingState(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/cloud/sync/data/SyncSettingState;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMiCloudSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setSyncChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

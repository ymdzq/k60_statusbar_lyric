.class public Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;
.super Ljava/lang/Object;
.source "KeySettingsStatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;
    }
.end annotation


# static fields
.field public static GESTURE_BACK_TAP_KEY:Ljava/lang/String; = "backtap"

.field public static GESTURE_PAGE_KEY:Ljava/lang/String; = "visitgesture"

.field public static GESTURE_V_PAGE_KEY:Ljava/lang/String; = "visitknockV"

.field public static KEY_PAGE_KEY:Ljava/lang/String; = "visitkey"

.field public static PAGE_CHANGED:Ljava/lang/String; = "changed"

.field public static PAGE_INIT:Ljava/lang/String; = "init"

.field public static PAGE_VISIT:Ljava/lang/String; = "visit"

.field public static STAT_KEY:Ljava/lang/String; = "shortcutsettings"

.field private static volatile sInstance:Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;
    .locals 2

    .line 51
    sget-object v0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->sInstance:Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->sInstance:Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->sInstance:Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 58
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->sInstance:Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;

    return-object p0
.end method


# virtual methods
.method public traceShortcutSettingsEvent(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;",
            ">;)V"
        }
    .end annotation

    .line 72
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;

    .line 74
    iget-object v1, v0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->value:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    sget-object p1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->STAT_KEY:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public traceUserSetting(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;

    invoke-direct {v0}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;-><init>()V

    .line 103
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->setKey(Ljava/lang/String;)V

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->setValue(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->traceShortcutSettingsEvent(Ljava/util/ArrayList;)V

    .line 111
    invoke-virtual {v0, p2}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->setKey(Ljava/lang/String;)V

    .line 112
    sget-object p1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->PAGE_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->setKey(Ljava/lang/String;)V

    .line 115
    sget-object p1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->PAGE_VISIT:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->setValue(Ljava/lang/String;)V

    .line 117
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->traceVisitPageEvent(Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;)V

    return-void
.end method

.method public traceVisitPageEvent(Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;)V
    .locals 1

    .line 91
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 92
    iget-object v0, p1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->value:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object p1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->STAT_KEY:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

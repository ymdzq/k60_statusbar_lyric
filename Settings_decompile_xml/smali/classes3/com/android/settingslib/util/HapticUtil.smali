.class public Lcom/android/settingslib/util/HapticUtil;
.super Ljava/lang/Object;
.source "HapticUtil.java"


# static fields
.field private static volatile INSTANCE:Lcom/android/settingslib/util/HapticUtil;


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/util/HapticUtil;
    .locals 3

    .line 21
    sget-object v0, Lcom/android/settingslib/util/HapticUtil;->INSTANCE:Lcom/android/settingslib/util/HapticUtil;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/android/settingslib/util/HapticUtil;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/android/settingslib/util/HapticUtil;->INSTANCE:Lcom/android/settingslib/util/HapticUtil;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/android/settingslib/util/HapticUtil;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/util/HapticUtil;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/android/settingslib/util/HapticUtil;->INSTANCE:Lcom/android/settingslib/util/HapticUtil;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 28
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settingslib/util/HapticUtil;->INSTANCE:Lcom/android/settingslib/util/HapticUtil;

    return-object p0
.end method


# virtual methods
.method public performHapticFeedback()V
    .locals 0

    .line 0
    return-void
.end method

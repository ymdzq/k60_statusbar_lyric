.class public Lcom/android/settingslib/util/MiStatInterfaceUtils;
.super Ljava/lang/Object;
.source "MiStatInterfaceUtils.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sIsProvisioned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    sput-boolean v1, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sIsProvisioned:Z

    return-void
.end method

.method private static final checkEventName(Ljava/lang/String;)Z
    .locals 1

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^[a-zA-Z][a-zA-Z0-9_]*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x40

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final enableExceptionCatcher(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public static final initMiStatistics(Landroid/content/Context;)V
    .locals 1

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sContext:Landroid/content/Context;

    .line 32
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->initialize(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 33
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->setUseSystemUploadingService(Z)V

    .line 34
    invoke-static {}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->setUploadNetworkType()V

    const/16 v0, 0x3c

    .line 35
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->setUploadInterval(I)V

    .line 36
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->enableExceptionCatcher(Z)V

    .line 37
    invoke-static {}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->setInternationalRegion()V

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->setDebugModeEnabled(Z)V

    .line 39
    sget-object v0, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiStatInterfaceUtils"

    const-string v0, "initMiStatistics exception"

    .line 41
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static final initialize(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method

.method private static isMonkeyRunning()Z
    .locals 1

    .line 101
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method private static isProvisioned()Z
    .locals 3

    .line 46
    sget-boolean v0, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sIsProvisioned:Z

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sIsProvisioned:Z

    .line 53
    :cond_1
    sget-boolean v0, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sIsProvisioned:Z

    return v0
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public static final recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private static final setDebugModeEnabled(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method private static final setInternationalRegion()V
    .locals 1

    .line 86
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return-void
.end method

.method private static final setUploadInterval(I)V
    .locals 0

    .line 0
    return-void
.end method

.method private static final setUploadNetworkType()V
    .locals 0

    .line 0
    return-void
.end method

.method private static final setUseSystemUploadingService(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public static final trackEvent(Ljava/lang/String;)V
    .locals 2

    .line 108
    sget-object v0, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "settings_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    invoke-static {}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->checkEventName(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static trackException(Ljava/lang/Throwable;)V
    .locals 0

    .line 249
    sget-object p0, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->isProvisioned()Z

    :cond_0
    return-void
.end method

.method public static final trackMasterClearClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trackPageEnd(Ljava/lang/String;)V
    .locals 0

    .line 191
    sget-object p0, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->isMonkeyRunning()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->isProvisioned()Z

    :cond_0
    return-void
.end method

.method public static trackPageStart(Ljava/lang/String;)V
    .locals 0

    .line 178
    sget-object p0, Lcom/android/settingslib/util/MiStatInterfaceUtils;->sInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->isMonkeyRunning()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->isProvisioned()Z

    :cond_0
    return-void
.end method

.method public static final trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static final trackPreferenceValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static final trackSwitchEvent(Ljava/lang/String;Z)V
    .locals 1

    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 280
    :goto_0
    invoke-static {p0, p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

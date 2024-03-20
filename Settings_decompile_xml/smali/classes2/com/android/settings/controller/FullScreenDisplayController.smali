.class public Lcom/android/settings/controller/FullScreenDisplayController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FullScreenDisplayController.java"


# static fields
.field public static final LEAST_VERSION_CODE:I = 0x1343cff

.field public static final QUICKSEARCHBOX_PKG_NAME:Ljava/lang/String; = "com.android.quicksearchbox"

.field private static final TAG:Ljava/lang/String; = "FullScreenDisplayController"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/android/settings/controller/FullScreenDisplayController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isRemoveEntryFromSettings(Landroid/content/Context;)Z
    .locals 1

    .line 47
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasPocoLauncherDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isPocoSupportFullScreenDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/android/settings/controller/FullScreenDisplayController;->quickSearchBoxTooOld(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isScreenButtonHidden(Landroid/content/Context;)Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isUseFsVersionThree(Landroid/content/Context;)Z
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/Utils;->isRecentsWithinLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/Utils;->useMiuiHomeAsDefaultHome(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/settings/utils/Utils;->IS_MIUI_LITE_VERSION:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static needHideFullScreenDisplay(Landroid/content/Context;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static quickSearchBoxTooOld(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "com.android.quicksearchbox"

    .line 42
    invoke-static {p0, v0}, Lcom/android/settings/MiuiUtils;->getAppLongVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const-wide/32 v2, 0x1343cff

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/controller/FullScreenDisplayController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/controller/FullScreenDisplayController;->isRemoveEntryFromSettings(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

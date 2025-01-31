.class public Lcom/android/settings/accessibility/AutoclickPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AutoclickPreferenceController.java"


# static fields
.field private static final AUTOCLICK_PREFERENCE_SUMMARIES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    sget v0, Lcom/android/settings/R$string;->accessibilty_autoclick_preference_subtitle_short_delay:I

    sget v1, Lcom/android/settings/R$string;->accessibilty_autoclick_preference_subtitle_medium_delay:I

    sget v2, Lcom/android/settings/R$string;->accessibilty_autoclick_preference_subtitle_long_delay:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AutoclickPreferenceController;->AUTOCLICK_PREFERENCE_SUMMARIES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getAutoclickPreferenceSummaryIndex(I)I
    .locals 2

    const/16 p0, 0xc8

    if-gt p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    .line 72
    sget-object p0, Lcom/android/settings/accessibility/AutoclickPreferenceController;->AUTOCLICK_PREFERENCE_SUMMARIES:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 76
    :cond_1
    sget-object v0, Lcom/android/settings/accessibility/AutoclickPreferenceController;->AUTOCLICK_PREFERENCE_SUMMARIES:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x320

    div-int/2addr v1, v0

    sub-int/2addr p1, p0

    .line 77
    div-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x0

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    if-nez v2, :cond_1

    .line 56
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->accessibility_feature_state_off:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_delay"

    const/16 v2, 0x258

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 61
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AutoclickPreferenceController;->getAutoclickPreferenceSummaryIndex(I)I

    move-result v1

    .line 62
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/accessibility/AutoclickPreferenceController;->AUTOCLICK_PREFERENCE_SUMMARIES:[I

    aget v1, v2, v1

    invoke-static {p0, v1, v0}, Lcom/android/settings/accessibility/AutoclickUtils;->getAutoclickDelaySummary(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
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

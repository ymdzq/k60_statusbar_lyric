.class public Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LockAfterTimeoutPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mDPM:Landroid/app/admin/DevicePolicyManager;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$Z88ITLjFN-H9ypJXnXgoxmqfQOQ(Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->lambda$updateLockAfterPreferenceSummary$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 53
    iput p2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mUserId:I

    .line 54
    iput-object p3, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string p2, "device_policy"

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 56
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    return-void
.end method

.method private synthetic lambda$updateLockAfterPreferenceSummary$0()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setupLockAfterPreference(Lcom/android/settings/display/TimeoutListPreference;)V
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 107
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    .line 112
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v1

    .line 113
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "screen_off_timeout"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 113
    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-long v3, p0

    const-wide/16 v5, 0x0

    sub-long/2addr v1, v3

    .line 118
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 119
    invoke-virtual {p1, v1, v2, v0}, Lcom/android/settings/display/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method private updateLockAfterPreferenceSummary(Lcom/android/settings/display/TimeoutListPreference;)V
    .locals 8

    .line 125
    invoke-virtual {p1}, Lcom/android/settings/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;)V

    const-string p0, "Settings.DISABLED_BY_IT_ADMIN_TITLE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 132
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 133
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 135
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_2

    .line 136
    aget-object v6, v3, v4

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-ltz v6, :cond_1

    move v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 143
    invoke-virtual {v0, v1, v4}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgentLabel(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 145
    aget-object v1, v3, v5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-nez v1, :cond_3

    .line 146
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->lock_immediately_summary_with_exception:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 149
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->lock_after_timeout_summary_with_exception:I

    aget-object v2, v2, v5

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 153
    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_after_timeout_summary:I

    aget-object v1, v2, v5

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 156
    :goto_1
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "lock_after_timeout"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 93
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 94
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->updateState(Landroidx/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PrefControllerMixin"

    const-string p2, "could not persist lockAfter timeout setting"

    .line 98
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/android/settings/display/TimeoutListPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->setupLockAfterPreference(Lcom/android/settings/display/TimeoutListPreference;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->updateLockAfterPreferenceSummary(Lcom/android/settings/display/TimeoutListPreference;)V

    return-void
.end method

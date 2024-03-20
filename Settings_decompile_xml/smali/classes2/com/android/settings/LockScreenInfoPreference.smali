.class public Lcom/android/settings/LockScreenInfoPreference;
.super Lcom/android/settingslib/miuisettings/preference/EditTextPreference;
.source "LockScreenInfoPreference.java"


# instance fields
.field private mOwnerAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/android/settings/LockScreenInfoPreference;->initOwnerAdmin()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/android/settings/LockScreenInfoPreference;->initOwnerAdmin()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-direct {p0}, Lcom/android/settings/LockScreenInfoPreference;->initOwnerAdmin()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    invoke-direct {p0}, Lcom/android/settings/LockScreenInfoPreference;->initOwnerAdmin()V

    return-void
.end method

.method private initOwnerAdmin()V
    .locals 1

    .line 37
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockScreenInfoPreference;->mOwnerAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/settings/LockScreenInfoPreference;->mOwnerAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/LockScreenInfoPreference;->mOwnerAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 46
    :cond_0
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onClick()V

    return-void
.end method

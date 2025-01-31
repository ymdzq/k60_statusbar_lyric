.class public Lcom/android/settings/backup/LocalPhoneController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LocalPhoneController.java"


# static fields
.field private static final KEY_PHONE:Ljava/lang/String; = "phone_backup"

.field private static final TAG:Ljava/lang/String; = "phoneBackupController"


# instance fields
.field private mChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mContext:Landroid/content/Context;

.field private mPhoneBackup:Lcom/android/settings/backup/CustomRadioButtonPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/backup/LocalPhoneController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/backup/LocalPhoneController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    new-instance p2, Lcom/android/settings/backup/LocalPhoneController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/backup/LocalPhoneController$1;-><init>(Lcom/android/settings/backup/LocalPhoneController;)V

    iput-object p2, p0, Lcom/android/settings/backup/LocalPhoneController;->mChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 52
    new-instance p2, Lcom/android/settings/backup/LocalPhoneController$2;

    invoke-direct {p2, p0}, Lcom/android/settings/backup/LocalPhoneController$2;-><init>(Lcom/android/settings/backup/LocalPhoneController;)V

    iput-object p2, p0, Lcom/android/settings/backup/LocalPhoneController;->mClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 24
    iput-object p1, p0, Lcom/android/settings/backup/LocalPhoneController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "phone_backup"

    .line 31
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/backup/CustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/backup/LocalPhoneController;->mPhoneBackup:Lcom/android/settings/backup/CustomRadioButtonPreference;

    .line 32
    iget-object v0, p0, Lcom/android/settings/backup/LocalPhoneController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->ic_mobile:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/backup/CustomRadioButtonPreference;->setCustomItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object p1, p0, Lcom/android/settings/backup/LocalPhoneController;->mPhoneBackup:Lcom/android/settings/backup/CustomRadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/backup/LocalPhoneController;->mChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 34
    iget-object p1, p0, Lcom/android/settings/backup/LocalPhoneController;->mPhoneBackup:Lcom/android/settings/backup/CustomRadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/backup/LocalPhoneController;->mClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 36
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object p1

    const-string v0, "disallow_backup"

    invoke-interface {p1, v0}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p0, p0, Lcom/android/settings/backup/LocalPhoneController;->mPhoneBackup:Lcom/android/settings/backup/CustomRadioButtonPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

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

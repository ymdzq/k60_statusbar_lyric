.class public Lcom/android/settings/wifi/OtherAccessPoint;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OtherAccessPoint.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasAddConfigUserRestriction:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Z)V

    .line 27
    iput-object p1, p0, Lcom/android/settings/wifi/OtherAccessPoint;->mContext:Landroid/content/Context;

    .line 28
    sget v0, Lcom/android/settings/R$layout;->add_network_title:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string/jumbo v0, "user"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/wifi/OtherAccessPoint;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_add_wifi_config"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/OtherAccessPoint;->mHasAddConfigUserRestriction:Z

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/wifi/OtherAccessPoint;->checkRestrictionAndSetDisabled()V

    return-void
.end method


# virtual methods
.method checkRestrictionAndSetDisabled()V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/android/settings/wifi/OtherAccessPoint;->mHasAddConfigUserRestriction:Z

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "no_add_wifi_config"

    .line 57
    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->createDefaultEnforcedAdminWithRestriction(Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 60
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 38
    iget-object p0, p0, Lcom/android/settings/wifi/OtherAccessPoint;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiSettingsPanelActivity"

    .line 38
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x41e00000    # 28.0f

    .line 40
    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 42
    invoke-virtual {p1, p0, v0, p0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

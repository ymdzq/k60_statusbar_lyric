.class public Lcom/android/settings/device/controller/MiuiCredentialsController;
.super Lcom/android/settings/device/controller/BaseDeviceInfoController;
.source "MiuiCredentialsController.java"


# instance fields
.field private final VERFICATION_DEVICE_LIST:Ljava/lang/String;

.field private mVerfDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/BaseDeviceInfoController;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "show_verification_device_list"

    .line 17
    iput-object p1, p0, Lcom/android/settings/device/controller/MiuiCredentialsController;->VERFICATION_DEVICE_LIST:Ljava/lang/String;

    return-void
.end method

.method private setCredentialTitle(Landroidx/preference/Preference;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/device/controller/MiuiCredentialsController;->mVerfDeviceList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/device/controller/MiuiCredentialsController;->mVerfDeviceList:Ljava/util/ArrayList;

    .line 45
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "show_verification_device_list"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->queryStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/android/settings/device/controller/MiuiCredentialsController;->mVerfDeviceList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/device/controller/MiuiCredentialsController;->mVerfDeviceList:Ljava/util/ArrayList;

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 50
    sget p0, Lcom/android/settings/R$string;->credentials_title_verification:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/settings/R$string;->approve_title:I

    .line 49
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/device/controller/MiuiCredentialsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/MiuiCredentialsController;->setCredentialTitle(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "credentials"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 25
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->enableShowCredentials()Z

    move-result p0

    return p0
.end method

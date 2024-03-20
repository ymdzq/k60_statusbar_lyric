.class public abstract Lcom/android/settings/device/controller/BaseDeviceInfoController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BaseDeviceInfoController.java"


# instance fields
.field private mIsAvailable:Z

.field private mOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/settings/device/controller/BaseDeviceInfoController;->mIsAvailable:Z

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/android/settings/device/controller/BaseDeviceInfoController;->mOrder:I

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/settings/device/controller/BaseDeviceInfoController;->mIsAvailable:Z

    return p0
.end method

.method public setIsAvailable(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/settings/device/controller/BaseDeviceInfoController;->mIsAvailable:Z

    return-void
.end method

.method public setPreferenceTitle(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setValueSummary(Lcom/android/settingslib/miuisettings/preference/ValuePreference;Ljava/lang/String;)V
    .locals 0

    .line 23
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

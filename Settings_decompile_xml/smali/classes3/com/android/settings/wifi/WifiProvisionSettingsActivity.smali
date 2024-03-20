.class public Lcom/android/settings/wifi/WifiProvisionSettingsActivity;
.super Lmiuix/provision/ProvisionBaseActivity;
.source "WifiProvisionSettingsActivity.java"


# static fields
.field private static HALF_ALPHA:F = 0.5f

.field private static NO_ALPHA:F = 1.0f


# instance fields
.field private mMiuiWifiSettingsInstance:Lmiuix/preference/PreferenceFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lmiuix/provision/ProvisionBaseActivity;-><init>()V

    return-void
.end method

.method public static fitNotchForFullScreen(Landroid/app/Activity;)V
    .locals 2

    .line 52
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lmiuix/provision/ProvisionBaseActivity;->isAnimEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onBackAnimStart()V
    .locals 0

    .line 94
    invoke-super {p0}, Lmiuix/provision/ProvisionBaseActivity;->onBackAnimStart()V

    const-string p0, "provision_wifi_page"

    .line 95
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {p0}, Lcom/android/settings/wifi/WifiProvisionSettingsActivity;->fitNotchForFullScreen(Landroid/app/Activity;)V

    .line 40
    iget-object p1, p0, Lcom/android/settings/wifi/WifiProvisionSettingsActivity;->mMiuiWifiSettingsInstance:Lmiuix/preference/PreferenceFragment;

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiProvisionSettingsActivity;->mMiuiWifiSettingsInstance:Lmiuix/preference/PreferenceFragment;

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->provision_container:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiProvisionSettingsActivity;->mMiuiWifiSettingsInstance:Lmiuix/preference/PreferenceFragment;

    .line 45
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 48
    sget p1, Lcom/android/settings/R$drawable;->provision_wifi:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->setPreviewView(Landroid/graphics/drawable/Drawable;)V

    .line 49
    sget p1, Lcom/android/settings/R$string;->connect_to_internet:I

    invoke-virtual {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->setTitle(I)V

    return-void
.end method

.method public onNextAminStart()V
    .locals 3

    .line 84
    invoke-super {p0}, Lmiuix/provision/ProvisionBaseActivity;->onNextAminStart()V

    const-string v0, "provision_wifi_page"

    .line 85
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPageEnd(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "provision_wifi_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    .line 87
    sput-boolean v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsDisableBack:Z

    const/4 v0, -0x1

    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 89
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 2

    const-string p0, "provision_wifi_next"

    .line 75
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 77
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "next"

    const-string v1, "provision_wifi_state"

    .line 78
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {v1, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected onSkipButtonClick()V
    .locals 3

    const-string v0, "provision_wifi_page"

    .line 62
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPageEnd(Ljava/lang/String;)V

    const-string v0, "provision_wifi_skip"

    .line 63
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "skip"

    const-string v2, "provision_wifi_state"

    .line 66
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {v2, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, -0x1

    .line 69
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public updateButtonState(Z)V
    .locals 2

    .line 100
    invoke-static {}, Lmiuix/provision/OobeUtil;->needFastAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lmiuix/provision/ProvisionBaseActivity;->mBackBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v1, Lcom/android/settings/wifi/WifiProvisionSettingsActivity;->NO_ALPHA:F

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/wifi/WifiProvisionSettingsActivity;->HALF_ALPHA:F

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 102
    iget-object p0, p0, Lmiuix/provision/ProvisionBaseActivity;->mBackBtn:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 104
    :cond_1
    invoke-super {p0, p1}, Lmiuix/provision/ProvisionBaseActivity;->updateButtonState(Z)V

    :goto_1
    return-void
.end method

.class public Lcom/android/settings/BackupImagePreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "BackupImagePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/android/settings/BackupImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/BackupImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 28
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 29
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    .line 31
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

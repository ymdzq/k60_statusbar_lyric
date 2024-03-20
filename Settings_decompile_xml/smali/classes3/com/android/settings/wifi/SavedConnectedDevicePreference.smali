.class public Lcom/android/settings/wifi/SavedConnectedDevicePreference;
.super Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;
.source "SavedConnectedDevicePreference.java"


# instance fields
.field private mBtnChecked:Z

.field private mInActinoMode:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->mBtnChecked:Z

    .line 20
    iput-boolean p1, p0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->mInActinoMode:Z

    .line 24
    sget p1, Lcom/android/settings/R$layout;->preference_connected_checkbox:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->mBtnChecked:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 30
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 31
    iput-object p1, p0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->mView:Landroid/view/View;

    .line 32
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 35
    iget-boolean p0, p0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->mBtnChecked:Z

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setActionMode(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->mInActinoMode:Z

    .line 40
    iget-object p0, p0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->mView:Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    .line 43
    :cond_0
    sget p1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method public setBtnChecked(Z)V
    .locals 1

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->mBtnChecked:Z

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 50
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

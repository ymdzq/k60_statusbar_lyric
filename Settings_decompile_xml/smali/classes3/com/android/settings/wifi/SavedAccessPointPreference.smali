.class public Lcom/android/settings/wifi/SavedAccessPointPreference;
.super Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;
.source "SavedAccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/SavedAccessPointPreference$OnLongClickListener;
    }
.end annotation


# instance fields
.field private mBtnChecked:Z

.field private mInActinoMode:Z

.field private mLongClickListener:Lcom/android/settings/wifi/SavedAccessPointPreference$OnLongClickListener;

.field private mView:Landroid/view/View;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public static synthetic $r8$lambda$Yj2TDfoWqvP9fgnrlxGU0-thY6w(Lcom/android/settings/wifi/SavedAccessPointPreference;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SavedAccessPointPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mBtnChecked:Z

    .line 19
    iput-boolean p2, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mInActinoMode:Z

    .line 25
    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 26
    sget p1, Lcom/android/settings/R$layout;->preference_checkbutton:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mLongClickListener:Lcom/android/settings/wifi/SavedAccessPointPreference$OnLongClickListener;

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1, p0}, Lcom/android/settings/wifi/SavedAccessPointPreference$OnLongClickListener;->onDeteleBtnClick(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mBtnChecked:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 42
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 43
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 44
    iget-object v1, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v1, :cond_0

    return-void

    .line 47
    :cond_0
    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mView:Landroid/view/View;

    .line 48
    sget v1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 49
    sget v2, Lcom/android/settings/R$id;->btn_delete:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    iget-boolean v2, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mInActinoMode:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 52
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 53
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    new-instance v2, Lcom/android/settings/wifi/SavedAccessPointPreference$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/SavedAccessPointPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/SavedAccessPointPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mBtnChecked:Z

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 65
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mLongClickListener:Lcom/android/settings/wifi/SavedAccessPointPreference$OnLongClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/SavedAccessPointPreference$OnLongClickListener;->onPreferenceLongClick(Landroidx/preference/Preference;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setActionMode(Z)V
    .locals 3

    .line 69
    iput-boolean p1, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mInActinoMode:Z

    .line 70
    iget-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->btn_delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    iget-boolean p0, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mInActinoMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p0, :cond_1

    .line 76
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setBtnChecked(Z)V
    .locals 1

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mBtnChecked:Z

    .line 86
    iget-object p0, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 87
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setLongClickListener(Lcom/android/settings/wifi/SavedAccessPointPreference$OnLongClickListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/wifi/SavedAccessPointPreference;->mLongClickListener:Lcom/android/settings/wifi/SavedAccessPointPreference$OnLongClickListener;

    return-void
.end method

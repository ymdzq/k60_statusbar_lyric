.class public Lcom/android/settingslib/widget/AppHeaderPreference;
.super Landroidx/preference/Preference;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mIsInstantApp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const p1, 0x7f0d003e    # @layout/app_header_preference 'res/layout/app_header_preference.xml'

    .line 5
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 11
    iget-boolean p2, p0, Lcom/android/settingslib/widget/AppHeaderPreference;->mIsInstantApp:Z

    .line 14
    if-eqz p2, :cond_0

    .line 16
    iput-boolean p1, p0, Lcom/android/settingslib/widget/AppHeaderPreference;->mIsInstantApp:Z

    .line 18
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 20
    :cond_0
    return-void
    .line 23
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    const v0, 0x7f0a0446    # @id/install_type

    .line 5
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    const/4 v1, 0x0

    .line 14
    const/16 v2, 0x8

    .line 15
    if-eqz v0, :cond_1

    .line 17
    iget-boolean p0, p0, Lcom/android/settingslib/widget/AppHeaderPreference;->mIsInstantApp:Z

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    :cond_1
    :goto_0
    const p0, 0x7f0a0842    # @id/second_summary

    .line 30
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p0

    .line 36
    check-cast p0, Landroid/widget/TextView;

    .line 37
    if-eqz p0, :cond_3

    .line 39
    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :cond_3
    :goto_1
    return-void
    .line 58
.end method

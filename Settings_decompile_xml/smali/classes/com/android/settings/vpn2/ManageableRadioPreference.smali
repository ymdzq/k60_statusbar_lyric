.class public Lcom/android/settings/vpn2/ManageableRadioPreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "ManageableRadioPreference.java"


# static fields
.field public static STATE_NONE:I = -0x1


# instance fields
.field mIsAlwaysOn:Z

.field mIsInsecureVpn:Z

.field mState:I

.field mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mIsAlwaysOn:Z

    .line 44
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mIsInsecureVpn:Z

    .line 45
    sget p2, Lcom/android/settings/vpn2/ManageableRadioPreference;->STATE_NONE:I

    iput p2, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mState:I

    .line 50
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 51
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 52
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/ManageableRadioPreference;->setUserId(I)V

    return-void
.end method


# virtual methods
.method public setAlwaysOn(Z)V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mIsAlwaysOn:Z

    if-eq v0, p1, :cond_0

    .line 92
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mIsAlwaysOn:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageableRadioPreference;->updateSummary()V

    :cond_0
    return-void
.end method

.method public setInsecureVpn(Z)V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mIsInsecureVpn:Z

    if-eq v0, p1, :cond_0

    .line 103
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mIsInsecureVpn:Z

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageableRadioPreference;->updateSummary()V

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/stat/commonswitch/TalkbackSwitch;->isTalkbackEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iput p1, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mState:I

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageableRadioPreference;->updateSummary()V

    .line 80
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    return-void

    .line 83
    :cond_0
    iget v0, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mState:I

    if-eq v0, p1, :cond_1

    .line 84
    iput p1, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mState:I

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageableRadioPreference;->updateSummary()V

    .line 86
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    :cond_1
    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mUserId:I

    return-void
.end method

.method protected updateSummary()V
    .locals 5

    .line 115
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    sget v1, Lcom/android/settings/R$array;->vpn_states:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 117
    iget v2, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mState:I

    array-length v3, v1

    if-lt v2, v3, :cond_0

    return-void

    .line 120
    :cond_0
    sget v3, Lcom/android/settings/vpn2/ManageableRadioPreference;->STATE_NONE:I

    if-ne v2, v3, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    aget-object v1, v1, v2

    .line 121
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mIsAlwaysOn:Z

    if-eqz v2, :cond_3

    .line 122
    sget v2, Lcom/android/settings/R$string;->vpn_always_on_summary_active:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    sget v3, Lcom/android/settings/R$string;->join_two_unrelated_items:I

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/vpn2/ManageableRadioPreference;->mIsInsecureVpn:Z

    if-eqz v2, :cond_5

    .line 127
    sget v2, Lcom/android/settings/R$string;->vpn_insecure_summary:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    sget v3, Lcom/android/settings/R$string;->join_two_unrelated_items:I

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 131
    :goto_2
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorErrorDefaultColor(Landroid/content/Context;)I

    move-result v1

    .line 133
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x22

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 135
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

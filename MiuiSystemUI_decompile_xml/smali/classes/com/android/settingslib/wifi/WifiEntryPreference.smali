.class public Lcom/android/settingslib/wifi/WifiEntryPreference;
.super Landroidx/preference/Preference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FRICTION_ATTRS:[I

.field public static final STATE_SECURED:[I

.field public static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field public mContentDescription:Ljava/lang/CharSequence;

.field public final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field public mLevel:I

.field public mShowX:Z

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public mWifiStandard:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x7f040705    # @attr/state_encrypted

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/settingslib/wifi/WifiEntryPreference;->STATE_SECURED:[I

    .line 9
    const v0, 0x7f0408b9    # @attr/wifi_friction

    .line 11
    filled-new-array {v0}, [I

    .line 14
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/settingslib/wifi/WifiEntryPreference;->FRICTION_ATTRS:[I

    .line 18
    const v0, 0x7f130105    # @string/accessibility_wifi_three_bars 'Wifi three bars.'

    .line 20
    const v1, 0x7f130104    # @string/accessibility_wifi_signal_full 'Wifi signal full.'

    .line 23
    const v2, 0x7f1300b7    # @string/accessibility_no_wifi 'Wifi disconnected.'

    .line 26
    const v3, 0x7f130101    # @string/accessibility_wifi_one_bar 'Wifi one bar.'

    .line 29
    const v4, 0x7f130106    # @string/accessibility_wifi_two_bars 'Wifi two bars.'

    .line 32
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 35
    move-result-object v0

    .line 38
    sput-object v0, Lcom/android/settingslib/wifi/WifiEntryPreference;->WIFI_CONNECTION_STRENGTH:[I

    .line 39
    return-void
    .line 41
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiEntryPreference$IconInjector;)V
    .locals 1

    .line 1
    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mLevel:I

    .line 7
    const p1, 0x7f0d02cb    # @layout/preference_access_point 'res/layout/preference_access_point.xml'

    .line 9
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 12
    const p1, 0x7f0d002f    # @layout/access_point_friction_widget 'res/layout/access_point_friction_widget.xml'

    .line 14
    iput p1, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 17
    :try_start_0
    iget-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    move-result-object p1

    .line 24
    sget-object v0, Lcom/android/settingslib/wifi/WifiEntryPreference;->FRICTION_ATTRS:[I

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 27
    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-object p1, p3

    .line 32
    :goto_0
    if-eqz p1, :cond_0

    .line 33
    const/4 p3, 0x0

    .line 35
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object p1

    .line 39
    move-object p3, p1

    .line 40
    check-cast p3, Landroid/graphics/drawable/StateListDrawable;

    .line 41
    :cond_0
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 43
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 45
    monitor-enter p2

    .line 47
    :try_start_1
    iput-object p0, p2, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit p2

    .line 50
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiEntryPreference;->refresh()V

    .line 51
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit p2

    .line 56
    throw p0
    .line 57
.end method


# virtual methods
.method public buildContentDescription()Ljava/lang/CharSequence;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    .line 6
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v3

    .line 13
    const-string v4, ","

    .line 14
    if-nez v3, :cond_0

    .line 16
    filled-new-array {v1, v4, v2}, [Ljava/lang/CharSequence;

    .line 18
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 22
    move-result-object v1

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 26
    iget v2, v2, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 28
    if-ltz v2, :cond_1

    .line 30
    const/4 v3, 0x5

    .line 32
    if-ge v2, v3, :cond_1

    .line 33
    sget-object v3, Lcom/android/settingslib/wifi/WifiEntryPreference;->WIFI_CONNECTION_STRENGTH:[I

    .line 35
    aget v2, v3, v2

    .line 37
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 42
    filled-new-array {v1, v4, v2}, [Ljava/lang/CharSequence;

    .line 43
    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 47
    move-result-object v1

    .line 50
    :cond_1
    const/4 v2, 0x3

    .line 51
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 52
    const/4 v3, 0x0

    .line 54
    aput-object v1, v2, v3

    .line 55
    const/4 v1, 0x1

    .line 57
    aput-object v4, v2, v1

    .line 58
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 60
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    .line 62
    move-result p0

    .line 65
    if-nez p0, :cond_2

    .line 66
    const p0, 0x7f130102    # @string/accessibility_wifi_security_type_none 'Open network'

    .line 68
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const p0, 0x7f130103    # @string/accessibility_wifi_security_type_secured 'Secure network'

    .line 76
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    :goto_0
    const/4 v0, 0x2

    .line 83
    aput-object p0, v2, v0

    .line 84
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 86
    move-result-object p0

    .line 89
    return-object p0
    .line 90
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget v1, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mLevel:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 13
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 20
    const v0, 0x7f0a0a1a    # @id/two_target_divider

    .line 23
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    const v0, 0x7f0a0418    # @id/icon_button

    .line 34
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/ImageButton;

    .line 41
    const v2, 0x7f0a0393    # @id/friction_icon

    .line 43
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/ImageView;

    .line 50
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    const/16 v2, 0x8

    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 59
    if-eqz p1, :cond_3

    .line 62
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 68
    if-nez v0, :cond_1

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 73
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 81
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    .line 83
    move-result v0

    .line 86
    if-eq v0, v1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 89
    sget-object v1, Lcom/android/settingslib/wifi/WifiEntryPreference;->STATE_SECURED:[I

    .line 91
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 93
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 96
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 98
    move-result-object p0

    .line 101
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_3
    :goto_0
    return-void
    .line 105
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    return-void
    .line 5
.end method

.method public final onUpdated()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiEntryPreference;->refresh()V

    .line 2
    return-void
    .line 5
.end method

.method public final refresh()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 2
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 11
    iget v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 13
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiStandard()I

    .line 15
    move-result v0

    .line 18
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 19
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    .line 21
    move-result v2

    .line 24
    iget v3, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mLevel:I

    .line 25
    if-ne v1, v3, :cond_0

    .line 27
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mShowX:Z

    .line 29
    if-ne v2, v3, :cond_0

    .line 31
    iget v3, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiStandard:I

    .line 33
    if-eq v0, v3, :cond_1

    .line 35
    :cond_0
    iput v1, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mLevel:I

    .line 37
    iput v0, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiStandard:I

    .line 39
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mShowX:Z

    .line 41
    const/4 v0, -0x1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-ne v1, v0, :cond_6

    .line 45
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 53
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 60
    iget-boolean v2, v1, Lcom/android/wifitrackerlib/WifiEntry;->mIsPskSaeTransitionMode:Z

    .line 62
    if-eqz v2, :cond_2

    .line 64
    const-string v1, "WPA3(SAE Transition Mode) "

    .line 66
    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-boolean v2, v1, Lcom/android/wifitrackerlib/WifiEntry;->mIsOweTransitionMode:Z

    .line 73
    if-eqz v2, :cond_3

    .line 75
    const-string v1, "WPA3(OWE Transition Mode) "

    .line 77
    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    .line 84
    move-result v1

    .line 87
    const/4 v2, 0x5

    .line 88
    if-ne v1, v2, :cond_4

    .line 89
    const-string v1, "WPA3(SAE) "

    .line 91
    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 98
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    .line 100
    move-result v1

    .line 103
    const/4 v2, 0x4

    .line 104
    if-ne v1, v2, :cond_5

    .line 105
    const-string v1, "WPA3(OWE) "

    .line 107
    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiEntryPreference;->buildContentDescription()Ljava/lang/CharSequence;

    .line 116
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiEntryPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 120
    return-void

    .line 122
    :cond_6
    throw v2
    .line 123
.end method

.class public Lcom/android/settingslib/wifi/AccessPointPreference;
.super Landroidx/preference/Preference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final STATE_METERED:[I

.field public static final STATE_SECURED:[I

.field public static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field public final mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field public final mBadgePadding:I

.field public final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field public final mLevel:I

.field public final mNotifyChanged:Lcom/android/settingslib/wifi/AccessPointPreference$1;

.field public mTitleView:Landroid/widget/TextView;


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
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 9
    const v0, 0x7f04070d    # @attr/state_metered

    .line 11
    filled-new-array {v0}, [I

    .line 14
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

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
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    .line 39
    return-void
    .line 41
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Lcom/android/settingslib/wifi/AccessPointPreference$1;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZLandroid/graphics/drawable/StateListDrawable;ILcom/android/settingslib/wifi/AccessPointPreference$IconInjector;)V
    .locals 0

    const/4 p3, 0x0

    .line 5
    invoke-direct {p0, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p3, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {p3, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Lcom/android/settingslib/wifi/AccessPointPreference$1;

    const p3, 0x7f0d02cb    # @layout/preference_access_point 'res/layout/preference_access_point.xml'

    .line 7
    iput p3, p0, Landroidx/preference/Preference;->mLayoutResId:I

    const p3, 0x7f0d002f    # @layout/access_point_friction_widget 'res/layout/access_point_friction_widget.xml'

    .line 8
    iput p3, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 9
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iput p7, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    .line 12
    iput-object p6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07128a    # @dimen/wifi_preference_badge_padding '8.0dp'

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    return-void
.end method

.method public static buildContentDescription(Landroid/content/Context;Landroidx/preference/Preference;Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    .line 6
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 13
    const-string v2, ","

    .line 14
    if-nez v1, :cond_0

    .line 16
    filled-new-array {v0, v2, p1}, [Ljava/lang/CharSequence;

    .line 18
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 22
    move-result-object v0

    .line 25
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    .line 26
    move-result p1

    .line 29
    if-ltz p1, :cond_1

    .line 30
    const/4 v1, 0x5

    .line 32
    if-ge p1, v1, :cond_1

    .line 33
    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    .line 35
    aget p1, v1, p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 42
    filled-new-array {v0, v2, p1}, [Ljava/lang/CharSequence;

    .line 43
    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 47
    move-result-object v0

    .line 50
    :cond_1
    const/4 p1, 0x3

    .line 51
    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 52
    const/4 v1, 0x0

    .line 54
    aput-object v0, p1, v1

    .line 55
    const/4 v0, 0x1

    .line 57
    aput-object v2, p1, v0

    .line 58
    iget p2, p2, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 60
    if-nez p2, :cond_2

    .line 62
    const p2, 0x7f130102    # @string/accessibility_wifi_security_type_none 'Open network'

    .line 64
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const p2, 0x7f130103    # @string/accessibility_wifi_security_type_secured 'Secure network'

    .line 72
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 78
    :goto_0
    const/4 p2, 0x2

    .line 79
    aput-object p0, p1, p2

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 82
    move-result-object p0

    .line 85
    return-object p0
    .line 86
.end method

.method public static setTitle(Lcom/android/settingslib/wifi/AccessPointPreference;Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final notifyChanged()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Lcom/android/settingslib/wifi/AccessPointPreference$1;

    .line 16
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 22
    :cond_1
    :goto_0
    return-void
    .line 25
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 18
    :cond_1
    const v0, 0x1020016    # @android:id/title

    .line 21
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 30
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 38
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 42
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f0a0393    # @id/friction_icon

    .line 50
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/ImageView;

    .line 57
    const/4 v1, 0x4

    .line 59
    if-eqz v0, :cond_8

    .line 60
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 62
    if-nez v2, :cond_3

    .line 64
    goto :goto_3

    .line 66
    :cond_3
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 67
    iget v4, v3, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 69
    if-eqz v4, :cond_4

    .line 71
    if-eq v4, v1, :cond_4

    .line 73
    sget-object v3, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 75
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 77
    goto :goto_2

    .line 80
    :cond_4
    iget-boolean v2, v3, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 81
    if-nez v2, :cond_6

    .line 83
    iget-object v2, v3, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 85
    iget-object v3, v3, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 87
    invoke-static {v2, v3}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    .line 89
    move-result v2

    .line 92
    if-eqz v2, :cond_5

    .line 93
    goto :goto_0

    .line 95
    :cond_5
    const/4 v2, 0x0

    .line 96
    goto :goto_1

    .line 97
    :cond_6
    :goto_0
    const/4 v2, 0x1

    .line 98
    :goto_1
    if-eqz v2, :cond_7

    .line 99
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 101
    sget-object v3, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    .line 103
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 105
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 108
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 110
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_8
    :goto_3
    const p0, 0x7f0a0a1a    # @id/two_target_divider

    .line 117
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 120
    move-result-object p0

    .line 123
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    return-void
    .line 127
.end method

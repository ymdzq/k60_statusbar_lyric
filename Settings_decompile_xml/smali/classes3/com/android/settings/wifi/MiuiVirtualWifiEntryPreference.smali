.class public Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "MiuiVirtualWifiEntryPreference.java"


# static fields
.field static final BATTERY_LEVEL:[I


# instance fields
.field private mBatteryLevel:I

.field private mContext:Landroid/content/Context;

.field private mHelper:Lmiuix/preference/ConnectPreferenceHelper;

.field private mIs5GHz:Z

.field private mState:I

.field private mTitle:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 38
    sget v2, Lcom/android/settings/R$drawable;->ap_battery_10:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_20:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_30:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_40:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_50:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_60:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_70:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_80:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_90:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_100:I

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->BATTERY_LEVEL:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;IZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->init(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method private getBatteryLevel()I
    .locals 1

    .line 151
    iget p0, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mBatteryLevel:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    .line 152
    div-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    :cond_1
    :goto_0
    return p0
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mTitle:Ljava/lang/String;

    .line 59
    iput p3, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mBatteryLevel:I

    .line 60
    iput-boolean p4, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mIs5GHz:Z

    .line 61
    sget p1, Lcom/android/settings/R$layout;->accesspoint_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 62
    sget p1, Lcom/android/settings/R$layout;->preference_widget_ap_battery:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 67
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 68
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mView:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lmiuix/preference/ConnectPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    sget v2, Lcom/android/settings/R$id;->l_highlight:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lmiuix/preference/ConnectPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    .line 73
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->highlight_side_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->highlight_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->highlight_side_right_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/4 v4, 0x0

    .line 75
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    sget v1, Lcom/android/settings/R$id;->cardview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget p1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mState:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateState(I)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MiuiSettingsPanelActivity"

    .line 82
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mView:Landroid/view/View;

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 86
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 87
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    :cond_1
    sget p1, Lcom/android/settings/R$id;->preference_detail:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->network_detail:I

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mTitle:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    .line 94
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x1020010    # @android:id/summary

    .line 96
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p1, 0x1020016    # @android:id/title

    .line 97
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 99
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->wifi_title_compound_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 100
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 102
    sget v2, Lcom/android/settings/R$id;->wifi_band:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 103
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 105
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/settings/R$drawable;->band_wifi_5g:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 106
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mIs5GHz:Z

    if-eqz v1, :cond_5

    .line 108
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 111
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v2, v1

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    if-eqz v3, :cond_4

    move v2, v4

    .line 113
    :cond_4
    invoke-virtual {p1, v1, v4, v2, v4}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    .line 115
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 117
    iget p1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mBatteryLevel:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateBatteryLevel(I)V

    return-void
.end method

.method public updateBatteryLevel(I)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 136
    iput p1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mBatteryLevel:I

    .line 137
    sget p1, Lcom/android/settings/R$id;->encryption:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 140
    iget v0, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mBatteryLevel:I

    if-gez v0, :cond_0

    const/4 p0, 0x4

    .line 141
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->BATTERY_LEVEL:[I

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->getBatteryLevel()I

    move-result p0

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateIcon()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->wifi_metered:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public updateState(I)V
    .locals 1

    .line 121
    iput p1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mState:I

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lmiuix/preference/ConnectPreferenceHelper;->getConnectState()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 125
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    :cond_0
    return-void
.end method

.method public updateSummary()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->wifi_status:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->mState:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;
.implements Landroid/view/Window$Callback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field protected mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

.field public mAirplaneModeButton:Landroid/widget/Button;

.field public mAirplaneModeSummaryText:Landroid/widget/TextView;

.field public mAlertDialog:Landroid/app/AlertDialog;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public mBackgroundOff:Landroid/graphics/drawable/Drawable;

.field public mBackgroundOn:Landroid/graphics/drawable/Drawable;

.field public final mCanChangeWifiState:Z

.field public final mCanConfigMobileData:Z

.field protected mCanConfigWifi:Z

.field public mConnectedWifListLayout:Landroid/widget/LinearLayout;

.field protected mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public mConnectedWifiIcon:Landroid/widget/ImageView;

.field public mConnectedWifiSummaryText:Landroid/widget/TextView;

.field public mConnectedWifiTitleText:Landroid/widget/TextView;

.field public final mContext:Landroid/content/Context;

.field public mDefaultDataSubId:I

.field public final mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field protected mDialogView:Landroid/view/View;

.field public mDivider:Landroid/view/View;

.field public mDoneButton:Landroid/widget/Button;

.field public mEthernetLayout:Landroid/widget/LinearLayout;

.field public final mHandler:Landroid/os/Handler;

.field protected mHasMoreWifiEntries:Z

.field public final mHideProgressBarRunnable:Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

.field public final mHideSearchingRunnable:Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

.field public final mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field public final mInternetDialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

.field public mInternetDialogSubTitle:Landroid/widget/TextView;

.field public mInternetDialogTitle:Landroid/widget/TextView;

.field public mIsProgressBarVisible:Z

.field public mIsSearchingHidden:Z

.field public final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mMobileDataToggle:Landroid/widget/Switch;

.field public mMobileNetworkLayout:Landroid/widget/LinearLayout;

.field public mMobileSummaryText:Landroid/widget/TextView;

.field public mMobileTitleText:Landroid/widget/TextView;

.field public mMobileToggleDivider:Landroid/view/View;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

.field public mSecondaryMobileSummaryText:Landroid/widget/TextView;

.field public mSecondaryMobileTitleText:Landroid/widget/TextView;

.field public mSeeAllLayout:Landroid/widget/LinearLayout;

.field public mSignalIcon:Landroid/widget/ImageView;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTurnWifiOnLayout:Landroid/widget/LinearLayout;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mWiFiToggle:Landroid/widget/Switch;

.field protected mWifiEntriesCount:I

.field public mWifiNetworkHeight:I

.field public mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

.field public mWifiScanNotifyText:Landroid/widget/TextView;

.field public mWifiSettingsIcon:Landroid/widget/ImageView;

.field public mWifiToggleTitleText:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "InternetDialog"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;ZZLcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    .line 6
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    .line 9
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideProgressBarRunnable:Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    .line 17
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    .line 19
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V

    .line 22
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideSearchingRunnable:Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    .line 25
    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    .line 27
    if-eqz v0, :cond_0

    .line 29
    const-string v0, "InternetDialog"

    .line 31
    const-string v3, "Init InternetDialog"

    .line 33
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 42
    iput-object p8, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p9, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

    .line 48
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 50
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-virtual {p3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getDefaultDataSubscriptionId()I

    .line 55
    move-result p2

    .line 58
    iput p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    .line 59
    iget-object p2, p3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 63
    iput-boolean p4, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigMobileData:Z

    .line 65
    iput-boolean p5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigWifi:Z

    .line 67
    const-string p2, "no_change_wifi_state"

    .line 69
    invoke-static {p1, p2}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->hasUserRestrictionFromT(Landroid/content/Context;Ljava/lang/String;)Z

    .line 71
    move-result p1

    .line 74
    if-nez p1, :cond_1

    .line 75
    move v1, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const-string p1, "WifiEntResUtils"

    .line 79
    const-string p2, "WI-FI state isn\'t allowed to change due to user restriction."

    .line 81
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanChangeWifiState:Z

    .line 86
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 88
    iput-object p6, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 90
    iput-object p7, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 92
    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    .line 94
    invoke-direct {p1, p3}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    .line 96
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    .line 99
    return-void
    .line 101
.end method


# virtual methods
.method public final getMobileNetworkSummary(I)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConfig:Lcom/android/systemui/statusbar/mobile/MobileMappings$Config;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyDisplayInfoMap:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 11
    sget-object v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEFAULT_TELEPHONY_DISPLAY_INFO:Landroid/telephony/TelephonyDisplayInfo;

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/telephony/TelephonyDisplayInfo;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 20
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    .line 22
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/mobile/MobileMappings;->getIconKey(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    invoke-static {}, Lcom/android/systemui/statusbar/mobile/MobileMappings;->mapIconSets()Ljava/util/Map;

    .line 30
    invoke-static {}, Lcom/android/systemui/statusbar/mobile/MobileMappings;->mapIconSets()Ljava/util/Map;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Ljava/util/HashMap;

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    .line 43
    if-nez v1, :cond_0

    .line 45
    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    .line 47
    if-eqz v0, :cond_3

    .line 49
    const-string v0, "InternetDialogController"

    .line 51
    const-string v1, "The description of network type is empty."

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    goto :goto_1

    .line 58
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/mobile/MobileMappings;->mapIconSets()Ljava/util/Map;

    .line 59
    move-result-object v1

    .line 62
    check-cast v1, Ljava/util/HashMap;

    .line 63
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 68
    check-cast v0, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 69
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isCarrierNetworkActive()Z

    .line 74
    move-result v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[I

    .line 80
    const v0, 0x7f130352    # @string/data_connection_carrier_wifi 'W+'

    .line 82
    goto :goto_0

    .line 85
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCarrierNetworkChangeMode:Z

    .line 86
    if-eqz v1, :cond_2

    .line 88
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[I

    .line 90
    const v0, 0x7f130251    # @string/carrier_network_change_mode 'Carrier network changing'

    .line 92
    goto :goto_0

    .line 95
    :cond_2
    iget v0, v0, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;->dataContentDescription:I

    .line 96
    :goto_0
    if-eqz v0, :cond_3

    .line 98
    invoke-static {v2, p1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    .line 100
    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    :goto_1
    const-string v0, ""

    .line 109
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    .line 111
    move-result v1

    .line 114
    if-nez v1, :cond_4

    .line 115
    const p0, 0x7f1307b8    # @string/mobile_data_off_summary 'Mobile data won't auto‑connect'

    .line 117
    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 123
    goto :goto_8

    .line 124
    :cond_4
    iget v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    .line 125
    const/4 v3, 0x1

    .line 127
    const/4 v4, 0x0

    .line 128
    if-ne p1, v1, :cond_5

    .line 129
    move v1, v3

    .line 131
    goto :goto_3

    .line 132
    :cond_5
    move v1, v4

    .line 133
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getActiveAutoSwitchNonDdsSubId()I

    .line 134
    move-result v5

    .line 137
    const/4 v6, -0x1

    .line 138
    if-eq v5, v6, :cond_6

    .line 139
    move v5, v3

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    move v5, v4

    .line 143
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    .line 144
    move-result v6

    .line 147
    if-nez v6, :cond_8

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isCarrierNetworkActive()Z

    .line 150
    move-result v6

    .line 153
    if-eqz v6, :cond_7

    .line 154
    goto :goto_5

    .line 156
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isDataStateInService(I)Z

    .line 157
    move-result p0

    .line 160
    if-nez p0, :cond_b

    .line 161
    const p0, 0x7f1307b7    # @string/mobile_data_no_connection 'No connection'

    .line 163
    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 169
    goto :goto_7

    .line 170
    :cond_8
    :goto_5
    const/4 p0, 0x2

    .line 171
    new-array p0, p0, [Ljava/lang/Object;

    .line 172
    if-eqz v1, :cond_a

    .line 174
    if-eqz v5, :cond_9

    .line 176
    const p1, 0x7f1307b9    # @string/mobile_data_poor_connection 'Poor connection'

    .line 178
    goto :goto_6

    .line 181
    :cond_9
    const p1, 0x7f1307b3    # @string/mobile_data_connection_active 'Connected'

    .line 182
    goto :goto_6

    .line 185
    :cond_a
    const p1, 0x7f1307bb    # @string/mobile_data_temp_connection_active 'Temporarily connected'

    .line 186
    :goto_6
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 192
    aput-object p1, p0, v4

    .line 193
    aput-object v0, p0, v3

    .line 195
    const p1, 0x7f130916    # @string/preference_summary_default_combination '%1$s / %2$s'

    .line 197
    invoke-virtual {v2, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    move-result-object v0

    .line 203
    :cond_b
    :goto_7
    move-object p0, v0

    .line 204
    :goto_8
    return-object p0
    .line 205
.end method

.method public final getMobileNetworkTitle(I)Ljava/lang/CharSequence;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda1;

    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    .line 9
    new-instance v1, Ljava/util/HashSet;

    .line 12
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda1;->get()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Ljava/util/stream/Stream;

    .line 21
    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;

    .line 23
    const/4 v4, 0x0

    .line 25
    invoke-direct {v3, v1, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;I)V

    .line 26
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 29
    move-result-object v2

    .line 32
    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;

    .line 33
    invoke-direct {v3, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 35
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 38
    move-result-object v2

    .line 41
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 42
    move-result-object v3

    .line 45
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 49
    check-cast v2, Ljava/util/Set;

    .line 50
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 52
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda1;->get()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 58
    check-cast v3, Ljava/util/stream/Stream;

    .line 59
    new-instance v5, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda5;

    .line 61
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {v5, v2, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;Landroid/content/Context;)V

    .line 65
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 68
    move-result-object v3

    .line 71
    new-instance v5, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;

    .line 72
    const/4 v6, 0x1

    .line 74
    invoke-direct {v5, v1, v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;I)V

    .line 75
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 78
    move-result-object v1

    .line 81
    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;

    .line 82
    invoke-direct {v3, v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 84
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 87
    move-result-object v1

    .line 90
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 91
    move-result-object v3

    .line 94
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 98
    check-cast v1, Ljava/util/Set;

    .line 99
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda1;->get()Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 104
    check-cast v0, Ljava/util/stream/Stream;

    .line 105
    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda5;

    .line 107
    invoke-direct {v3, v2, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;Landroid/content/Context;)V

    .line 109
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 112
    move-result-object p0

    .line 115
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda4;

    .line 116
    invoke-direct {v0, v4, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 118
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 121
    move-result-object p0

    .line 124
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;

    .line 125
    const/4 v1, 0x2

    .line 127
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 128
    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;

    .line 131
    const/4 v2, 0x3

    .line 133
    invoke-direct {v1, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 134
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 137
    move-result-object v0

    .line 140
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 141
    move-result-object p0

    .line 144
    check-cast p0, Ljava/util/Map;

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object p1

    .line 150
    const-string v0, ""

    .line 151
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-result-object p0

    .line 156
    check-cast p0, Ljava/lang/CharSequence;

    .line 157
    return-object p0
    .line 159
.end method

.method public final getSignalStrengthDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    .line 4
    const v1, 0x7f0811af    # @drawable/ic_signal_strength_zero_bar_no_internet 'res/drawable/ic_signal_strength_zero_bar_no_internet.xml'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 13
    if-nez v2, :cond_0

    .line 15
    sget-boolean p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    .line 17
    if-eqz p0, :cond_5

    .line 19
    const-string p0, "InternetDialogController"

    .line 21
    const-string p1, "TelephonyManager is null"

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isCarrierNetworkActive()Z

    .line 29
    move-result v2

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isDataStateInService(I)Z

    .line 33
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isVoiceStateInService(I)Z

    .line 39
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    if-eqz v2, :cond_2

    .line 45
    :cond_1
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 49
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getSignalStrengthDrawableWithLevel(IZ)Landroid/graphics/drawable/Drawable;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 62
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 63
    move-object v1, p1

    .line 65
    :cond_2
    const/4 p1, 0x0

    .line 66
    const v3, 0x1010212    # @android:attr/textColorTertiary

    .line 67
    invoke-static {v0, v3, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 70
    move-result p1

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    .line 74
    move-result p0

    .line 77
    if-nez p0, :cond_3

    .line 78
    if-eqz v2, :cond_4

    .line 80
    :cond_3
    const p0, 0x7f0600a6    # @color/connected_network_primary_color '#191c18'

    .line 82
    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    .line 85
    move-result p1

    .line 88
    :cond_4
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    :cond_5
    :goto_0
    return-object v1
    .line 97
.end method

.method public final getSubtitleText()Ljava/lang/CharSequence;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsProgressBarVisible:Z

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsSearchingHidden:Z

    .line 10
    if-nez p0, :cond_0

    .line 12
    move p0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p0, v3

    .line 16
    :goto_0
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    .line 17
    sget-boolean v4, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    .line 19
    const-string v5, "InternetDialogController"

    .line 21
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    .line 23
    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isWifiEnabled()Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    if-eqz v4, :cond_1

    .line 33
    const-string p0, "Wi-Fi off."

    .line 35
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    sget p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_WIFI_IS_OFF:I

    .line 40
    invoke-virtual {v6, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 42
    move-result-object p0

    .line 45
    goto/16 :goto_3

    .line 46
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 48
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 50
    move-result v1

    .line 53
    xor-int/2addr v1, v2

    .line 54
    if-eqz v1, :cond_4

    .line 55
    if-eqz v4, :cond_3

    .line 57
    const-string p0, "The device is locked."

    .line 59
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_3
    sget p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_UNLOCK_TO_VIEW_NETWORKS:I

    .line 64
    invoke-virtual {v6, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 66
    move-result-object p0

    .line 69
    goto/16 :goto_3

    .line 70
    :cond_4
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasWifiEntries:Z

    .line 72
    if-eqz v1, :cond_5

    .line 74
    iget-boolean p0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    .line 76
    if-eqz p0, :cond_f

    .line 78
    sget p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_TAP_A_NETWORK_TO_CONNECT:I

    .line 80
    invoke-virtual {v6, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 82
    move-result-object p0

    .line 85
    goto/16 :goto_3

    .line 86
    :cond_5
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    .line 88
    if-eqz v1, :cond_6

    .line 90
    if-eqz p0, :cond_6

    .line 92
    sget p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_SEARCHING_FOR_NETWORKS:I

    .line 94
    invoke-virtual {v6, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 96
    move-result-object p0

    .line 99
    goto/16 :goto_3

    .line 100
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isCarrierNetworkActive()Z

    .line 102
    move-result p0

    .line 105
    sget v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_NON_CARRIER_NETWORK_UNAVAILABLE:I

    .line 106
    if-eqz p0, :cond_7

    .line 108
    invoke-virtual {v6, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 110
    move-result-object p0

    .line 113
    goto/16 :goto_3

    .line 114
    :cond_7
    if-eqz v4, :cond_8

    .line 116
    const-string p0, "No Wi-Fi item."

    .line 118
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_8
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getActiveAutoSwitchNonDdsSubId()I

    .line 123
    move-result p0

    .line 126
    const/4 v7, -0x1

    .line 127
    if-eq p0, v7, :cond_9

    .line 128
    goto :goto_1

    .line 130
    :cond_9
    move v2, v3

    .line 131
    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->hasActiveSubId()Z

    .line 132
    move-result p0

    .line 135
    sget v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_ALL_CARRIER_NETWORK_UNAVAILABLE:I

    .line 136
    if-eqz p0, :cond_10

    .line 138
    iget p0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    .line 140
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isVoiceStateInService(I)Z

    .line 142
    move-result p0

    .line 145
    if-nez p0, :cond_a

    .line 146
    iget p0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    .line 148
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isDataStateInService(I)Z

    .line 150
    move-result p0

    .line 153
    if-nez p0, :cond_a

    .line 154
    if-nez v2, :cond_a

    .line 156
    goto :goto_2

    .line 158
    :cond_a
    iget-boolean p0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    .line 159
    if-eqz p0, :cond_c

    .line 161
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    .line 163
    move-result p0

    .line 166
    if-nez p0, :cond_c

    .line 167
    if-eqz v4, :cond_b

    .line 169
    const-string p0, "Mobile data off"

    .line 171
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_b
    invoke-virtual {v6, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 176
    move-result-object p0

    .line 179
    goto :goto_3

    .line 180
    :cond_c
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    .line 181
    move-result p0

    .line 184
    if-nez p0, :cond_e

    .line 185
    if-eqz v4, :cond_d

    .line 187
    const-string p0, "No carrier data."

    .line 189
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_d
    invoke-virtual {v6, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 194
    move-result-object p0

    .line 197
    goto :goto_3

    .line 198
    :cond_e
    iget-boolean p0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    .line 199
    if-eqz p0, :cond_f

    .line 201
    invoke-virtual {v6, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 203
    move-result-object p0

    .line 206
    goto :goto_3

    .line 207
    :cond_f
    const/4 p0, 0x0

    .line 208
    goto :goto_3

    .line 209
    :cond_10
    :goto_2
    if-eqz v4, :cond_11

    .line 210
    const-string p0, "No carrier or service is out of service."

    .line 212
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_11
    invoke-virtual {v6, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 217
    move-result-object p0

    .line 220
    :goto_3
    return-object p0
    .line 221
.end method

.method public getWifiListMaxCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mEthernetLayout:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-nez v0, :cond_0

    .line 9
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x4

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 16
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 22
    :cond_1
    if-le v0, v1, :cond_2

    .line 24
    goto :goto_1

    .line 26
    :cond_2
    move v1, v0

    .line 27
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 30
    move-result p0

    .line 33
    if-nez p0, :cond_3

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 36
    :cond_3
    return v1
    .line 38
.end method

.method public hideWifiViews()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->setProgressBarVisible(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    .line 6
    const/16 v1, 0x8

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSeeAllLayout:Landroid/widget/LinearLayout;

    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    return-void
    .line 28
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-boolean p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const-string p1, "InternetDialog"

    .line 9
    const-string v0, "onCreate"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 16
    sget-object v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$InternetDialogEvent;->INTERNET_DIALOG_SHOW:Lcom/android/systemui/qs/tiles/dialog/InternetDialog$InternetDialogEvent;

    .line 18
    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 20
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    move-result-object p1

    .line 28
    const v0, 0x7f0d00e4    # @layout/internet_connectivity_dialog 'res/layout/internet_connectivity_dialog.xml'

    .line 29
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 39
    const v2, 0x7f13006e    # @string/accessibility_desc_quick_settings 'Quick settings.'

    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 44
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 51
    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 57
    const v0, 0x7f140019    # @style/Animation.InternetDialog

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 63
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object p1

    .line 71
    const v0, 0x7f070422    # @dimen/internet_dialog_wifi_network_height '72.0dp'

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    move-result p1

    .line 78
    iput p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiNetworkHeight:I

    .line 79
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 81
    const v0, 0x7f0a0448    # @id/internet_connectivity_dialog

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 86
    move-result-object p1

    .line 89
    check-cast p1, Landroid/widget/LinearLayout;

    .line 90
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 92
    const v0, 0x7f0a044b    # @id/internet_dialog_title

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 97
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/TextView;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogTitle:Landroid/widget/TextView;

    .line 103
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 105
    const v0, 0x7f0a044a    # @id/internet_dialog_subtitle

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 110
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/TextView;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogSubTitle:Landroid/widget/TextView;

    .line 116
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 118
    const v0, 0x7f0a02e3    # @id/divider

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 123
    move-result-object p1

    .line 126
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDivider:Landroid/view/View;

    .line 127
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 129
    const v0, 0x7f0a0ab7    # @id/wifi_searching_progress

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 134
    move-result-object p1

    .line 137
    check-cast p1, Landroid/widget/ProgressBar;

    .line 138
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 140
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 142
    const v0, 0x7f0a0340    # @id/ethernet_layout

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 147
    move-result-object p1

    .line 150
    check-cast p1, Landroid/widget/LinearLayout;

    .line 151
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mEthernetLayout:Landroid/widget/LinearLayout;

    .line 153
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 155
    const v0, 0x7f0a05f7    # @id/mobile_network_layout

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 160
    move-result-object p1

    .line 163
    check-cast p1, Landroid/widget/LinearLayout;

    .line 164
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 166
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 168
    const v0, 0x7f0a09fb    # @id/turn_on_wifi_layout

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 173
    move-result-object p1

    .line 176
    check-cast p1, Landroid/widget/LinearLayout;

    .line 177
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    .line 179
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 181
    const v0, 0x7f0a0ac0    # @id/wifi_toggle_title

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 186
    move-result-object p1

    .line 189
    check-cast p1, Landroid/widget/TextView;

    .line 190
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiToggleTitleText:Landroid/widget/TextView;

    .line 192
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 194
    const v0, 0x7f0a0ab5    # @id/wifi_scan_notify_layout

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 199
    move-result-object p1

    .line 202
    check-cast p1, Landroid/widget/LinearLayout;

    .line 203
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

    .line 205
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 207
    const v0, 0x7f0a0ab6    # @id/wifi_scan_notify_text

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 212
    move-result-object p1

    .line 215
    check-cast p1, Landroid/widget/TextView;

    .line 216
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyText:Landroid/widget/TextView;

    .line 218
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 220
    const v0, 0x7f0a0aaa    # @id/wifi_connected_layout

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 225
    move-result-object p1

    .line 228
    check-cast p1, Landroid/widget/LinearLayout;

    .line 229
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    .line 231
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 233
    const v0, 0x7f0a0aa9    # @id/wifi_connected_icon

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 238
    move-result-object p1

    .line 241
    check-cast p1, Landroid/widget/ImageView;

    .line 242
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiIcon:Landroid/widget/ImageView;

    .line 244
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 246
    const v0, 0x7f0a0aac    # @id/wifi_connected_title

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 251
    move-result-object p1

    .line 254
    check-cast p1, Landroid/widget/TextView;

    .line 255
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiTitleText:Landroid/widget/TextView;

    .line 257
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 259
    const v0, 0x7f0a0aab    # @id/wifi_connected_summary

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 264
    move-result-object p1

    .line 267
    check-cast p1, Landroid/widget/TextView;

    .line 268
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiSummaryText:Landroid/widget/TextView;

    .line 270
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 272
    const v0, 0x7f0a0ab8    # @id/wifi_settings_icon

    .line 274
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 277
    move-result-object p1

    .line 280
    check-cast p1, Landroid/widget/ImageView;

    .line 281
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiSettingsIcon:Landroid/widget/ImageView;

    .line 283
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 285
    const v0, 0x7f0a0ab2    # @id/wifi_list_layout

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 290
    move-result-object p1

    .line 293
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 294
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 296
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 298
    const v0, 0x7f0a084c    # @id/see_all_layout

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 303
    move-result-object p1

    .line 306
    check-cast p1, Landroid/widget/LinearLayout;

    .line 307
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSeeAllLayout:Landroid/widget/LinearLayout;

    .line 309
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 311
    const v0, 0x7f0a02ec    # @id/done_button

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 316
    move-result-object p1

    .line 319
    check-cast p1, Landroid/widget/Button;

    .line 320
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDoneButton:Landroid/widget/Button;

    .line 322
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 324
    const v0, 0x7f0a00c2    # @id/apm_button

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 329
    move-result-object p1

    .line 332
    check-cast p1, Landroid/widget/Button;

    .line 333
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAirplaneModeButton:Landroid/widget/Button;

    .line 335
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 337
    const v0, 0x7f0a0885    # @id/signal_icon

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 342
    move-result-object p1

    .line 345
    check-cast p1, Landroid/widget/ImageView;

    .line 346
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSignalIcon:Landroid/widget/ImageView;

    .line 348
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 350
    const v0, 0x7f0a0602    # @id/mobile_title

    .line 352
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 355
    move-result-object p1

    .line 358
    check-cast p1, Landroid/widget/TextView;

    .line 359
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileTitleText:Landroid/widget/TextView;

    .line 361
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 363
    const v0, 0x7f0a0601    # @id/mobile_summary

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 368
    move-result-object p1

    .line 371
    check-cast p1, Landroid/widget/TextView;

    .line 372
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    .line 374
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 376
    const v0, 0x7f0a00a1    # @id/airplane_mode_summary

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 381
    move-result-object p1

    .line 384
    check-cast p1, Landroid/widget/TextView;

    .line 385
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAirplaneModeSummaryText:Landroid/widget/TextView;

    .line 387
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 389
    const v0, 0x7f0a0604    # @id/mobile_toggle_divider

    .line 391
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 394
    move-result-object p1

    .line 397
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileToggleDivider:Landroid/view/View;

    .line 398
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 400
    const v0, 0x7f0a0603    # @id/mobile_toggle

    .line 402
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 405
    move-result-object p1

    .line 408
    check-cast p1, Landroid/widget/Switch;

    .line 409
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    .line 411
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 413
    const v0, 0x7f0a0abe    # @id/wifi_toggle

    .line 415
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 418
    move-result-object p1

    .line 421
    check-cast p1, Landroid/widget/Switch;

    .line 422
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWiFiToggle:Landroid/widget/Switch;

    .line 424
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 426
    const v0, 0x7f0817b9    # @drawable/settingslib_switch_bar_bg_on 'res/drawable/settingslib_switch_bar_bg_on.xml'

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 431
    move-result-object p1

    .line 434
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    .line 435
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogTitle:Landroid/widget/TextView;

    .line 437
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 439
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    .line 441
    move-result v2

    .line 444
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    .line 445
    if-eqz v2, :cond_1

    .line 447
    const v2, 0x7f130134    # @string/airplane_mode 'Airplane mode'

    .line 449
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 452
    move-result-object v0

    .line 455
    goto :goto_0

    .line 456
    :cond_1
    const v2, 0x7f1309b8    # @string/quick_settings_internet_label 'Internet'

    .line 457
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 460
    move-result-object v0

    .line 463
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogTitle:Landroid/widget/TextView;

    .line 467
    const v0, 0x800013

    .line 469
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 472
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 475
    const v0, 0x7f081210    # @drawable/internet_dialog_selected_effect 'res/drawable/internet_dialog_selected_effect.xml'

    .line 477
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 480
    move-result-object p1

    .line 483
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    .line 484
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 486
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;

    .line 488
    const/4 v2, 0x0

    .line 490
    invoke-direct {v0, v2, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 491
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    .line 497
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;

    .line 499
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V

    .line 501
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 504
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    .line 507
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;

    .line 509
    const/4 v3, 0x1

    .line 511
    invoke-direct {v0, v3, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 512
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSeeAllLayout:Landroid/widget/LinearLayout;

    .line 518
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;

    .line 520
    const/4 v4, 0x2

    .line 522
    invoke-direct {v0, v4, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 523
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWiFiToggle:Landroid/widget/Switch;

    .line 529
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;

    .line 531
    invoke-direct {v0, p0, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V

    .line 533
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 536
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDoneButton:Landroid/widget/Button;

    .line 539
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;

    .line 541
    const/4 v4, 0x3

    .line 543
    invoke-direct {v0, v4, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 544
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAirplaneModeButton:Landroid/widget/Button;

    .line 550
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;

    .line 552
    const/4 v4, 0x4

    .line 554
    invoke-direct {v0, v4, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 555
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    .line 561
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 563
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAirplaneModeButton:Landroid/widget/Button;

    .line 566
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 568
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    .line 570
    move-result v0

    .line 573
    if-eqz v0, :cond_2

    .line 574
    goto :goto_1

    .line 576
    :cond_2
    const/16 v2, 0x8

    .line 577
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 579
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 582
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 584
    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 586
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 589
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 592
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    .line 594
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 596
    return-void
    .line 599
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 17
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method public final setProgressBarVisible(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsProgressBarVisible:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsProgressBarVisible:Z

    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 9
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x8

    .line 12
    if-eqz p1, :cond_1

    .line 14
    move v3, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v3, v2

    .line 18
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDivider:Landroid/view/View;

    .line 27
    if-eqz p1, :cond_2

    .line 29
    move v1, v2

    .line 31
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogSubTitle:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getSubtitleText()Ljava/lang/CharSequence;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
    .line 44
.end method

.method public final start()V
    .locals 14

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    .line 2
    const-string v1, "onStart"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v0, "InternetDialog"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 13
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigWifi:Z

    .line 15
    sget-boolean v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    .line 17
    const-string v4, "InternetDialogController"

    .line 19
    if-eqz v3, :cond_1

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_1
    iput-object p0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    .line 29
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 31
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 33
    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 35
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 38
    move-object v5, v1

    .line 40
    check-cast v5, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 41
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->addAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V

    .line 43
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectionStateReceiver:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$2;

    .line 46
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectionStateFilter:Landroid/content/IntentFilter;

    .line 48
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 50
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 52
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    const/16 v13, 0x38

    .line 60
    move-object v9, v5

    .line 62
    invoke-static/range {v6 .. v13}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 63
    new-instance v6, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetOnSubscriptionChangedListener;

    .line 66
    invoke-direct {v6, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetOnSubscriptionChangedListener;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    .line 68
    iput-object v6, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 71
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 73
    invoke-virtual {v7, v5, v6}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 75
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getDefaultDataSubscriptionId()I

    .line 78
    move-result v6

    .line 81
    iput v6, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    .line 82
    if-eqz v3, :cond_2

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    const-string v6, "Init, SubId: "

    .line 88
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget v6, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    .line 93
    invoke-static {v3, v6, v4}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 95
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/mobile/MobileMappings$Config;->readConfig()Lcom/android/systemui/statusbar/mobile/MobileMappings$Config;

    .line 98
    move-result-object v3

    .line 101
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConfig:Lcom/android/systemui/statusbar/mobile/MobileMappings$Config;

    .line 102
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 104
    iget v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    .line 106
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 108
    move-result-object v3

    .line 111
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 112
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    .line 114
    iget v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v4

    .line 121
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 122
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;

    .line 127
    iget v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    .line 129
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;I)V

    .line 131
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyCallbackMap:Ljava/util/Map;

    .line 134
    iget v6, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    .line 136
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v6

    .line 141
    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 145
    invoke-virtual {v4, v5, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 147
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManagerNetworkCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;

    .line 150
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 152
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 154
    iput-boolean v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    .line 157
    if-eqz v2, :cond_3

    .line 159
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 161
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->scanForAccessPoints()V

    .line 163
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigWifi:Z

    .line 166
    if-nez v0, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->hideWifiViews()V

    .line 170
    :cond_4
    return-void
    .line 173
.end method

.method public final stop()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    .line 2
    const-string v1, "onStop"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string v0, "InternetDialog"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    .line 13
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideProgressBarRunnable:Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    .line 15
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    .line 20
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideSearchingRunnable:Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    .line 22
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 27
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 43
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSeeAllLayout:Landroid/widget/LinearLayout;

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWiFiToggle:Landroid/widget/Switch;

    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDoneButton:Landroid/widget/Button;

    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAirplaneModeButton:Landroid/widget/Button;

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 70
    sget-boolean v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    .line 72
    const-string v4, "InternetDialogController"

    .line 74
    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectionStateReceiver:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$2;

    .line 84
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 86
    invoke-virtual {v5, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    .line 91
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 93
    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object v1

    .line 100
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v5

    .line 104
    if-eqz v5, :cond_5

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v5

    .line 110
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 111
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyCallbackMap:Ljava/util/Map;

    .line 113
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    .line 115
    move-result v7

    .line 118
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v7

    .line 122
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object v6

    .line 126
    check-cast v6, Landroid/telephony/TelephonyCallback;

    .line 127
    if-eqz v6, :cond_4

    .line 129
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 131
    goto :goto_0

    .line 134
    :cond_4
    if-eqz v3, :cond_3

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    const-string v7, "Unexpected null telephony call back for Sub "

    .line 139
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    .line 144
    move-result v5

    .line 147
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v5

    .line 154
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto :goto_0

    .line 158
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    .line 159
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 161
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyCallbackMap:Ljava/util/Map;

    .line 164
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 166
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyDisplayInfoMap:Ljava/util/Map;

    .line 169
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 171
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 174
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 176
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 178
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 181
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 183
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->removeAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V

    .line 185
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 188
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 190
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 192
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManagerNetworkCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;

    .line 195
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 197
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 199
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectedWifiInternetMonitor:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;

    .line 202
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 204
    if-nez v1, :cond_6

    .line 206
    goto :goto_1

    .line 208
    :cond_6
    monitor-enter v1

    .line 209
    :try_start_0
    iput-object v2, v1, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit v1

    .line 212
    iput-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 213
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    sget-boolean p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactoryKt;->DEBUG:Z

    .line 220
    if-eqz p0, :cond_7

    .line 222
    const-string p0, "InternetDialogFactory"

    .line 224
    const-string v0, "destroyDialog"

    .line 226
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_7
    sput-object v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->internetDialog:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 231
    return-void

    .line 233
    :catchall_0
    move-exception p0

    .line 234
    monitor-exit v1

    .line 235
    throw p0
    .line 236
.end method

.method public final updateDialog(Z)V
    .locals 14

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    .line 2
    const-string v1, "InternetDialog"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string/jumbo v2, "updateDialog"

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogTitle:Landroid/widget/TextView;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 16
    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    .line 18
    move-result v4

    .line 21
    const v5, 0x7f130134    # @string/airplane_mode 'Airplane mode'

    .line 22
    iget-object v3, v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    .line 25
    if-eqz v4, :cond_1

    .line 27
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 29
    move-result-object v3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const v4, 0x7f1309b8    # @string/quick_settings_internet_label 'Internet'

    .line 34
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 37
    move-result-object v3

    .line 40
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogSubTitle:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getSubtitleText()Ljava/lang/CharSequence;

    .line 46
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAirplaneModeButton:Landroid/widget/Button;

    .line 53
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 55
    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    .line 57
    move-result v3

    .line 60
    const/16 v4, 0x8

    .line 61
    const/4 v6, 0x0

    .line 63
    if-eqz v3, :cond_2

    .line 64
    move v3, v6

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v3, v4

    .line 68
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mEthernetLayout:Landroid/widget/LinearLayout;

    .line 72
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 74
    iget-boolean v3, v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasEthernet:Z

    .line 76
    if-eqz v3, :cond_3

    .line 78
    move v3, v6

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move v3, v4

    .line 82
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    const/4 v2, 0x1

    .line 86
    const v3, 0x7f0600a6    # @color/connected_network_primary_color '#191c18'

    .line 87
    const v7, 0x7f1403d8    # @style/TextAppearance.InternetDialog.Active

    .line 90
    const v8, 0x7f1403d7    # @style/TextAppearance.InternetDialog

    .line 93
    const/4 v9, -0x1

    .line 96
    const/4 v10, 0x6

    .line 97
    if-eqz p1, :cond_15

    .line 98
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 100
    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    .line 102
    move-result p1

    .line 105
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 106
    invoke-virtual {v11}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isCarrierNetworkActive()Z

    .line 108
    move-result v11

    .line 111
    if-nez p1, :cond_5

    .line 112
    if-eqz v11, :cond_4

    .line 114
    goto :goto_3

    .line 116
    :cond_4
    move p1, v6

    .line 117
    goto :goto_4

    .line 118
    :cond_5
    :goto_3
    move p1, v2

    .line 119
    :goto_4
    if-eqz v0, :cond_6

    .line 120
    const-string/jumbo v0, "setMobileDataLayout, isCarrierNetworkActive = "

    .line 122
    invoke-static {v0, v11, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 128
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isWifiEnabled()Z

    .line 130
    move-result v0

    .line 133
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 134
    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->hasActiveSubId()Z

    .line 136
    move-result v1

    .line 139
    if-nez v1, :cond_8

    .line 140
    if-eqz v0, :cond_7

    .line 142
    if-nez v11, :cond_8

    .line 144
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 146
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 151
    if-eqz p1, :cond_15

    .line 153
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    goto/16 :goto_d

    .line 158
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 160
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 167
    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    .line 169
    move-result v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileTitleText:Landroid/widget/TextView;

    .line 176
    iget v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getMobileNetworkTitle(I)Ljava/lang/CharSequence;

    .line 180
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getMobileNetworkSummary(I)Ljava/lang/String;

    .line 189
    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 193
    move-result v1

    .line 196
    if-nez v1, :cond_9

    .line 197
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    .line 199
    invoke-static {v0, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 201
    move-result-object v0

    .line 204
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    .line 208
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    .line 213
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    goto :goto_5

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    .line 219
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 224
    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    .line 226
    invoke-direct {v1, p0, v10}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V

    .line 228
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    .line 234
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigMobileData:Z

    .line 236
    if-eqz v1, :cond_a

    .line 238
    move v1, v6

    .line 240
    goto :goto_6

    .line 241
    :cond_a
    const/4 v1, 0x4

    .line 242
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileToggleDivider:Landroid/view/View;

    .line 246
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigMobileData:Z

    .line 248
    if-eqz v1, :cond_b

    .line 250
    move v1, v6

    .line 252
    goto :goto_7

    .line 253
    :cond_b
    const/4 v1, 0x4

    .line 254
    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 258
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getActiveAutoSwitchNonDdsSubId()I

    .line 260
    move-result v0

    .line 263
    if-eq v0, v9, :cond_c

    .line 264
    move v1, v6

    .line 266
    goto :goto_8

    .line 267
    :cond_c
    move v1, v4

    .line 268
    :goto_8
    const v10, 0x7f1403d9    # @style/TextAppearance.InternetDialog.Secondary

    .line 269
    if-eqz p1, :cond_d

    .line 272
    const v11, 0x7f1403da    # @style/TextAppearance.InternetDialog.Secondary.Active

    .line 274
    goto :goto_9

    .line 277
    :cond_d
    move v11, v10

    .line 278
    :goto_9
    if-nez v1, :cond_10

    .line 279
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 281
    const v12, 0x7f0a0846    # @id/secondary_mobile_network_stub

    .line 283
    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 286
    move-result-object p1

    .line 289
    check-cast p1, Landroid/view/ViewStub;

    .line 290
    if-eqz p1, :cond_e

    .line 292
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 294
    :cond_e
    const p1, 0x7f0a0845    # @id/secondary_mobile_network_layout

    .line 297
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 300
    move-result-object p1

    .line 303
    check-cast p1, Landroid/widget/LinearLayout;

    .line 304
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 306
    new-instance v12, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;

    .line 308
    const/4 v13, 0x5

    .line 310
    invoke-direct {v12, v13, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 311
    invoke-virtual {p1, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 317
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    .line 319
    invoke-virtual {p1, v12}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 324
    const v12, 0x7f0a0848    # @id/secondary_mobile_title

    .line 326
    invoke-virtual {p1, v12}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 329
    move-result-object p1

    .line 332
    check-cast p1, Landroid/widget/TextView;

    .line 333
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileTitleText:Landroid/widget/TextView;

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getMobileNetworkTitle(I)Ljava/lang/CharSequence;

    .line 337
    move-result-object v12

    .line 340
    invoke-virtual {p1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileTitleText:Landroid/widget/TextView;

    .line 344
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 346
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 349
    const v12, 0x7f0a0847    # @id/secondary_mobile_summary

    .line 351
    invoke-virtual {p1, v12}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 354
    move-result-object p1

    .line 357
    check-cast p1, Landroid/widget/TextView;

    .line 358
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileSummaryText:Landroid/widget/TextView;

    .line 360
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getMobileNetworkSummary(I)Ljava/lang/String;

    .line 362
    move-result-object p1

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 366
    move-result v12

    .line 369
    if-nez v12, :cond_f

    .line 370
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileSummaryText:Landroid/widget/TextView;

    .line 372
    invoke-static {p1, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 374
    move-result-object p1

    .line 377
    invoke-virtual {v12, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileSummaryText:Landroid/widget/TextView;

    .line 381
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 383
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileSummaryText:Landroid/widget/TextView;

    .line 386
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 388
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 391
    const v12, 0x7f0a084a    # @id/secondary_signal_icon

    .line 393
    invoke-virtual {p1, v12}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 396
    move-result-object p1

    .line 399
    check-cast p1, Landroid/widget/ImageView;

    .line 400
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 402
    new-instance v13, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;

    .line 404
    invoke-direct {v13, p0, v0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;ILandroid/widget/ImageView;)V

    .line 406
    invoke-interface {v12, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 409
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 412
    const v0, 0x7f0a0849    # @id/secondary_settings_icon

    .line 414
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 417
    move-result-object p1

    .line 420
    check-cast p1, Landroid/widget/ImageView;

    .line 421
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 423
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    .line 425
    move-result v0

    .line 428
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 429
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 432
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    .line 434
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileTitleText:Landroid/widget/TextView;

    .line 439
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 441
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    .line 444
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 446
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSignalIcon:Landroid/widget/ImageView;

    .line 449
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 451
    const v10, 0x7f0600a7    # @color/connected_network_secondary_color '#41493d'

    .line 453
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    .line 456
    move-result v0

    .line 459
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 460
    goto :goto_c

    .line 463
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 464
    if-eqz p1, :cond_11

    .line 466
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    .line 468
    goto :goto_a

    .line 470
    :cond_11
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    .line 471
    :goto_a
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileTitleText:Landroid/widget/TextView;

    .line 476
    if-eqz p1, :cond_12

    .line 478
    move p1, v7

    .line 480
    goto :goto_b

    .line 481
    :cond_12
    move p1, v8

    .line 482
    :goto_b
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 483
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    .line 486
    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 488
    :goto_c
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 491
    if-eqz p1, :cond_13

    .line 493
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    :cond_13
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 498
    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    .line 500
    move-result p1

    .line 503
    if-eqz p1, :cond_14

    .line 504
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAirplaneModeSummaryText:Landroid/widget/TextView;

    .line 506
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAirplaneModeSummaryText:Landroid/widget/TextView;

    .line 511
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 513
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 515
    move-result-object v0

    .line 518
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAirplaneModeSummaryText:Landroid/widget/TextView;

    .line 522
    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 524
    goto :goto_d

    .line 527
    :cond_14
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAirplaneModeSummaryText:Landroid/widget/TextView;

    .line 528
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    :cond_15
    :goto_d
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigWifi:Z

    .line 533
    if-nez p1, :cond_16

    .line 535
    return-void

    .line 537
    :cond_16
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 538
    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isWifiEnabled()Z

    .line 540
    move-result p1

    .line 543
    if-eqz p1, :cond_1a

    .line 544
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 546
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 548
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 550
    move-result p1

    .line 553
    xor-int/2addr p1, v2

    .line 554
    if-eqz p1, :cond_17

    .line 555
    goto :goto_f

    .line 557
    :cond_17
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->setProgressBarVisible(Z)V

    .line 558
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 561
    const-wide/16 v0, 0x5dc

    .line 563
    if-nez p1, :cond_19

    .line 565
    iget p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiEntriesCount:I

    .line 567
    if-lez p1, :cond_18

    .line 569
    goto :goto_e

    .line 571
    :cond_18
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsSearchingHidden:Z

    .line 572
    if-nez p1, :cond_1b

    .line 574
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    .line 576
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideSearchingRunnable:Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    .line 578
    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 580
    goto :goto_10

    .line 583
    :cond_19
    :goto_e
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    .line 584
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideProgressBarRunnable:Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    .line 586
    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 588
    goto :goto_10

    .line 591
    :cond_1a
    :goto_f
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->setProgressBarVisible(Z)V

    .line 592
    :cond_1b
    :goto_10
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 595
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 597
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 599
    move-result p1

    .line 602
    xor-int/2addr p1, v2

    .line 603
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 604
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isWifiEnabled()Z

    .line 606
    move-result v0

    .line 609
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 610
    iget-object v5, v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 612
    check-cast v5, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 614
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    .line 616
    move-result v5

    .line 619
    if-nez v5, :cond_1c

    .line 620
    goto :goto_11

    .line 622
    :cond_1c
    iget-object v1, v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 623
    if-eqz v1, :cond_1d

    .line 625
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    .line 627
    move-result v1

    .line 630
    if-eqz v1, :cond_1d

    .line 631
    move v1, v2

    .line 633
    goto :goto_12

    .line 634
    :cond_1d
    :goto_11
    move v1, v6

    .line 635
    :goto_12
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWiFiToggle:Landroid/widget/Switch;

    .line 636
    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    .line 638
    move-result v5

    .line 641
    if-eq v5, v0, :cond_1e

    .line 642
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWiFiToggle:Landroid/widget/Switch;

    .line 644
    invoke-virtual {v5, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 646
    :cond_1e
    if-eqz p1, :cond_20

    .line 649
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiToggleTitleText:Landroid/widget/TextView;

    .line 651
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 653
    if-eqz v10, :cond_1f

    .line 655
    goto :goto_13

    .line 657
    :cond_1f
    move v7, v8

    .line 658
    :goto_13
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 659
    :cond_20
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    .line 662
    const/4 v7, 0x0

    .line 664
    if-eqz p1, :cond_21

    .line 665
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 667
    if-eqz v8, :cond_21

    .line 669
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    .line 671
    goto :goto_14

    .line 673
    :cond_21
    move-object v8, v7

    .line 674
    :goto_14
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 675
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanChangeWifiState:Z

    .line 678
    if-nez v5, :cond_22

    .line 680
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWiFiToggle:Landroid/widget/Switch;

    .line 682
    invoke-virtual {v5}, Landroid/widget/Switch;->isEnabled()Z

    .line 684
    move-result v5

    .line 687
    if-eqz v5, :cond_22

    .line 688
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWiFiToggle:Landroid/widget/Switch;

    .line 690
    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 692
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiToggleTitleText:Landroid/widget/TextView;

    .line 695
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 697
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    .line 700
    const v8, 0x7f0a0abf    # @id/wifi_toggle_summary

    .line 702
    invoke-virtual {v5, v8}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 705
    move-result-object v5

    .line 708
    check-cast v5, Landroid/widget/TextView;

    .line 709
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 711
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    :cond_22
    if-eqz v0, :cond_26

    .line 717
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 719
    if-eqz v5, :cond_26

    .line 721
    if-eqz p1, :cond_23

    .line 723
    goto :goto_16

    .line 725
    :cond_23
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    .line 726
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 728
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiTitleText:Landroid/widget/TextView;

    .line 731
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 733
    invoke-virtual {v8}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 735
    move-result-object v8

    .line 738
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiSummaryText:Landroid/widget/TextView;

    .line 742
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 744
    invoke-virtual {v8, v6}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    .line 746
    move-result-object v8

    .line 749
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiIcon:Landroid/widget/ImageView;

    .line 753
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 755
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 757
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    iget v11, v10, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 762
    if-ne v11, v9, :cond_24

    .line 764
    goto :goto_15

    .line 766
    :cond_24
    iget-object v9, v8, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiIconInjector:Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

    .line 767
    invoke-virtual {v10}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    .line 769
    move-result v11

    .line 772
    iget v10, v10, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 773
    invoke-virtual {v9, v10, v11}, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;->getIcon(IZ)Landroid/graphics/drawable/Drawable;

    .line 775
    move-result-object v9

    .line 778
    if-nez v9, :cond_25

    .line 779
    goto :goto_15

    .line 781
    :cond_25
    iget-object v7, v8, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    .line 782
    invoke-virtual {v7, v3}, Landroid/content/Context;->getColor(I)I

    .line 784
    move-result v7

    .line 787
    invoke-virtual {v9, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 788
    move-object v7, v9

    .line 791
    :goto_15
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiSettingsIcon:Landroid/widget/ImageView;

    .line 795
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    .line 797
    invoke-virtual {v7, v3}, Landroid/content/Context;->getColor(I)I

    .line 799
    move-result v3

    .line 802
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 803
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    .line 806
    if-eqz v3, :cond_27

    .line 808
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 810
    goto :goto_17

    .line 813
    :cond_26
    :goto_16
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    .line 814
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 816
    :cond_27
    :goto_17
    if-eqz v0, :cond_2e

    .line 819
    if-eqz p1, :cond_28

    .line 821
    goto :goto_1a

    .line 823
    :cond_28
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getWifiListMaxCount()I

    .line 824
    move-result v3

    .line 827
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    .line 828
    iget v7, v5, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntriesCount:I

    .line 830
    if-le v7, v3, :cond_29

    .line 832
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHasMoreWifiEntries:Z

    .line 834
    :cond_29
    if-ltz v3, :cond_2b

    .line 836
    iget v2, v5, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mMaxEntriesCount:I

    .line 838
    if-ne v2, v3, :cond_2a

    .line 840
    goto :goto_18

    .line 842
    :cond_2a
    iput v3, v5, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mMaxEntriesCount:I

    .line 843
    if-le v7, v3, :cond_2b

    .line 845
    iput v3, v5, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntriesCount:I

    .line 847
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 849
    :cond_2b
    :goto_18
    iget v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiNetworkHeight:I

    .line 852
    mul-int/2addr v2, v3

    .line 854
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 855
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMinimumHeight()I

    .line 857
    move-result v3

    .line 860
    if-eq v3, v2, :cond_2c

    .line 861
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 863
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 865
    :cond_2c
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 868
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 870
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSeeAllLayout:Landroid/widget/LinearLayout;

    .line 873
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHasMoreWifiEntries:Z

    .line 875
    if-eqz v3, :cond_2d

    .line 877
    move v3, v6

    .line 879
    goto :goto_19

    .line 880
    :cond_2d
    const/4 v3, 0x4

    .line 881
    :goto_19
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 882
    goto :goto_1b

    .line 885
    :cond_2e
    :goto_1a
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 886
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 888
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSeeAllLayout:Landroid/widget/LinearLayout;

    .line 891
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 893
    :goto_1b
    if-nez v0, :cond_31

    .line 896
    if-eqz v1, :cond_31

    .line 898
    if-eqz p1, :cond_2f

    .line 900
    goto :goto_1c

    .line 902
    :cond_2f
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyText:Landroid/widget/TextView;

    .line 903
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 905
    move-result-object p1

    .line 908
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 909
    move-result p1

    .line 912
    if-eqz p1, :cond_30

    .line 913
    new-instance p1, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;

    .line 915
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 917
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;

    .line 922
    const/4 v2, 0x6

    .line 924
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 925
    invoke-direct {p1, v1}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;-><init>(Landroid/view/View$OnClickListener;)V

    .line 928
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyText:Landroid/widget/TextView;

    .line 931
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 933
    move-result-object v1

    .line 936
    const v2, 0x7f130c90    # @string/wifi_scan_notify_message 'To improve device experience, apps and services can still scan for Wi‑Fi networks at any time, even  ...'

    .line 937
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 940
    move-result-object v1

    .line 943
    filled-new-array {p1}, [Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;

    .line 944
    move-result-object p1

    .line 947
    invoke-static {v1, p1}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;)Ljava/lang/CharSequence;

    .line 948
    move-result-object p1

    .line 951
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyText:Landroid/widget/TextView;

    .line 955
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 957
    move-result-object v0

    .line 960
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 961
    :cond_30
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

    .line 964
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 966
    goto :goto_1d

    .line 969
    :cond_31
    :goto_1c
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

    .line 970
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 972
    :goto_1d
    return-void
    .line 975
.end method

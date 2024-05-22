.class public final Lcom/miui/systemui/MultiUserController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public volatile kidSpaceUserId:I

.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKidSpaceUserIdObserver:Lcom/miui/systemui/MultiUserController$2;

.field public final mSecondUserIdObserver:Lcom/miui/systemui/MultiUserController$1;

.field public final mUserManager:Landroid/os/UserManager;

.field public volatile secondUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardCommonSettingObserver;Landroid/os/UserManager;Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/MultiUserController;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/MultiUserController;->mActivityManager:Landroid/app/IActivityManager;

    .line 7
    iput-object p3, p0, Lcom/miui/systemui/MultiUserController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 9
    iput-object p4, p0, Lcom/miui/systemui/MultiUserController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 11
    iput-object p5, p0, Lcom/miui/systemui/MultiUserController;->mUserManager:Landroid/os/UserManager;

    .line 13
    const/16 p1, -0x2710

    .line 15
    iput p1, p0, Lcom/miui/systemui/MultiUserController;->secondUserId:I

    .line 17
    iput p1, p0, Lcom/miui/systemui/MultiUserController;->kidSpaceUserId:I

    .line 19
    new-instance p1, Lcom/miui/systemui/MultiUserController$1;

    .line 21
    invoke-direct {p1, p0, p7, p6}, Lcom/miui/systemui/MultiUserController$1;-><init>(Lcom/miui/systemui/MultiUserController;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 23
    iput-object p1, p0, Lcom/miui/systemui/MultiUserController;->mSecondUserIdObserver:Lcom/miui/systemui/MultiUserController$1;

    .line 26
    new-instance p2, Lcom/miui/systemui/MultiUserController$2;

    .line 28
    invoke-direct {p2, p0, p7, p6}, Lcom/miui/systemui/MultiUserController$2;-><init>(Lcom/miui/systemui/MultiUserController;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 30
    iput-object p2, p0, Lcom/miui/systemui/MultiUserController;->mKidSpaceUserIdObserver:Lcom/miui/systemui/MultiUserController$2;

    .line 33
    const/4 p3, 0x1

    .line 35
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 36
    invoke-virtual {p1}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    .line 39
    move-result p1

    .line 42
    iput p1, p0, Lcom/miui/systemui/MultiUserController;->secondUserId:I

    .line 43
    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 45
    invoke-virtual {p2}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    .line 48
    move-result p1

    .line 51
    iput p1, p0, Lcom/miui/systemui/MultiUserController;->kidSpaceUserId:I

    .line 52
    return-void
    .line 54
.end method


# virtual methods
.method public final allowUnlock(I)Lcom/miui/systemui/MultiUserController$UserSwitchableResult;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/miui/systemui/MultiUserController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 7
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorExtKt;->hasUserAuthenticatedSinceBoot(Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;I)Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    new-instance p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 15
    const p1, 0x7f130554    # @string/input_password_after_boot_msg_must_enter_owner_space 'You need to enter First space after the device was rebooted'

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;-><init>(IZ)V

    .line 20
    return-object p0

    .line 23
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 24
    move-result v1

    .line 27
    if-eq p1, v1, :cond_1

    .line 28
    iget-object v2, p0, Lcom/miui/systemui/MultiUserController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 30
    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mExtremeBatteryZeroMode:Z

    .line 32
    if-eqz v2, :cond_1

    .line 34
    new-instance p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 36
    const p1, 0x7f130551    # @string/input_password_after_boot_msg_can_not_switch_when_extrememode_endurance_battery_zero_active 'Can't use Second space due to low battery'

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;-><init>(IZ)V

    .line 41
    return-object p0

    .line 44
    :cond_1
    if-eq p1, v1, :cond_2

    .line 45
    iget-object v2, p0, Lcom/miui/systemui/MultiUserController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 47
    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mExtremeMode:Z

    .line 49
    if-eqz v2, :cond_2

    .line 51
    new-instance p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 53
    const p1, 0x7f130550    # @string/input_password_after_boot_msg_can_not_switch_when_extrememode_active 'Can't use Second space in Hibernation mode'

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;-><init>(IZ)V

    .line 58
    return-object p0

    .line 61
    :cond_2
    const/4 v2, 0x1

    .line 62
    if-eq p1, v1, :cond_4

    .line 63
    iget-object v3, p0, Lcom/miui/systemui/MultiUserController;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 67
    move-result-object v3

    .line 70
    const-string v4, "miui_dkt_mode"

    .line 71
    invoke-static {v3, v4, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 73
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    move v3, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move v3, v0

    .line 81
    :goto_0
    if-eqz v3, :cond_4

    .line 82
    new-instance p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 84
    const p1, 0x7f13054f    # @string/input_password_after_boot_msg_can_not_switch_when_desktop_mode_active 'Can't switch between spaces in Workstation mode'

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;-><init>(IZ)V

    .line 89
    return-object p0

    .line 92
    :cond_4
    if-eq p1, v1, :cond_5

    .line 93
    iget-object v3, p0, Lcom/miui/systemui/MultiUserController;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {v3, v0}, Landroid/provider/MiuiSettings$System;->isSuperSaveModeOpen(Landroid/content/Context;I)Z

    .line 97
    move-result v3

    .line 100
    if-eqz v3, :cond_5

    .line 101
    new-instance p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 103
    const p1, 0x7f130553    # @string/input_password_after_boot_msg_can_not_switch_when_superpower_active 'Can't switch between spaces when Ultra battery saver is on'

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;-><init>(IZ)V

    .line 108
    return-object p0

    .line 111
    :cond_5
    if-eq p1, v1, :cond_6

    .line 112
    iget-object v3, p0, Lcom/miui/systemui/MultiUserController;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 116
    move-result-object v3

    .line 119
    invoke-static {v3}, Landroid/provider/MiuiSettings$Secure;->isGreenKidActive(Landroid/content/ContentResolver;)Z

    .line 120
    move-result v3

    .line 123
    if-eqz v3, :cond_6

    .line 124
    new-instance p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 126
    const p1, 0x7f130552    # @string/input_password_after_boot_msg_can_not_switch_when_greenkid_active 'Can't switch between spaces when parental controls are on'

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;-><init>(IZ)V

    .line 131
    return-object p0

    .line 134
    :cond_6
    if-eq p1, v1, :cond_9

    .line 135
    sget-boolean v3, Lcom/android/systemui/util/PhoneUtils;->MIUI_LPA:Z

    .line 137
    const-class v3, Lcom/android/systemui/util/CallStateControllerImpl;

    .line 139
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    move-result-object v3

    .line 144
    check-cast v3, Lcom/android/systemui/util/CallStateControllerImpl;

    .line 145
    iget v4, v3, Lcom/android/systemui/util/CallStateControllerImpl;->slot1CallState:I

    .line 147
    iget v3, v3, Lcom/android/systemui/util/CallStateControllerImpl;->slot2CallState:I

    .line 149
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 151
    move-result v3

    .line 154
    if-eq v3, v2, :cond_8

    .line 155
    const/4 v4, 0x2

    .line 157
    if-ne v3, v4, :cond_7

    .line 158
    goto :goto_1

    .line 160
    :cond_7
    move v3, v0

    .line 161
    goto :goto_2

    .line 162
    :cond_8
    :goto_1
    move v3, v2

    .line 163
    :goto_2
    if-eqz v3, :cond_9

    .line 164
    new-instance p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 166
    const p1, 0x7f13054e    # @string/input_password_after_boot_msg_can_not_switch_when_calling 'Can't switch between spaces during a call'

    .line 168
    invoke-direct {p0, p1, v0}, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;-><init>(IZ)V

    .line 171
    return-object p0

    .line 174
    :cond_9
    if-eq p1, v1, :cond_c

    .line 175
    if-eqz p1, :cond_c

    .line 177
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 179
    move-result v1

    .line 182
    iget-object p0, p0, Lcom/miui/systemui/MultiUserController;->mUserManager:Landroid/os/UserManager;

    .line 183
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    .line 185
    move-result-object p0

    .line 188
    array-length v3, p0

    .line 189
    if-lez v3, :cond_b

    .line 190
    array-length v3, p0

    .line 192
    move v4, v0

    .line 193
    :goto_3
    if-ge v4, v3, :cond_b

    .line 194
    aget v5, p0, v4

    .line 196
    if-eq v5, v1, :cond_a

    .line 198
    goto :goto_4

    .line 200
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 201
    goto :goto_3

    .line 203
    :cond_b
    const/16 v5, -0x2710

    .line 204
    :goto_4
    if-ne p1, v5, :cond_c

    .line 206
    new-instance p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 208
    invoke-direct {p0, v0, v0}, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;-><init>(IZ)V

    .line 210
    return-object p0

    .line 213
    :cond_c
    new-instance p0, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 214
    invoke-direct {p0, v0, v2}, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;-><init>(IZ)V

    .line 216
    return-object p0
    .line 219
.end method

.class public final Lcom/android/systemui/qs/QSSecurityFooterUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field public final mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

.field public final mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/SecurityController;Landroid/os/Looper;Lcom/android/systemui/animation/DialogLaunchAnimator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 15
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 18
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 20
    const/4 v1, 0x6

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 26
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 28
    const/4 v1, 0x7

    .line 30
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 31
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 34
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 36
    const/16 v1, 0x8

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 40
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 43
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 45
    const/16 v1, 0x9

    .line 47
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 49
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 52
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 54
    const/16 v1, 0xa

    .line 56
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 58
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 61
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 63
    const/16 v1, 0xb

    .line 65
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 67
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 70
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 72
    const/16 v1, 0xc

    .line 74
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 76
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 79
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 81
    const/16 v1, 0xd

    .line 83
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 85
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 88
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 90
    const/16 v1, 0xe

    .line 92
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 94
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 97
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 99
    const/4 v1, 0x1

    .line 101
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 102
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 105
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 107
    const/4 v1, 0x2

    .line 109
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 110
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 113
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 115
    const/4 v1, 0x3

    .line 117
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 118
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 121
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 123
    const/4 v1, 0x4

    .line 125
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 126
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 129
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 131
    const/4 v1, 0x5

    .line 133
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;I)V

    .line 134
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 137
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 141
    iput-object p3, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 143
    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMainHandler:Landroid/os/Handler;

    .line 145
    iput-object p5, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 147
    iput-object p6, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 149
    new-instance p1, Landroid/os/Handler;

    .line 151
    invoke-direct {p1, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 153
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mBgHandler:Landroid/os/Handler;

    .line 156
    iput-object p8, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 158
    return-void
    .line 160
.end method


# virtual methods
.method public createDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isParentalControlsEnabled()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_3

    .line 14
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    move-result-object v1

    .line 19
    const v4, 0x7f0d0314    # @layout/quick_settings_footer_dialog_parental_controls 'res/layout/quick_settings_footer_dialog_parental_controls.xml'

    .line 20
    invoke-virtual {v1, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object v1

    .line 26
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 27
    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 29
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    .line 31
    move-result-object v2

    .line 34
    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 35
    check-cast v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 37
    if-nez v2, :cond_0

    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    move-object v4, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 46
    invoke-virtual {v2, v4}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 48
    move-result-object v4

    .line 51
    :goto_0
    if-eqz v4, :cond_1

    .line 52
    const v5, 0x7f0a06ee    # @id/parental_controls_icon

    .line 54
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v5

    .line 60
    check-cast v5, Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_1
    const v4, 0x7f0a06ef    # @id/parental_controls_title

    .line 66
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v4

    .line 72
    check-cast v4, Landroid/widget/TextView;

    .line 73
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 75
    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 77
    if-nez v2, :cond_2

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    invoke-virtual {v2, v0}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 87
    move-result-object v3

    .line 90
    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-object v1

    .line 94
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 95
    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 97
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isDeviceManaged()Z

    .line 99
    move-result v1

    .line 102
    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 103
    check-cast v4, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 105
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasWorkProfile()Z

    .line 107
    move-result v4

    .line 110
    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 111
    check-cast v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 113
    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 115
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    .line 117
    move-result-object v5

    .line 120
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 121
    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 123
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInCurrentUser()Z

    .line 125
    move-result v6

    .line 128
    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 129
    check-cast v7, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 131
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->hasCACertInWorkProfile()Z

    .line 133
    move-result v7

    .line 136
    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 137
    check-cast v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 139
    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 141
    invoke-virtual {v8, v3}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    .line 143
    move-result v8

    .line 146
    iget-object v9, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 147
    check-cast v9, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 149
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPrimaryVpnName()Ljava/lang/String;

    .line 151
    move-result-object v9

    .line 154
    iget-object v10, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 155
    check-cast v10, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 157
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileVpnName()Ljava/lang/String;

    .line 159
    move-result-object v10

    .line 162
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 163
    move-result-object v11

    .line 166
    const v12, 0x7f0d0313    # @layout/quick_settings_footer_dialog 'res/layout/quick_settings_footer_dialog.xml'

    .line 167
    invoke-virtual {v11, v12, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 170
    move-result-object v11

    .line 173
    const v12, 0x7f0a02c2    # @id/device_management_subtitle

    .line 174
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    move-result-object v12

    .line 180
    check-cast v12, Landroid/widget/TextView;

    .line 181
    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 183
    move-result-object v13

    .line 186
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v12, 0x3

    .line 190
    if-nez v1, :cond_4

    .line 191
    move-object v5, v3

    .line 193
    goto :goto_2

    .line 194
    :cond_4
    if-eqz v5, :cond_6

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->isFinancedDevice()Z

    .line 197
    move-result v13

    .line 200
    if-eqz v13, :cond_5

    .line 201
    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 203
    const v14, 0x7f1307d4    # @string/monitoring_financed_description_named_management '%1$s may be able to access data associated with this device, manage apps, and change this device’s s ...'

    .line 205
    filled-new-array {v5, v5}, [Ljava/lang/Object;

    .line 208
    move-result-object v5

    .line 211
    invoke-virtual {v13, v14, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    move-result-object v5

    .line 215
    goto :goto_2

    .line 216
    :cond_5
    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 217
    invoke-virtual {v13}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 219
    move-result-object v13

    .line 222
    new-instance v14, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    .line 223
    invoke-direct {v14, v0, v5, v12}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    .line 225
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 228
    move-result-object v5

    .line 231
    const-string v15, "SystemUi.QS_DIALOG_NAMED_MANAGEMENT"

    .line 232
    invoke-virtual {v13, v15, v14, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    move-result-object v5

    .line 237
    goto :goto_2

    .line 238
    :cond_6
    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 239
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 241
    move-result-object v5

    .line 244
    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 245
    const-string v14, "SystemUi.QS_DIALOG_MANAGEMENT"

    .line 247
    invoke-virtual {v5, v14, v13}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 249
    move-result-object v5

    .line 252
    :goto_2
    const/4 v13, 0x1

    .line 253
    const v14, 0x7f0a02c1    # @id/device_management_disclosures

    .line 254
    const/16 v15, 0x8

    .line 257
    if-nez v5, :cond_7

    .line 259
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    move-result-object v14

    .line 264
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 265
    goto :goto_3

    .line 268
    :cond_7
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    move-result-object v14

    .line 272
    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    const v14, 0x7f0a02c3    # @id/device_management_warning

    .line 276
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 279
    move-result-object v14

    .line 282
    check-cast v14, Landroid/widget/TextView;

    .line 283
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v14, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 288
    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    :goto_3
    if-nez v6, :cond_8

    .line 293
    if-nez v7, :cond_8

    .line 295
    move-object v6, v3

    .line 297
    goto :goto_4

    .line 298
    :cond_8
    if-eqz v1, :cond_9

    .line 299
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 301
    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 303
    move-result-object v6

    .line 306
    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 307
    const-string v14, "SystemUi.QS_DIALOG_MANAGEMENT_CA_CERT"

    .line 309
    invoke-virtual {v6, v14, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 311
    move-result-object v6

    .line 314
    goto :goto_4

    .line 315
    :cond_9
    if-eqz v7, :cond_a

    .line 316
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 318
    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 320
    move-result-object v6

    .line 323
    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 324
    const-string v14, "SystemUi.QS_DIALOG_WORK_PROFILE_CA_CERT"

    .line 326
    invoke-virtual {v6, v14, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 328
    move-result-object v6

    .line 331
    goto :goto_4

    .line 332
    :cond_a
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 333
    const v7, 0x7f1307c5    # @string/monitoring_description_ca_certificate 'A certificate authority is installed on this device. Your secure network traffic may be monitored or ...'

    .line 335
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 338
    move-result-object v6

    .line 341
    :goto_4
    const v7, 0x7f0a01b5    # @id/ca_certs_subtitle

    .line 342
    const v14, 0x7f0a01b4    # @id/ca_certs_disclosures

    .line 345
    if-nez v6, :cond_b

    .line 348
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 350
    move-result-object v14

    .line 353
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 354
    goto :goto_5

    .line 357
    :cond_b
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 358
    move-result-object v14

    .line 361
    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 362
    const v14, 0x7f0a01b6    # @id/ca_certs_warning

    .line 365
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 368
    move-result-object v14

    .line 371
    check-cast v14, Landroid/widget/TextView;

    .line 372
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    new-instance v3, Landroid/text/method/LinkMovementMethod;

    .line 377
    invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 379
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 382
    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 385
    move-result-object v3

    .line 388
    check-cast v3, Landroid/widget/TextView;

    .line 389
    iget-object v14, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 391
    invoke-virtual {v14}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 393
    move-result-object v14

    .line 396
    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 397
    const-string v13, "SystemUi.QS_DIALOG_MONITORING_CA_CERT_SUBTITLE"

    .line 399
    invoke-virtual {v14, v13, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 401
    move-result-object v7

    .line 404
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :goto_5
    if-nez v8, :cond_c

    .line 408
    const/4 v3, 0x0

    .line 410
    goto :goto_6

    .line 411
    :cond_c
    if-eqz v1, :cond_d

    .line 412
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 414
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 416
    move-result-object v3

    .line 419
    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 420
    const-string v8, "SystemUi.QS_DIALOG_MANAGEMENT_NETWORK"

    .line 422
    invoke-virtual {v3, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 424
    move-result-object v3

    .line 427
    goto :goto_6

    .line 428
    :cond_d
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 429
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 431
    move-result-object v3

    .line 434
    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 435
    const-string v8, "SystemUi.QS_DIALOG_WORK_PROFILE_NETWORK"

    .line 437
    invoke-virtual {v3, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 439
    move-result-object v3

    .line 442
    :goto_6
    const v7, 0x7f0a0689    # @id/network_logging_subtitle

    .line 443
    const v8, 0x7f0a0688    # @id/network_logging_disclosures

    .line 446
    if-nez v3, :cond_e

    .line 449
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 451
    move-result-object v8

    .line 454
    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    .line 455
    goto :goto_7

    .line 458
    :cond_e
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 459
    move-result-object v8

    .line 462
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 463
    const v8, 0x7f0a068a    # @id/network_logging_warning

    .line 466
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 469
    move-result-object v8

    .line 472
    check-cast v8, Landroid/widget/TextView;

    .line 473
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 478
    move-result-object v8

    .line 481
    check-cast v8, Landroid/widget/TextView;

    .line 482
    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 484
    invoke-virtual {v13}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 486
    move-result-object v13

    .line 489
    iget-object v14, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 490
    const-string v7, "SystemUi.QS_DIALOG_MONITORING_NETWORK_SUBTITLE"

    .line 492
    invoke-virtual {v13, v7, v14}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 494
    move-result-object v7

    .line 497
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :goto_7
    if-nez v9, :cond_f

    .line 501
    if-nez v10, :cond_f

    .line 503
    const/4 v7, 0x0

    .line 505
    goto/16 :goto_a

    .line 506
    :cond_f
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 508
    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 510
    const-string v8, "SystemUi.QS_DIALOG_MANAGEMENT_TWO_NAMED_VPN"

    .line 513
    if-eqz v1, :cond_12

    .line 515
    if-eqz v9, :cond_10

    .line 517
    if-eqz v10, :cond_10

    .line 519
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 521
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 523
    move-result-object v1

    .line 526
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;

    .line 527
    invoke-direct {v4, v0, v9, v10, v2}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;Ljava/lang/String;I)V

    .line 529
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 532
    move-result-object v9

    .line 535
    invoke-virtual {v1, v8, v4, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 536
    move-result-object v1

    .line 539
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 540
    goto/16 :goto_9

    .line 543
    :cond_10
    if-eqz v9, :cond_11

    .line 545
    goto :goto_8

    .line 547
    :cond_11
    move-object v9, v10

    .line 548
    :goto_8
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 549
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 551
    move-result-object v1

    .line 554
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    .line 555
    invoke-direct {v4, v0, v9, v12}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    .line 557
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 560
    move-result-object v8

    .line 563
    const-string v9, "SystemUi.QS_DIALOG_MANAGEMENT_NAMED_VPN"

    .line 564
    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 566
    move-result-object v1

    .line 569
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 570
    goto :goto_9

    .line 573
    :cond_12
    if-eqz v9, :cond_13

    .line 574
    if-eqz v10, :cond_13

    .line 576
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 578
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 580
    move-result-object v1

    .line 583
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;

    .line 584
    const/4 v12, 0x1

    .line 586
    invoke-direct {v4, v0, v9, v10, v12}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;Ljava/lang/String;I)V

    .line 587
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 590
    move-result-object v9

    .line 593
    invoke-virtual {v1, v8, v4, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 594
    move-result-object v1

    .line 597
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 598
    goto :goto_9

    .line 601
    :cond_13
    if-eqz v10, :cond_14

    .line 602
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 604
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 606
    move-result-object v1

    .line 609
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    .line 610
    const/4 v8, 0x4

    .line 612
    invoke-direct {v4, v0, v10, v8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    .line 613
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 616
    move-result-object v8

    .line 619
    const-string v9, "SystemUi.QS_DIALOG_WORK_PROFILE_NAMED_VPN"

    .line 620
    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 622
    move-result-object v1

    .line 625
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 626
    goto :goto_9

    .line 629
    :cond_14
    if-eqz v4, :cond_15

    .line 630
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 632
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 634
    move-result-object v1

    .line 637
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;

    .line 638
    const/4 v8, 0x5

    .line 640
    invoke-direct {v4, v0, v9, v8}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/String;I)V

    .line 641
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 644
    move-result-object v8

    .line 647
    const-string v9, "SystemUi.QS_DIALOG_PERSONAL_PROFILE_NAMED_VPN"

    .line 648
    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 650
    move-result-object v1

    .line 653
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 654
    goto :goto_9

    .line 657
    :cond_15
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 658
    const v4, 0x7f1307ce    # @string/monitoring_description_named_vpn 'This device is connected to the internet through %1$s. Your network activity, including emails and b ...'

    .line 660
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 663
    move-result-object v8

    .line 666
    invoke-virtual {v1, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 667
    move-result-object v1

    .line 670
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 671
    :goto_9
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 674
    const v4, 0x7f1307d3    # @string/monitoring_description_vpn_settings_separator ' '

    .line 676
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 679
    move-result-object v1

    .line 682
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 683
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 686
    const v4, 0x7f1307d2    # @string/monitoring_description_vpn_settings 'Open VPN settings'

    .line 688
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 691
    move-result-object v1

    .line 694
    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooterUtils$VpnSpan;

    .line 695
    invoke-direct {v4, v0}, Lcom/android/systemui/qs/QSSecurityFooterUtils$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;)V

    .line 697
    invoke-virtual {v7, v1, v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 700
    :goto_a
    const v1, 0x7f0a0a92    # @id/vpn_subtitle

    .line 703
    const v4, 0x7f0a0a91    # @id/vpn_disclosures

    .line 706
    if-nez v7, :cond_16

    .line 709
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 711
    move-result-object v0

    .line 714
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 715
    goto :goto_b

    .line 718
    :cond_16
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 719
    move-result-object v4

    .line 722
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 723
    const v4, 0x7f0a0a93    # @id/vpn_warning

    .line 726
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 729
    move-result-object v4

    .line 732
    check-cast v4, Landroid/widget/TextView;

    .line 733
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    new-instance v8, Landroid/text/method/LinkMovementMethod;

    .line 738
    invoke-direct {v8}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 740
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 743
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 746
    move-result-object v4

    .line 749
    check-cast v4, Landroid/widget/TextView;

    .line 750
    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 752
    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 754
    move-result-object v8

    .line 757
    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 758
    const-string v9, "SystemUi.QS_DIALOG_MONITORING_VPN_SUBTITLE"

    .line 760
    invoke-virtual {v8, v9, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 762
    move-result-object v0

    .line 765
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    :goto_b
    if-eqz v5, :cond_17

    .line 769
    const/4 v12, 0x1

    .line 771
    goto :goto_c

    .line 772
    :cond_17
    move v12, v2

    .line 773
    :goto_c
    if-eqz v6, :cond_18

    .line 774
    const/4 v0, 0x1

    .line 776
    goto :goto_d

    .line 777
    :cond_18
    move v0, v2

    .line 778
    :goto_d
    if-eqz v3, :cond_19

    .line 779
    const/4 v3, 0x1

    .line 781
    goto :goto_e

    .line 782
    :cond_19
    move v3, v2

    .line 783
    :goto_e
    if-eqz v7, :cond_1a

    .line 784
    const/4 v2, 0x1

    .line 786
    :cond_1a
    if-eqz v12, :cond_1b

    .line 787
    goto :goto_10

    .line 789
    :cond_1b
    if-eqz v3, :cond_1c

    .line 790
    add-int/lit8 v4, v0, 0x1

    .line 792
    goto :goto_f

    .line 794
    :cond_1c
    move v4, v0

    .line 795
    :goto_f
    if-eqz v2, :cond_1d

    .line 796
    add-int/lit8 v4, v4, 0x1

    .line 798
    :cond_1d
    const/4 v5, 0x1

    .line 800
    if-eq v4, v5, :cond_1e

    .line 801
    goto :goto_10

    .line 803
    :cond_1e
    if-eqz v0, :cond_1f

    .line 804
    const v0, 0x7f0a01b5    # @id/ca_certs_subtitle

    .line 806
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 809
    move-result-object v0

    .line 812
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 813
    :cond_1f
    if-eqz v3, :cond_20

    .line 816
    const v0, 0x7f0a0689    # @id/network_logging_subtitle

    .line 818
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 821
    move-result-object v0

    .line 824
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 825
    :cond_20
    if-eqz v2, :cond_21

    .line 828
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 830
    move-result-object v0

    .line 833
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 834
    :cond_21
    :goto_10
    return-object v11
    .line 837
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 2
    return-object p0
    .line 4
.end method

.method public getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->isFinancedDevice()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 10
    const v0, 0x7f1307d9    # @string/monitoring_title_financed_device 'This device is provided by %s'

    .line 12
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 24
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 26
    move-result-object p1

    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 30
    const-string v0, "SystemUi.QS_DIALOG_MANAGEMENT_TITLE"

    .line 32
    invoke-virtual {p1, v0, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    return-object p0
    .line 38
.end method

.method public final getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 4
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 6
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 10
    const-string v0, "SystemUi.QS_MSG_MANAGEMENT"

    .line 12
    invoke-virtual {p1, v0, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooterUtils;->isFinancedDevice()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mContext:Landroid/content/Context;

    .line 25
    const v0, 0x7f1309ae    # @string/quick_settings_financed_disclosure_named_management 'This device is provided by %s'

    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 39
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 41
    move-result-object v0

    .line 44
    new-instance v1, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;

    .line 45
    const/4 v2, 0x4

    .line 47
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooterUtils;Ljava/lang/CharSequence;I)V

    .line 48
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 54
    const-string p1, "SystemUi.QS_MSG_NAMED_MANAGEMENT"

    .line 55
    invoke-virtual {v0, p1, v1, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    return-object p0
    .line 61
.end method

.method public getSettingsButton()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooterUtils$$ExternalSyntheticLambda3;

    .line 8
    const-string v1, "SystemUi.QS_DIALOG_VIEW_POLICIES"

    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public final isFinancedDevice()Z
    .locals 3

    .line 1
    const-string v0, "device_policy_manager"

    .line 2
    const-string v1, "add-isfinanced-device"

    .line 4
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 13
    check-cast p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 17
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isFinancedDevice()Z

    .line 19
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 24
    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isDeviceManaged()Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 34
    check-cast p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 38
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 40
    move-result-object v0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    .line 46
    move-result p0

    .line 49
    if-ne p0, v2, :cond_1

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    const/4 v2, 0x0

    .line 53
    :goto_0
    return v2
    .line 54
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Landroid/content/Intent;

    .line 5
    const-string v0, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    .line 7
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooterUtils;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 15
    const/4 p1, 0x0

    .line 17
    invoke-interface {p0, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

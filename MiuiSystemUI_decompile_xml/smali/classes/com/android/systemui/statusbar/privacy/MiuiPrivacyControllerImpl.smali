.class public final Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;


# static fields
.field public static FEATURE_CTA_REQUIRED_LOCATION:I = -0x1


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

.field public final mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultColor:I

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

.field public mMiuiOptimization:Z

.field public final mMiuiPrivacyCallbacks:Ljava/util/List;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public final mPermissionManager:Landroid/permission/PermissionManager;

.field public final mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

.field public final mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

.field public final mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

.field public mPrivacyItems:Ljava/util/List;

.field public final mPromptContainers:Ljava/util/HashMap;

.field public mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

.field public mSafetyCenterEnabled:Z

.field public final mSafetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

.field public final mSafetyCenterReceiver:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$1;

.field public mStatusBarVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/miui/systemui/SettingsManager;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/plugins/ActivityStarter;Landroid/permission/PermissionManager;Landroid/safetycenter/SafetyCenterManager;Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p3

    .line 4
    move-object/from16 v3, p7

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v4, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    .line 10
    invoke-direct {v4}, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;-><init>()V

    .line 12
    iput-object v4, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v4, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyItems:Ljava/util/List;

    .line 22
    new-instance v4, Ljava/util/HashMap;

    .line 24
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 26
    iput-object v4, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptContainers:Ljava/util/HashMap;

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iput-object v4, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiPrivacyCallbacks:Ljava/util/List;

    .line 36
    const/4 v4, 0x1

    .line 38
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    .line 39
    new-instance v4, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$1;

    .line 41
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;)V

    .line 43
    iput-object v4, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSafetyCenterReceiver:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$1;

    .line 46
    iput-object v1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    .line 48
    iput-object v2, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 50
    move-object v5, p4

    .line 52
    iput-object v5, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 53
    move-object v5, p6

    .line 55
    iput-object v5, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 56
    move-object/from16 v5, p8

    .line 58
    iput-object v5, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 60
    move-object/from16 v5, p9

    .line 62
    iput-object v5, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 64
    move-object/from16 v5, p10

    .line 66
    iput-object v5, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 68
    move-object/from16 v5, p11

    .line 70
    iput-object v5, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSafetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    .line 72
    move-object/from16 v6, p12

    .line 74
    iput-object v6, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 76
    move-object/from16 v6, p14

    .line 78
    iput-object v6, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 80
    move-object/from16 v6, p15

    .line 82
    iput-object v6, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 84
    move-object/from16 v6, p16

    .line 86
    iput-object v6, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 88
    invoke-virtual {v3, p0}, Lcom/miui/systemui/SettingsManager;->registerMiuiOptimizationListener(Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;)V

    .line 90
    iget-boolean v3, v3, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 93
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    .line 95
    iget-boolean v7, v2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    .line 97
    if-eq v7, v3, :cond_2

    .line 99
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    .line 101
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateDotViewHeight()V

    .line 103
    sget-boolean v3, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    .line 106
    if-eqz v3, :cond_0

    .line 108
    goto :goto_1

    .line 110
    :cond_0
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    .line 111
    if-eqz v3, :cond_1

    .line 113
    iget-object v3, v2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;

    .line 115
    goto :goto_0

    .line 117
    :cond_1
    const/4 v3, 0x0

    .line 118
    :goto_0
    iget-object v2, v2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotView:Landroid/view/ViewGroup;

    .line 119
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_2
    :goto_1
    const v2, 0x7f060781    # @color/privacy_chip_background '#3ddc84'

    .line 124
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 127
    move-result v1

    .line 130
    iput v1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mDefaultColor:I

    .line 131
    new-instance v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    .line 133
    move-object v2, p2

    .line 135
    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;Landroid/os/Looper;)V

    .line 136
    iput-object v1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    .line 139
    move-object v1, p5

    .line 141
    invoke-virtual {p5, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 142
    new-instance v1, Landroid/content/IntentFilter;

    .line 145
    const-string v2, "android.safetycenter.action.SAFETY_CENTER_ENABLED_CHANGED"

    .line 147
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    const/4 v2, 0x0

    .line 155
    const/4 v3, 0x0

    .line 156
    const/4 v7, 0x0

    .line 157
    const/16 v8, 0x38

    .line 158
    move-object/from16 p1, p13

    .line 160
    move-object p2, v4

    .line 162
    move-object p3, v1

    .line 163
    move-object/from16 p4, p16

    .line 164
    move-object p5, v2

    .line 166
    move p6, v3

    .line 167
    move-object/from16 p7, v7

    .line 168
    move/from16 p8, v8

    .line 170
    invoke-static/range {p1 .. p8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 172
    invoke-virtual/range {p11 .. p11}, Landroid/safetycenter/SafetyCenterManager;->isSafetyCenterEnabled()Z

    .line 175
    move-result v1

    .line 178
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSafetyCenterEnabled:Z

    .line 179
    return-void
    .line 181
.end method

.method public static isCTARequiredLocation(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->FEATURE_CTA_REQUIRED_LOCATION:I

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string/jumbo v0, "ro.miui.cts"

    .line 13
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    const-string v1, "1"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 25
    xor-int/2addr v0, v3

    .line 26
    const-string v1, "persist.sys.miui_optimization"

    .line 27
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p0

    .line 38
    const v0, 0x7f050070    # @bool/cta_location_tip_required 'false'

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 42
    move-result p0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    move p0, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move p0, v2

    .line 50
    :goto_0
    sput p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->FEATURE_CTA_REQUIRED_LOCATION:I

    .line 51
    :cond_1
    sget p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->FEATURE_CTA_REQUIRED_LOCATION:I

    .line 53
    if-ne p0, v3, :cond_2

    .line 55
    move v2, v3

    .line 57
    :cond_2
    return v2
    .line 58
.end method


# virtual methods
.method public final addPrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiPrivacyCallbacks:Ljava/util/List;

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiPrivacyCallbacks:Ljava/util/List;

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    .line 24
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;->onPromptInfoChanged(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$AndroidPromptInfo;)V

    .line 26
    :cond_1
    return-void
    .line 29
.end method

.method public final addPromptContainer(Landroid/widget/LinearLayout;I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 13
    const v1, 0x7f0d01d6    # @layout/miui_status_bar_prompt 'res/layout/miui_status_bar_prompt.xml'

    .line 14
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptContainers:Ljava/util/HashMap;

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updatePrompt(Landroid/widget/LinearLayout;I)V

    .line 30
    return-void
    .line 33
.end method

.method public final onChanged(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    .line 2
    if-eq v0, p1, :cond_3

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 8
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    .line 10
    if-eq v1, p1, :cond_2

    .line 12
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateDotViewHeight()V

    .line 16
    sget-boolean p1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    .line 19
    if-eqz p1, :cond_0

    .line 21
    goto :goto_1

    .line 23
    :cond_0
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    .line 24
    if-eqz p1, :cond_1

    .line 26
    iget-object p1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotView:Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->shouldUpdatePrivacyItemsChanged(Z)V

    .line 38
    :cond_3
    return-void
    .line 41
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 2
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 6
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    .line 13
    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPendingIntent:Landroid/app/PendingIntent;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 21
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :cond_1
    :goto_0
    const-class p0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 31
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    .line 39
    goto :goto_1

    .line 42
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSafetyCenterEnabled:Z

    .line 43
    if-eqz p1, :cond_3

    .line 45
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda0;

    .line 49
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;)V

    .line 51
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    goto :goto_1

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p1, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    .line 62
    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 66
    :cond_4
    new-instance v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;

    .line 69
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;Landroid/content/Context;)V

    .line 71
    iget-object p0, p1, Lcom/android/systemui/privacy/PrivacyDialogController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 74
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    :goto_1
    return-void
    .line 79
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mResources:Landroid/content/res/Resources;

    .line 4
    const v0, 0x10502bd    # @android:dimen/text_size_menu_header_material

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result p1

    .line 12
    iget v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    .line 13
    if-eq v0, p1, :cond_0

    .line 15
    iput p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateDotViewHeight()V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f0710de    # @dimen/status_bar_icon_height '20.3636dp'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptContainers:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 17
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/LinearLayout;

    .line 41
    if-eqz v1, :cond_0

    .line 43
    const v2, 0x7f0a05b5    # @id/mini_state_container

    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/FrameLayout;

    .line 52
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    move-result-object v2

    .line 59
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    return-void
    .line 66
.end method

.method public final onLocationActiveChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->isCTARequiredLocation(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "MIUILOG onLocationActiveChanged active: "

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "PrivacyNewController"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 31
    move-result-object p0

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda1;

    .line 35
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda1;-><init>(Z)V

    .line 37
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    :cond_0
    return-void
    .line 43
.end method

.method public final onPrivacyClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->onClick(Landroid/view/View;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyItems:Ljava/util/List;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->shouldUpdatePrivacyItemsChanged(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final removePrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiPrivacyCallbacks:Ljava/util/List;

    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final removePromptContainer(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptContainers:Ljava/util/HashMap;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
    .line 13
.end method

.method public final setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "action_update_prompt"

    .line 2
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    move-result v1

    .line 7
    const-string v2, "action_control_center_update_prompt"

    .line 8
    if-nez v1, :cond_0

    .line 10
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    if-nez p3, :cond_1

    .line 21
    return-void

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    if-nez p1, :cond_2

    .line 25
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPendingIntent:Landroid/app/PendingIntent;

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->onLocationActiveChanged(Z)V

    .line 32
    goto/16 :goto_1

    .line 35
    :cond_2
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    move-result p1

    .line 40
    if-eqz p1, :cond_7

    .line 41
    const-string p1, "key_status_bar_priority"

    .line 43
    const/4 p2, -0x1

    .line 45
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 46
    move-result p1

    .line 49
    const/4 p2, 0x3

    .line 50
    if-gt p1, p2, :cond_6

    .line 51
    if-gez p1, :cond_3

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    const-string p1, "key_status_bar_mini_state"

    .line 56
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 58
    move-result-object p1

    .line 61
    check-cast p1, Landroid/widget/RemoteViews;

    .line 62
    const-string p2, "key_status_bar_home_state"

    .line 64
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 66
    move-result-object p2

    .line 69
    check-cast p2, Landroid/widget/RemoteViews;

    .line 70
    if-eqz p1, :cond_6

    .line 72
    if-nez p2, :cond_4

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    const-string v0, "key_dot_color"

    .line 77
    iget v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mDefaultColor:I

    .line 79
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 81
    move-result v0

    .line 84
    const-string v1, "key_fullscreen_dot_visibility"

    .line 85
    const/16 v2, 0x8

    .line 87
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 89
    move-result v1

    .line 92
    iget-object v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 93
    if-nez v2, :cond_5

    .line 95
    new-instance v2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 97
    invoke-direct {v2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 102
    :cond_5
    const-string v2, "key_prompt_pending"

    .line 104
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 106
    move-result-object p3

    .line 109
    check-cast p3, Landroid/app/PendingIntent;

    .line 110
    iput-object p3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPendingIntent:Landroid/app/PendingIntent;

    .line 112
    iget-object p3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 114
    iput-object p1, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiniStateViews:Landroid/widget/RemoteViews;

    .line 116
    iput v0, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mDotColor:I

    .line 118
    iput v1, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mFullscreenDotVisibility:I

    .line 120
    iput-object p2, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mHomeRemoteViews:Landroid/widget/RemoteViews;

    .line 122
    goto :goto_1

    .line 124
    :cond_6
    :goto_0
    return-void

    .line 125
    :cond_7
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 126
    move-result p1

    .line 129
    if-eqz p1, :cond_b

    .line 130
    const-string p1, "key_prompt_type"

    .line 132
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    .line 134
    move-result-object p1

    .line 137
    if-nez p1, :cond_8

    .line 138
    return-void

    .line 140
    :cond_8
    const-string p2, "key_prompt_contentDescription"

    .line 141
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object p2

    .line 146
    const-string v0, "key_prompt_controlCenterDotColor"

    .line 147
    iget v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mDefaultColor:I

    .line 149
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 151
    move-result p3

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 155
    if-nez v0, :cond_9

    .line 157
    new-instance v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 159
    invoke-direct {v0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;-><init>()V

    .line 161
    iput-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 164
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 166
    iput-object p1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiType:[I

    .line 168
    iput-object p2, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiContentDescription:Ljava/lang/String;

    .line 170
    iput p3, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mControlCenterDotColor:I

    .line 172
    array-length p2, p1

    .line 174
    const/4 p3, 0x4

    .line 175
    if-ne p2, p3, :cond_b

    .line 176
    const/4 p2, 0x2

    .line 178
    aget p1, p1, p2

    .line 179
    const/4 p2, 0x1

    .line 181
    if-ne p1, p2, :cond_a

    .line 182
    move v1, p2

    .line 184
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->onLocationActiveChanged(Z)V

    .line 185
    :cond_b
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    .line 188
    if-eqz p1, :cond_c

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updatePrompt()V

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updateDotVisibility()V

    .line 195
    :cond_c
    return-void
    .line 198
.end method

.method public final setWindowState(III)V
    .locals 2

    .line 1
    if-nez p1, :cond_2

    .line 2
    const/4 p1, 0x1

    .line 4
    if-ne p2, p1, :cond_2

    .line 5
    const/4 p2, 0x0

    .line 7
    if-nez p3, :cond_0

    .line 8
    move v0, p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, p2

    .line 12
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    .line 13
    if-eq v0, v1, :cond_2

    .line 15
    if-nez p3, :cond_1

    .line 17
    goto :goto_1

    .line 19
    :cond_1
    move p1, p2

    .line 20
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updateDotVisibility()V

    .line 23
    :cond_2
    return-void
    .line 26
.end method

.method public final shouldUpdatePrivacyItemsChanged(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    if-nez v0, :cond_e

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyItems:Ljava/util/List;

    .line 13
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x1

    .line 26
    if-eq v2, v3, :cond_2

    .line 27
    :cond_1
    move v0, v5

    .line 29
    goto :goto_3

    .line 30
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    move-result v2

    .line 36
    move v3, v4

    .line 37
    :goto_0
    if-ge v3, v2, :cond_1

    .line 38
    iget-object v6, v0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    .line 40
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v6

    .line 45
    check-cast v6, Lcom/android/systemui/privacy/PrivacyItem;

    .line 46
    iget-object v6, v6, Lcom/android/systemui/privacy/PrivacyItem;->log:Ljava/lang/String;

    .line 48
    move v7, v4

    .line 50
    :goto_1
    if-ge v7, v2, :cond_4

    .line 51
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v8

    .line 56
    check-cast v8, Lcom/android/systemui/privacy/PrivacyItem;

    .line 57
    invoke-virtual {v8}, Lcom/android/systemui/privacy/PrivacyItem;->toString()Ljava/lang/String;

    .line 59
    move-result-object v8

    .line 62
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v8

    .line 66
    if-eqz v8, :cond_3

    .line 67
    move v6, v5

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 71
    goto :goto_1

    .line 73
    :cond_4
    move v6, v4

    .line 74
    :goto_2
    if-nez v6, :cond_5

    .line 75
    move v0, v4

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 79
    goto :goto_0

    .line 81
    :goto_3
    if-eqz v0, :cond_d

    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyItems:Ljava/util/List;

    .line 86
    iput-object v0, p1, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 90
    move-result p1

    .line 93
    const/4 v0, 0x0

    .line 94
    if-lez p1, :cond_c

    .line 95
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    .line 97
    if-nez p1, :cond_6

    .line 99
    new-instance p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    .line 101
    invoke-direct {p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    .line 106
    :cond_6
    const/4 p1, 0x4

    .line 108
    new-array p1, p1, [I

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    .line 116
    iget-object v1, v1, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object v1

    .line 123
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v2

    .line 127
    if-eqz v2, :cond_b

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v2

    .line 133
    check-cast v2, Lcom/android/systemui/privacy/PrivacyItem;

    .line 134
    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 138
    move-result v2

    .line 141
    if-eqz v2, :cond_a

    .line 142
    if-eq v2, v5, :cond_9

    .line 144
    const/4 v3, 0x2

    .line 146
    if-eq v2, v3, :cond_8

    .line 147
    const/4 v3, 0x3

    .line 149
    if-eq v2, v3, :cond_7

    .line 150
    goto :goto_4

    .line 152
    :cond_7
    aput v5, p1, v3

    .line 153
    goto :goto_4

    .line 155
    :cond_8
    aput v5, p1, v3

    .line 156
    goto :goto_4

    .line 158
    :cond_9
    aput v5, p1, v5

    .line 159
    goto :goto_4

    .line 161
    :cond_a
    aput v5, p1, v4

    .line 162
    goto :goto_4

    .line 164
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    .line 165
    iput-object p1, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;->mAndroidType:[I

    .line 167
    iput-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;->mAndroidContentDescription:Ljava/lang/String;

    .line 169
    goto :goto_5

    .line 171
    :cond_c
    iput-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    .line 172
    :goto_5
    move p1, v5

    .line 174
    :cond_d
    if-nez p1, :cond_e

    .line 175
    return-void

    .line 177
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updatePrompt()V

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updateDotVisibility()V

    .line 181
    return-void
    .line 184
.end method

.method public final updateDotVisibility()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    .line 2
    const/16 v1, 0xa

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    .line 9
    const/16 v2, 0xb

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    .line 16
    if-eqz v0, :cond_3

    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    .line 20
    if-nez v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 24
    if-eqz v0, :cond_2

    .line 26
    iget v3, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mFullscreenDotVisibility:I

    .line 28
    if-nez v3, :cond_2

    .line 30
    iget-object v3, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mHomeRemoteViews:Landroid/widget/RemoteViews;

    .line 32
    if-nez v3, :cond_0

    .line 34
    iget-object v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiType:[I

    .line 36
    if-eqz v0, :cond_2

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 40
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    .line 42
    if-eqz v0, :cond_1

    .line 44
    const/4 v0, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/16 v0, 0x3e8

    .line 48
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    .line 50
    int-to-long v2, v0

    .line 52
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 53
    goto :goto_1

    .line 56
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    .line 57
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    goto :goto_1

    .line 62
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    .line 63
    if-nez v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyItems:Ljava/util/List;

    .line 67
    if-eqz v0, :cond_4

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 71
    move-result v0

    .line 74
    if-lez v0, :cond_4

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    .line 77
    const-wide/16 v2, 0x1f4

    .line 79
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 81
    goto :goto_1

    .line 84
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    .line 85
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    :goto_1
    return-void
    .line 90
.end method

.method public final updatePrompt()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptContainers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updatePrompt(Landroid/widget/LinearLayout;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiPrivacyCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;

    if-eqz v1, :cond_1

    .line 6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    :cond_3
    invoke-interface {v1, v4, v3}, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;->onPromptInfoChanged(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$AndroidPromptInfo;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final updatePrompt(Landroid/widget/LinearLayout;I)V
    .locals 11

    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const v8, 0x7f0a0738    # @id/privacy_dot_image

    const v9, 0x7f0a05b5    # @id/mini_state_container

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 10
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz p0, :cond_9

    .line 13
    iget p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mDotColor:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_0
    if-ne p2, v5, :cond_1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz p0, :cond_9

    .line 17
    iget p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mDotColor:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 18
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_3

    :cond_1
    const/4 p1, 0x2

    const-string/jumbo v8, "updateMiuiPrivacyPrompt: something wrong "

    const-string v9, "PrivacyNewController"

    if-ne p2, p1, :cond_5

    .line 19
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 20
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiniStateViews:Landroid/widget/RemoteViews;

    if-nez p1, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 22
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 23
    iget-object v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0710f2    # @dimen/status_bar_privacy_icon_height '26.0dp'

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {p1, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 26
    iget-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f0710f6    # @dimen/status_bar_prompt_min_width '48.0dp'

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-static {v9, v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v7, :cond_3

    .line 28
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    invoke-virtual {v0, v7, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 32
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 33
    :cond_4
    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_5
    if-ne p2, v4, :cond_9

    .line 34
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mHomeRemoteViews:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_9

    .line 35
    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 36
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0710d8    # @dimen/status_bar_home_privacy_icon_height '22.0dp'

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {p1, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0710d9    # @dimen/status_bar_home_prompt_min_width '22.0dp'

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumWidth(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, p1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 41
    invoke-static {v9, v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v7, :cond_9

    .line 42
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 44
    invoke-virtual {v0, v7, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 45
    :cond_6
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 46
    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 47
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 49
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_9

    if-eq p2, v5, :cond_9

    if-ne p2, v4, :cond_7

    goto :goto_3

    .line 50
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    .line 51
    iget-object p1, p1, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 53
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f0710de    # @dimen/status_bar_icon_height '20.3636dp'

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    .line 57
    iget-object p1, p1, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->viewCreator:Lkotlin/jvm/functions/Function1;

    .line 58
    iget-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 59
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 63
    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    :goto_3
    return-void
.end method

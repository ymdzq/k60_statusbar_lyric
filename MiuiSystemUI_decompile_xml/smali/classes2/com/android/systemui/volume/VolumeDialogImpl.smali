.class public final Lcom/android/systemui/volume/VolumeDialogImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

.field public final mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field public mActiveStream:I

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

.field public mAutomute:Z

.field public final mChangeVolumeRowTintWhenInactive:Z

.field public mConfigChanged:Z

.field public mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field public final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogImpl$7;

.field public final mCrossWindowBlurEnabledListener:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda0;

.field public mCsdDialog:Lcom/android/systemui/volume/CsdWarningDialog;

.field public final mCsdWarningDialogFactory:Lcom/android/systemui/volume/CsdWarningDialog$Factory;

.field public mDevicePosture:I

.field public final mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mDevicePostureControllerCallback:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

.field public mDialogCornerRadius:I

.field public final mDialogHideAnimationDurationMs:I

.field public mDialogRowsView:Landroid/view/ViewGroup;

.field public mDialogRowsViewBackground:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field public mDialogRowsViewContainer:Landroid/view/ViewGroup;

.field public final mDialogShowAnimationDurationMs:I

.field public mDialogView:Landroid/view/ViewGroup;

.field public mDialogWidth:I

.field public final mDynamic:Landroid/util/SparseBooleanArray;

.field public final mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

.field public mHasSeenODICaptionsTooltip:Z

.field public mHovering:Z

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public mIsAnimatingDismiss:Z

.field public mIsRingerDrawerOpen:Z

.field public final mKeyguard:Landroid/app/KeyguardManager;

.field public final mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

.field public mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

.field public mODICaptionsTooltipView:Landroid/view/View;

.field public mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

.field public mODICaptionsView:Landroid/view/ViewGroup;

.field public mOrientation:I

.field public mOriginalGravity:I

.field public mPrevActiveStream:I

.field public mRinger:Landroid/view/ViewGroup;

.field public mRingerAndDrawerContainer:Landroid/view/View;

.field public mRingerAndDrawerContainerBackground:Landroid/graphics/drawable/Drawable;

.field public mRingerCount:I

.field public mRingerDrawerClosedAmount:F

.field public mRingerDrawerContainer:Landroid/view/ViewGroup;

.field public mRingerDrawerIconAnimatingDeselected:Landroid/widget/ImageView;

.field public mRingerDrawerIconAnimatingSelected:Landroid/widget/ImageView;

.field public final mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

.field public mRingerDrawerItemSize:I

.field public mRingerDrawerMute:Landroid/view/ViewGroup;

.field public mRingerDrawerMuteIcon:Landroid/widget/ImageView;

.field public mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

.field public mRingerDrawerNormal:Landroid/view/ViewGroup;

.field public mRingerDrawerNormalIcon:Landroid/widget/ImageView;

.field public mRingerDrawerVibrate:Landroid/view/ViewGroup;

.field public mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

.field public mRingerIcon:Landroid/widget/ImageButton;

.field public mRingerRowsPadding:I

.field public final mRows:Ljava/util/List;

.field public mSafetyWarning:Lcom/android/systemui/volume/VolumeDialogImpl$5;

.field public final mSafetyWarningLock:Ljava/lang/Object;

.field public mSelectedRingerContainer:Landroid/view/ViewGroup;

.field public mSelectedRingerIcon:Landroid/widget/ImageView;

.field public mSettingsIcon:Landroid/widget/ImageButton;

.field public mSettingsView:Landroid/view/View;

.field public mShowA11yStream:Z

.field public final mShowActiveStreamOnly:Z

.field public final mShowLowMediaVolumeIcon:Z

.field public mShowVibrate:Z

.field public mShowing:Z

.field public mSilentMode:Z

.field public mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field public mTopContainer:Landroid/view/View;

.field public final mTouchableRegion:Landroid/graphics/Region;

.field public final mUseBackgroundBlur:Z

.field public final mVolumePanelFactory:Lcom/android/systemui/volume/VolumePanelFactory;

.field final mVolumeRingerIconDrawableId:I

.field final mVolumeRingerMuteIconDrawableId:I

.field public mWindow:Landroid/view/Window;

.field public mWindowGravity:I

.field public mZenIcon:Landroid/widget/FrameLayout;


# direct methods
.method public static -$$Nest$mshowH(Lcom/android/systemui/volume/VolumeDialogImpl;IZI)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v0, "VolumeDialogImpl#showH"

    .line 5
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "showH r="

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    sget-object v2, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    .line 20
    aget-object v2, v2, p1

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 34
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 40
    const/4 v2, 0x2

    .line 42
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    .line 49
    const/4 v2, 0x0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0, p3}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog(I)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 57
    iget-object v3, v0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    .line 59
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 61
    move-result v4

    .line 64
    if-eqz v4, :cond_0

    .line 65
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 71
    check-cast v3, Landroid/widget/TextView;

    .line 72
    iget-object v0, v0, Lcom/android/systemui/volume/ConfigurableTexts;->mUpdateAll:Lcom/android/systemui/volume/ConfigurableTexts$2;

    .line 74
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 76
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    .line 79
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH(I)V

    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 86
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 88
    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object p1

    .line 96
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 97
    move-result-object p2

    .line 100
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 104
    invoke-static {v2, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 108
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 110
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 113
    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateBackgroundForDrawerClosedAmount()V

    .line 121
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 124
    return-void
    .line 127
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/VolumeDialogController;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/volume/VolumePanelFactory;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/volume/CsdWarningDialog$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Landroid/os/Looper;Lcom/android/systemui/dump/DumpManager;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v2, p11

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v3, Landroid/graphics/Region;

    .line 9
    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 11
    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    .line 14
    const/4 v3, 0x2

    .line 16
    new-array v4, v3, [F

    .line 17
    fill-array-data v4, :array_0

    .line 19
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 22
    move-result-object v4

    .line 25
    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    .line 26
    new-array v3, v3, [F

    .line 28
    fill-array-data v3, :array_1

    .line 30
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 33
    move-result-object v3

    .line 36
    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    .line 37
    const/4 v3, 0x0

    .line 39
    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    .line 40
    const/high16 v4, 0x3f800000    # 1.0f

    .line 42
    iput v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerClosedAmount:F

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 51
    new-instance v4, Landroid/util/SparseBooleanArray;

    .line 53
    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 55
    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 58
    new-instance v4, Ljava/lang/Object;

    .line 60
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 65
    new-instance v4, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    .line 67
    invoke-direct {v4, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 69
    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    .line 72
    const/4 v4, 0x1

    .line 74
    iput-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 75
    iput-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 77
    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 79
    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    .line 81
    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 83
    const/4 v5, 0x0

    .line 85
    iput-object v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 86
    const v6, 0x7f0811b6    # @drawable/ic_speaker_on 'res/drawable/ic_speaker_on.xml'

    .line 88
    iput v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerIconDrawableId:I

    .line 91
    const v6, 0x7f0811b5    # @drawable/ic_speaker_mute 'res/drawable/ic_speaker_mute.xml'

    .line 93
    iput v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    .line 96
    new-instance v6, Lcom/android/systemui/volume/VolumeDialogImpl$7;

    .line 98
    invoke-direct {v6, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$7;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 100
    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogImpl$7;

    .line 103
    new-instance v6, Landroid/view/ContextThemeWrapper;

    .line 105
    const v7, 0x7f140890    # @style/volume_dialog_theme

    .line 107
    invoke-direct {v6, p1, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 113
    new-instance v7, Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 115
    move-object/from16 v8, p12

    .line 117
    invoke-direct {v7, p0, v8}, Lcom/android/systemui/volume/VolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/os/Looper;)V

    .line 119
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 122
    move-object v7, p2

    .line 124
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 125
    const-string v7, "keyguard"

    .line 127
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    move-result-object v7

    .line 132
    check-cast v7, Landroid/app/KeyguardManager;

    .line 133
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    .line 135
    const-string v7, "activity"

    .line 137
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    move-result-object v7

    .line 142
    check-cast v7, Landroid/app/ActivityManager;

    .line 143
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 145
    move-object v7, p3

    .line 147
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 148
    move-object v7, p4

    .line 150
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 151
    move-object v7, p5

    .line 153
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 154
    move-object v7, p6

    .line 156
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 157
    move-object/from16 v7, p7

    .line 159
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelFactory:Lcom/android/systemui/volume/VolumePanelFactory;

    .line 161
    move-object/from16 v7, p10

    .line 163
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCsdWarningDialogFactory:Lcom/android/systemui/volume/CsdWarningDialog$Factory;

    .line 165
    move-object/from16 v7, p8

    .line 167
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 169
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 171
    move-result-object v7

    .line 174
    const-string v8, "android.software.leanback"

    .line 175
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 177
    move-result v7

    .line 180
    if-nez v7, :cond_1

    .line 181
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 183
    move-result-object v7

    .line 186
    const-string v8, "android.hardware.type.television"

    .line 187
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 189
    move-result v7

    .line 192
    if-eqz v7, :cond_0

    .line 193
    goto :goto_0

    .line 195
    :cond_0
    move v4, v3

    .line 196
    :cond_1
    :goto_0
    iput-boolean v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowActiveStreamOnly:Z

    .line 197
    const-string v4, "HasSeenODICaptionsTooltip"

    .line 199
    invoke-static {p1, v4, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 201
    move-result v1

    .line 204
    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 205
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 207
    move-result-object v1

    .line 210
    const v3, 0x7f050054    # @bool/config_showLowMediaVolumeIcon 'false'

    .line 211
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 214
    move-result v1

    .line 217
    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowLowMediaVolumeIcon:Z

    .line 218
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 220
    move-result-object v1

    .line 223
    const v3, 0x7f050013    # @bool/config_changeVolumeRowTintWhenInactive 'true'

    .line 224
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 227
    move-result v1

    .line 230
    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mChangeVolumeRowTintWhenInactive:Z

    .line 231
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    move-result-object v1

    .line 236
    const v3, 0x7f0b0031    # @integer/config_dialogShowAnimationDurationMs '300'

    .line 237
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 240
    move-result v1

    .line 243
    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogShowAnimationDurationMs:I

    .line 244
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 246
    move-result-object v1

    .line 249
    const v3, 0x7f0b0030    # @integer/config_dialogHideAnimationDurationMs '250'

    .line 250
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 253
    move-result v1

    .line 256
    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogHideAnimationDurationMs:I

    .line 257
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 259
    move-result-object v1

    .line 262
    const v3, 0x7f05006f    # @bool/config_volumeDialogUseBackgroundBlur 'false'

    .line 263
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 266
    move-result v1

    .line 269
    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mUseBackgroundBlur:Z

    .line 270
    move-object/from16 v3, p9

    .line 272
    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 274
    const-string v3, "VolumeDialogImpl"

    .line 276
    move-object/from16 v4, p13

    .line 278
    invoke-virtual {v4, v3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 280
    if-eqz v1, :cond_2

    .line 283
    const v1, 0x7f060949    # @color/volume_dialog_background_color_above_blur '@android:color/transparent'

    .line 285
    invoke-virtual {v6, v1}, Landroid/content/Context;->getColor(I)I

    .line 288
    move-result v1

    .line 291
    const v3, 0x7f060948    # @color/volume_dialog_background_color '@android:color/transparent'

    .line 292
    invoke-virtual {v6, v3}, Landroid/content/Context;->getColor(I)I

    .line 295
    move-result v3

    .line 298
    new-instance v4, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda0;

    .line 299
    invoke-direct {v4, p0, v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;II)V

    .line 301
    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCrossWindowBlurEnabledListener:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda0;

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDimens()V

    .line 306
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 309
    move-result-object v1

    .line 312
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 313
    move-result-object v1

    .line 316
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 317
    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOrientation:I

    .line 319
    iput-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 321
    if-eqz v2, :cond_3

    .line 323
    move-object v1, v2

    .line 325
    check-cast v1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 326
    iget v1, v1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    .line 328
    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePosture:I

    .line 330
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

    .line 332
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 334
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureControllerCallback:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

    .line 337
    goto :goto_1

    .line 339
    :cond_3
    iput-object v5, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureControllerCallback:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

    .line 340
    :goto_1
    return-void

    .line 342
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static getImpliedLevel(ILandroid/widget/SeekBar;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    .line 2
    move-result p1

    .line 5
    div-int/lit8 v0, p1, 0x64

    .line 6
    add-int/lit8 v1, v0, -0x1

    .line 8
    if-nez p0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-ne p0, p1, :cond_1

    .line 14
    goto :goto_0

    .line 16
    :cond_1
    int-to-float p0, p0

    .line 17
    int-to-float p1, p1

    .line 18
    div-float/2addr p0, p1

    .line 19
    int-to-float p1, v1

    .line 20
    mul-float/2addr p0, p1

    .line 21
    float-to-int p0, p0

    .line 22
    add-int/lit8 v0, p0, 0x1

    .line 23
    :goto_0
    return v0
    .line 25
.end method


# virtual methods
.method public final addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 2
    if-eqz p2, :cond_1

    .line 4
    const/4 v0, 0x1

    .line 6
    if-eq p2, v0, :cond_0

    .line 7
    const p2, 0x7f130c4e    # @string/volume_ringer_status_normal 'Ring'

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    const p2, 0x7f130c50    # @string/volume_ringer_status_vibrate 'Vibrate'

    .line 13
    goto :goto_0

    .line 16
    :cond_1
    const p2, 0x7f130c4f    # @string/volume_ringer_status_silent 'Mute'

    .line 17
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 24
    new-instance p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;

    .line 27
    invoke-direct {p0, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$4;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 32
    return-void
    .line 35
.end method

.method public final addRow$1(IIIZZ)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 6
    const-string v1, "Adding row for stream "

    .line 8
    invoke-static {v1, p1, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    :cond_0
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 13
    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>()V

    .line 15
    move-object v2, p0

    .line 18
    move-object v3, v0

    .line 19
    move v4, p1

    .line 20
    move v5, p2

    .line 21
    move v6, p3

    .line 22
    move v7, p4

    .line 23
    move v8, p5

    .line 24
    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 28
    iget-object p2, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 35
    check-cast p0, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
    .line 42
.end method

.method public final checkODICaptionsTooltip(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    if-nez p1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 12
    const/4 p1, 0x1

    .line 14
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    if-eqz v0, :cond_1

    .line 19
    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 23
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltip()V

    .line 27
    :cond_1
    :goto_0
    return-void
    .line 30
.end method

.method public clearInternalHandlerAfterTest()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public final destroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 2
    const-string v1, "destroy() called"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogImpl$7;

    .line 11
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 24
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 29
    if-eqz v0, :cond_0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureControllerCallback:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

    .line 33
    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 35
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
    .line 40
.end method

.method public final dismissH(I)V
    .locals 9

    .line 1
    const-string v0, "VolumeDialogImpl#dismissH"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "mDialog.dismiss() reason: "

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    .line 16
    aget-object v2, v2, p1

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " from: "

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 42
    const/4 v2, 0x2

    .line 44
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 45
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 48
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 54
    const/4 v3, 0x0

    .line 56
    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 59
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 63
    move-result v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    move v1, v2

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v1, v3

    .line 71
    :goto_0
    if-eqz v1, :cond_2

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    const-string v5, "dismissH: volume dialog possible in inconsistent state:mShowing="

    .line 76
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    const-string v5, ", mDialog==null?"

    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 91
    if-nez v5, :cond_1

    .line 93
    move v5, v2

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move v5, v3

    .line 97
    :goto_1
    invoke-static {v4, v5, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 98
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 101
    if-eqz v4, :cond_3

    .line 103
    if-nez v1, :cond_3

    .line 105
    const-string p0, "dismissH: skipping dismiss because isAnimatingDismiss is true and showingStateInconsistent is false"

    .line 107
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 112
    return-void

    .line 115
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 116
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 118
    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 120
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 124
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 127
    if-eqz v1, :cond_4

    .line 129
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object p1

    .line 136
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 140
    invoke-static {v2, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 141
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 144
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 147
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 150
    const/high16 v4, 0x3f800000    # 1.0f

    .line 152
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 154
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 157
    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 159
    move-result-object p1

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 163
    move-result-object p1

    .line 166
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogHideAnimationDurationMs:I

    .line 167
    int-to-long v4, v1

    .line 169
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 170
    move-result-object p1

    .line 173
    new-instance v1, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    .line 174
    invoke-direct {v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 176
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 179
    move-result-object p1

    .line 182
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    .line 183
    const/4 v4, 0x3

    .line 185
    invoke-direct {v1, p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 186
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 189
    move-result-object p1

    .line 192
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 195
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 199
    move-result v1

    .line 202
    if-eqz v1, :cond_5

    .line 203
    move v1, v2

    .line 205
    goto :goto_2

    .line 206
    :cond_5
    move v1, v3

    .line 207
    :goto_2
    if-nez v1, :cond_8

    .line 208
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowGravity:I

    .line 210
    and-int/2addr v1, v4

    .line 212
    if-ne v1, v4, :cond_6

    .line 213
    move v3, v2

    .line 215
    :cond_6
    if-eqz v3, :cond_7

    .line 216
    const/4 v1, -0x1

    .line 218
    goto :goto_3

    .line 219
    :cond_7
    move v1, v2

    .line 220
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 221
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    .line 223
    move-result v3

    .line 226
    mul-int/2addr v3, v1

    .line 227
    int-to-float v1, v3

    .line 228
    const/high16 v3, 0x40000000    # 2.0f

    .line 229
    div-float/2addr v1, v3

    .line 231
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 232
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 235
    const-string v6, "dismiss"

    .line 237
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogHideAnimationDurationMs:I

    .line 239
    int-to-long v7, v1

    .line 241
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    .line 242
    move-object v3, v1

    .line 244
    move-object v4, p0

    .line 245
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;Ljava/lang/String;J)V

    .line 246
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 249
    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 253
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    .line 256
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 259
    monitor-enter p1

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/VolumeDialogImpl$5;

    .line 262
    if-eqz v1, :cond_a

    .line 264
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    .line 266
    if-eqz v1, :cond_9

    .line 268
    const-string v1, "SafetyWarning dismissed"

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/VolumeDialogImpl$5;

    .line 275
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 277
    :cond_a
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 281
    return-void

    .line 284
    :catchall_0
    move-exception p0

    .line 285
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    throw p0
    .line 287
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-class p2, Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    const-string p2, "VolumeDialogImpl state:"

    .line 4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    const-string p2, "  mShowing: "

    .line 9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 16
    const-string p2, "  mIsAnimatingDismiss: "

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 26
    const-string p2, "  mActiveStream: "

    .line 29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    iget p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 36
    const-string p2, "  mDynamic: "

    .line 39
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 46
    const-string p2, "  mAutomute: "

    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 54
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 56
    const-string p2, "  mSilentMode: "

    .line 59
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 64
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 66
    return-void
    .line 69
.end method

.method public final getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 20
    iget v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 22
    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 24
    if-ne v2, v3, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 36
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 47
    iget v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 49
    const/4 v3, 0x3

    .line 51
    if-ne v2, v3, :cond_2

    .line 52
    return-object v1

    .line 54
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    .line 57
    check-cast p0, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 63
    check-cast p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 64
    return-object p0
    .line 66
.end method

.method public final getDrawerIconViewForMode(I)Landroid/widget/ImageView;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

    .line 5
    return-object p0

    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMuteIcon:Landroid/widget/ImageView;

    .line 10
    return-object p0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormalIcon:Landroid/widget/ImageView;

    .line 13
    return-object p0
    .line 15
.end method

.method public final getRingerDrawerOpenExtraSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 4
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    .line 6
    mul-int/2addr v0, p0

    .line 8
    return v0
    .line 9
.end method

.method public final getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    .line 7
    if-eqz v1, :cond_1

    .line 9
    return-object v1

    .line 11
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p0

    .line 17
    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    .line 18
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    const-string v2, "Can\'t find translation for stream "

    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-object v0
    .line 44
.end method

.method public final getTranslationInDrawerForRingerMode(I)F
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    .line 5
    neg-int p0, p0

    .line 7
    mul-int/lit8 p0, p0, 0x2

    .line 8
    :goto_0
    int-to-float p0, p0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    .line 14
    neg-int p0, p0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    :goto_1
    return p0
    .line 19
.end method

.method public final getVisibleRowsExtraSize()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 25
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    .line 27
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 36
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogWidth:I

    .line 38
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerRowsPadding:I

    .line 40
    add-int/2addr v0, p0

    .line 42
    mul-int/2addr v0, v2

    .line 43
    return v0
    .line 44
.end method

.method public getWindowGravity()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowGravity:I

    .line 2
    return p0
    .line 4
.end method

.method public final hideCaptionsTooltip()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 25
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 30
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 35
    move-result-object v0

    .line 38
    const-wide/16 v1, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 41
    move-result-object v0

    .line 44
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogHideAnimationDurationMs:I

    .line 45
    int-to-long v1, v1

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 48
    move-result-object v0

    .line 51
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    .line 52
    const/4 v2, 0x4

    .line 54
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 58
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 62
    :cond_0
    return-void
    .line 65
.end method

.method public final hideRingerDrawer()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    .line 7
    if-nez v0, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 12
    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getDrawerIconViewForMode(I)Landroid/widget/ImageView;

    .line 16
    move-result-object v0

    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 26
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 31
    move-result-object v0

    .line 34
    const-wide/16 v2, 0xfa

    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 37
    move-result-object v0

    .line 40
    const-wide/16 v4, 0x0

    .line 41
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 43
    move-result-object v0

    .line 46
    new-instance v4, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    .line 47
    const/4 v5, 0x7

    .line 49
    invoke-direct {v4, p0, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 50
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 56
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 64
    move-result-object v0

    .line 67
    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    .line 68
    mul-int/lit8 v4, v4, 0x2

    .line 70
    int-to-float v4, v4

    .line 72
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 77
    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 83
    move-result-object v0

    .line 86
    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    .line 87
    mul-int/lit8 v4, v4, 0x2

    .line 89
    int-to-float v4, v4

    .line 91
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 92
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    .line 99
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    .line 104
    sget-object v2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 106
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    .line 111
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 118
    move-result-object v0

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 122
    move-result-object v0

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 126
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    .line 133
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 135
    const v2, 0x7f130c4a    # @string/volume_ringer_change 'Tap to change ringer mode'

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    .line 148
    return-void
    .line 150
.end method

.method public final init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    .line 4
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog(I)V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 11
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogImpl$7;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 15
    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 17
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 20
    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 22
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 25
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 27
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 32
    if-eqz p1, :cond_0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePostureControllerCallback:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

    .line 36
    check-cast p1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 38
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-void
    .line 43
.end method

.method public final initDialog(I)V
    .locals 12

    .line 1
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 2
    const-string v1, "initDialog: called!"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V

    .line 13
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDimens()V

    .line 18
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    .line 21
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 23
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 28
    const/4 v7, 0x0

    .line 30
    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 31
    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 33
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 37
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 41
    const/4 v8, 0x1

    .line 43
    invoke-virtual {v0, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 44
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 47
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 49
    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 57
    const v1, 0x10002

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 65
    const v1, 0x10c0028    # @android:interpolator/launch_task_micro_alpha

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 73
    const/high16 v1, 0x20000000

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 80
    const/16 v1, 0x7e4

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 87
    const v1, 0x1030004    # @android:style/Animation.Toast

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 95
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 97
    move-result-object v0

    .line 100
    const/4 v1, -0x3

    .line 101
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 102
    const-class v1, Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 104
    const-string v1, "VolumeDialogImpl"

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    const/4 v1, -0x1

    .line 111
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 112
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 116
    move-result-object v1

    .line 119
    const v2, 0x7f0b010e    # @integer/volume_dialog_gravity '21'

    .line 120
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 123
    move-result v1

    .line 126
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOriginalGravity:I

    .line 127
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 135
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 139
    move-result v2

    .line 142
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 143
    move-result v1

    .line 146
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindowGravity:I

    .line 147
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 149
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 151
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 156
    const/4 v1, -0x2

    .line 158
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 162
    const v1, 0x7f0d03f1    # @layout/volume_dialog 'res/layout/volume_dialog.xml'

    .line 164
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 170
    const v1, 0x7f0a0a71    # @id/volume_dialog

    .line 172
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 175
    move-result-object v0

    .line 178
    check-cast v0, Landroid/view/ViewGroup;

    .line 179
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 181
    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 187
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 192
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda3;

    .line 194
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 202
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda4;

    .line 204
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 206
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 212
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda5;

    .line 214
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 222
    const v1, 0x7f0a0a73    # @id/volume_dialog_rows

    .line 224
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 227
    move-result-object v0

    .line 230
    check-cast v0, Landroid/view/ViewGroup;

    .line 231
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 233
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mUseBackgroundBlur:Z

    .line 235
    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 239
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$1;

    .line 241
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 249
    const v1, 0x7f0a0a74    # @id/volume_dialog_rows_container

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 254
    move-result-object v0

    .line 257
    check-cast v0, Landroid/view/ViewGroup;

    .line 258
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsViewContainer:Landroid/view/ViewGroup;

    .line 260
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 262
    const v1, 0x7f0a0a75    # @id/volume_dialog_top_container

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 267
    move-result-object v0

    .line 270
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTopContainer:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 273
    const v1, 0x7f0a0a87    # @id/volume_ringer_and_drawer_container

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 278
    move-result-object v0

    .line 281
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    .line 282
    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 286
    move-result v0

    .line 289
    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 294
    move-result v1

    .line 297
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    .line 298
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 300
    move-result v2

    .line 303
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    .line 304
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 306
    move-result v3

    .line 309
    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerRowsPadding:I

    .line 310
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 317
    const v2, 0x7f081993    # @drawable/volume_background_top_rounded 'res/drawable/volume_background_top_rounded.xml'

    .line 319
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 322
    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainer:Landroid/view/View;

    .line 329
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    .line 331
    invoke-direct {v1, p0, v8}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 333
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 339
    const v1, 0x7f0a07c3    # @id/ringer

    .line 341
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 344
    move-result-object v0

    .line 347
    check-cast v0, Landroid/view/ViewGroup;

    .line 348
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    .line 350
    if-eqz v0, :cond_3

    .line 352
    const v1, 0x7f0a07c4    # @id/ringer_icon

    .line 354
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 357
    move-result-object v0

    .line 360
    check-cast v0, Landroid/widget/ImageButton;

    .line 361
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 363
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    .line 365
    const v1, 0x7f0a02e8    # @id/dnd_icon

    .line 367
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 370
    move-result-object v0

    .line 373
    check-cast v0, Landroid/widget/FrameLayout;

    .line 374
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenIcon:Landroid/widget/FrameLayout;

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 378
    const v1, 0x7f0a0a81    # @id/volume_new_ringer_active_icon

    .line 380
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 383
    move-result-object v0

    .line 386
    check-cast v0, Landroid/widget/ImageView;

    .line 387
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    .line 389
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 391
    const v1, 0x7f0a0a82    # @id/volume_new_ringer_active_icon_container

    .line 393
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 396
    move-result-object v0

    .line 399
    check-cast v0, Landroid/view/ViewGroup;

    .line 400
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    .line 402
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 404
    const v1, 0x7f0a0a77    # @id/volume_drawer_mute

    .line 406
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 409
    move-result-object v0

    .line 412
    check-cast v0, Landroid/view/ViewGroup;

    .line 413
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMute:Landroid/view/ViewGroup;

    .line 415
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 417
    const v1, 0x7f0a0a79    # @id/volume_drawer_normal

    .line 419
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 422
    move-result-object v0

    .line 425
    check-cast v0, Landroid/view/ViewGroup;

    .line 426
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormal:Landroid/view/ViewGroup;

    .line 428
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 430
    const v1, 0x7f0a0a7d    # @id/volume_drawer_vibrate

    .line 432
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 435
    move-result-object v0

    .line 438
    check-cast v0, Landroid/view/ViewGroup;

    .line 439
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrate:Landroid/view/ViewGroup;

    .line 441
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 443
    const v1, 0x7f0a0a78    # @id/volume_drawer_mute_icon

    .line 445
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 448
    move-result-object v0

    .line 451
    check-cast v0, Landroid/widget/ImageView;

    .line 452
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMuteIcon:Landroid/widget/ImageView;

    .line 454
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 456
    const v1, 0x7f0a0a7e    # @id/volume_drawer_vibrate_icon

    .line 458
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 461
    move-result-object v0

    .line 464
    check-cast v0, Landroid/widget/ImageView;

    .line 465
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

    .line 467
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 469
    const v1, 0x7f0a0a7a    # @id/volume_drawer_normal_icon

    .line 471
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 474
    move-result-object v0

    .line 477
    check-cast v0, Landroid/widget/ImageView;

    .line 478
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormalIcon:Landroid/widget/ImageView;

    .line 480
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 482
    const v1, 0x7f0a0a7c    # @id/volume_drawer_selection_background

    .line 484
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 487
    move-result-object v0

    .line 490
    check-cast v0, Landroid/view/ViewGroup;

    .line 491
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    .line 493
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMuteIcon:Landroid/widget/ImageView;

    .line 495
    if-eqz v0, :cond_4

    .line 497
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    .line 499
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 501
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormalIcon:Landroid/widget/ImageView;

    .line 504
    if-eqz v0, :cond_5

    .line 506
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerIconDrawableId:I

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 513
    const v1, 0x7f0a0a76    # @id/volume_drawer_container

    .line 515
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 518
    move-result-object v0

    .line 521
    check-cast v0, Landroid/view/ViewGroup;

    .line 522
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 524
    if-nez v0, :cond_6

    .line 526
    goto/16 :goto_1

    .line 528
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowVibrate:Z

    .line 530
    if-nez v0, :cond_7

    .line 532
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrate:Landroid/view/ViewGroup;

    .line 534
    const/16 v1, 0x8

    .line 536
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 538
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 541
    move-result v0

    .line 544
    if-nez v0, :cond_8

    .line 545
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 547
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 549
    move-result v1

    .line 552
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 553
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 555
    move-result v2

    .line 558
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 559
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 561
    move-result v3

    .line 564
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 565
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 567
    move-result v4

    .line 570
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    .line 571
    move-result v5

    .line 574
    add-int/2addr v5, v4

    .line 575
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 576
    goto :goto_0

    .line 579
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 580
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 582
    move-result v1

    .line 585
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    .line 586
    move-result v2

    .line 589
    add-int/2addr v2, v1

    .line 590
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 591
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 593
    move-result v1

    .line 596
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 597
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 599
    move-result v3

    .line 602
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 603
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 605
    move-result v4

    .line 608
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 609
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    .line 612
    const v1, 0x7f0a0a7b    # @id/volume_drawer_options

    .line 614
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 617
    move-result-object v0

    .line 620
    check-cast v0, Landroid/widget/LinearLayout;

    .line 621
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 623
    move-result v1

    .line 626
    xor-int/2addr v1, v8

    .line 627
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    .line 631
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;

    .line 633
    const/4 v2, 0x2

    .line 635
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 636
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrate:Landroid/view/ViewGroup;

    .line 642
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;

    .line 644
    invoke-direct {v1, p0, v8}, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 646
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMute:Landroid/view/ViewGroup;

    .line 652
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;

    .line 654
    invoke-direct {v1, p0, v7}, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 656
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormal:Landroid/view/ViewGroup;

    .line 662
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;

    .line 664
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 666
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 672
    const v1, 0x1010435    # @android:attr/colorAccent

    .line 674
    invoke-static {v0, v1, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 677
    move-result v0

    .line 680
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 681
    const v2, 0x10104e2    # @android:attr/colorBackgroundFloating

    .line 683
    invoke-static {v1, v2, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 686
    move-result v1

    .line 689
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    .line 690
    new-instance v3, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda7;

    .line 692
    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;II)V

    .line 694
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 697
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    .line 700
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$2;

    .line 702
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 704
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 707
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    .line 710
    const-wide/16 v1, 0xaf

    .line 712
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 714
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    .line 717
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda8;

    .line 719
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 721
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 724
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 727
    const v1, 0x7f0a06bc    # @id/odi_captions

    .line 729
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 732
    move-result-object v0

    .line 735
    check-cast v0, Landroid/view/ViewGroup;

    .line 736
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    .line 738
    if-eqz v0, :cond_9

    .line 740
    const v1, 0x7f0a06bd    # @id/odi_captions_icon

    .line 742
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 745
    move-result-object v0

    .line 748
    check-cast v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 749
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 751
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 753
    const v1, 0x7f0a06be    # @id/odi_captions_tooltip_stub

    .line 755
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 758
    move-result-object v0

    .line 761
    check-cast v0, Landroid/view/ViewStub;

    .line 762
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 764
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 766
    if-eqz v1, :cond_a

    .line 768
    if-eqz v0, :cond_a

    .line 770
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 772
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 774
    const/4 v0, 0x0

    .line 777
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 778
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 780
    const v1, 0x7f0a0867    # @id/settings_container

    .line 782
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 785
    move-result-object v0

    .line 788
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    .line 789
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 791
    const v1, 0x7f0a0863    # @id/settings

    .line 793
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 796
    move-result-object v0

    .line 799
    check-cast v0, Landroid/widget/ImageButton;

    .line 800
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    .line 802
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 804
    check-cast v0, Ljava/util/ArrayList;

    .line 806
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 808
    move-result v0

    .line 811
    if-eqz v0, :cond_c

    .line 812
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 814
    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    .line 816
    move-result v0

    .line 819
    if-nez v0, :cond_b

    .line 820
    const/16 v1, 0xa

    .line 822
    const v2, 0x7f0811e7    # @drawable/ic_volume_accessibility 'res/drawable/ic_volume_accessibility.xml'

    .line 824
    const v3, 0x7f0811e7    # @drawable/ic_volume_accessibility 'res/drawable/ic_volume_accessibility.xml'

    .line 827
    const/4 v4, 0x1

    .line 830
    const/4 v5, 0x0

    .line 831
    move-object v0, p0

    .line 832
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow$1(IIIZZ)V

    .line 833
    :cond_b
    const/4 v1, 0x3

    .line 836
    const v2, 0x7f0811ed    # @drawable/ic_volume_media 'res/drawable/ic_volume_media.xml'

    .line 837
    const v3, 0x7f0811f1    # @drawable/ic_volume_media_mute 'res/drawable/ic_volume_media_mute.xml'

    .line 840
    const/4 v4, 0x1

    .line 843
    const/4 v5, 0x1

    .line 844
    move-object v0, p0

    .line 845
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow$1(IIIZZ)V

    .line 846
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 849
    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    .line 851
    move-result v0

    .line 854
    if-nez v0, :cond_d

    .line 855
    const/4 v1, 0x2

    .line 857
    const v2, 0x7f081194    # @drawable/ic_ring_volume 'res/drawable/ic_ring_volume.xml'

    .line 858
    const v3, 0x7f081195    # @drawable/ic_ring_volume_off 'res/drawable/ic_ring_volume_off.xml'

    .line 861
    const/4 v6, 0x1

    .line 864
    const/4 v9, 0x0

    .line 865
    const/4 v4, 0x1

    .line 866
    const/4 v5, 0x0

    .line 867
    move-object v0, p0

    .line 868
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow$1(IIIZZ)V

    .line 869
    const/4 v1, 0x4

    .line 872
    const v2, 0x7f080ee4    # @drawable/ic_alarm 'res/drawable/ic_alarm.xml'

    .line 873
    const v3, 0x7f0811e9    # @drawable/ic_volume_alarm_mute 'res/drawable/ic_volume_alarm_mute.xml'

    .line 876
    const/4 v5, 0x0

    .line 879
    move-object v0, p0

    .line 880
    move v4, v6

    .line 881
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow$1(IIIZZ)V

    .line 882
    const/4 v1, 0x0

    .line 885
    const v2, 0x108053c    # @android:drawable/ic_qs_dnd

    .line 886
    const v3, 0x108053c    # @android:drawable/ic_qs_dnd

    .line 889
    const/4 v6, 0x0

    .line 892
    const/4 v4, 0x0

    .line 893
    const/4 v5, 0x0

    .line 894
    move-object v0, p0

    .line 895
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow$1(IIIZZ)V

    .line 896
    const/4 v1, 0x6

    .line 899
    const v2, 0x7f0811ea    # @drawable/ic_volume_bt_sco 'res/drawable/ic_volume_bt_sco.xml'

    .line 900
    const v3, 0x7f0811ea    # @drawable/ic_volume_bt_sco 'res/drawable/ic_volume_bt_sco.xml'

    .line 903
    const/4 v4, 0x0

    .line 906
    const/4 v5, 0x0

    .line 907
    move-object v0, p0

    .line 908
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow$1(IIIZZ)V

    .line 909
    const/4 v1, 0x1

    .line 912
    const v2, 0x7f0811fa    # @drawable/ic_volume_system 'res/drawable/ic_volume_system.xml'

    .line 913
    const v3, 0x7f0811fb    # @drawable/ic_volume_system_mute 'res/drawable/ic_volume_system_mute.xml'

    .line 916
    move-object v0, p0

    .line 919
    move v4, v6

    .line 920
    move v5, v9

    .line 921
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow$1(IIIZZ)V

    .line 922
    goto :goto_3

    .line 925
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 926
    check-cast v0, Ljava/util/ArrayList;

    .line 928
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 930
    move-result v9

    .line 933
    move v10, v7

    .line 934
    :goto_2
    if-ge v10, v9, :cond_d

    .line 935
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 937
    check-cast v0, Ljava/util/ArrayList;

    .line 939
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 941
    move-result-object v0

    .line 944
    move-object v11, v0

    .line 945
    check-cast v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 946
    iget v2, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 948
    iget v3, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    .line 950
    iget v4, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .line 952
    iget-boolean v5, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    .line 954
    iget-boolean v6, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->defaultStream:Z

    .line 956
    move-object v0, p0

    .line 958
    move-object v1, v11

    .line 959
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 960
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 963
    iget-object v1, v11, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 965
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 967
    invoke-virtual {p0, v11}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 970
    add-int/lit8 v10, v10, 0x1

    .line 973
    goto :goto_2

    .line 975
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 976
    move-result-object v0

    .line 979
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 980
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 983
    if-eqz v0, :cond_e

    .line 985
    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setAccessibilityLiveRegion(I)V

    .line 987
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 990
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;

    .line 992
    invoke-direct {v1, p0, v7}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 994
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 997
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    .line 1000
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH(I)V

    .line 1003
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 1006
    if-eqz v0, :cond_f

    .line 1008
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda9;

    .line 1010
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1012
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 1015
    iput-object v1, v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mConfirmedTapListener:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda9;

    .line 1017
    iget-object v1, v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1019
    if-nez v1, :cond_f

    .line 1021
    new-instance v1, Landroid/view/GestureDetector;

    .line 1023
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    .line 1025
    move-result-object v3

    .line 1028
    iget-object v4, v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mGestureListener:Lcom/android/systemui/volume/CaptionsToggleImageButton$1;

    .line 1029
    invoke-direct {v1, v3, v4, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 1031
    iput-object v1, v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1034
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 1036
    invoke-interface {v0, v7}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    .line 1041
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 1043
    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 1045
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1047
    return-void
    .line 1050
.end method

.method public final initDimens()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f07123e    # @dimen/volume_dialog_panel_width '56.0dp'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogWidth:I

    .line 15
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v0

    .line 22
    const v1, 0x7f07123f    # @dimen/volume_dialog_panel_width_half '28.0dp'

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogCornerRadius:I

    .line 30
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v0

    .line 37
    const v1, 0x7f07124e    # @dimen/volume_ringer_drawer_item_size '42.0dp'

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result v0

    .line 44
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    .line 45
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v0

    .line 52
    const v1, 0x7f071241    # @dimen/volume_dialog_ringer_rows_padding '7.0dp'

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 56
    move-result v0

    .line 59
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerRowsPadding:I

    .line 60
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 62
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    .line 64
    move-result v0

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowVibrate:Z

    .line 68
    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x3

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, 0x2

    .line 74
    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    .line 75
    return-void
    .line 77
.end method

.method public final initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V
    .locals 2

    .line 1
    iput p2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 2
    iput p3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    .line 4
    iput p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .line 6
    iput-boolean p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    .line 8
    iput-boolean p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->defaultStream:Z

    .line 10
    iget-object p4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 12
    invoke-virtual {p4}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 14
    move-result-object p4

    .line 17
    const p5, 0x7f0d03f2    # @layout/volume_dialog_row 'res/layout/volume_dialog_row.xml'

    .line 18
    const/4 p6, 0x0

    .line 21
    invoke-virtual {p4, p5, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    move-result-object p4

    .line 25
    iput-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 26
    iget p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 28
    invoke-virtual {p4, p5}, Landroid/view/View;->setId(I)V

    .line 30
    iget-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 33
    invoke-virtual {p4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    iget-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 38
    const p5, 0x7f0a0a88    # @id/volume_row_header

    .line 40
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p4

    .line 46
    check-cast p4, Landroid/widget/TextView;

    .line 47
    iput-object p4, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    .line 49
    iget p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 51
    mul-int/lit8 p5, p5, 0x14

    .line 53
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setId(I)V

    .line 55
    const/16 p4, 0xa

    .line 58
    if-ne p2, p4, :cond_0

    .line 60
    iget-object p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    .line 62
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    .line 64
    const/16 v1, 0xd

    .line 66
    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 68
    filled-new-array {v0}, [Landroid/text/InputFilter;

    .line 71
    move-result-object v0

    .line 74
    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 75
    :cond_0
    iget-object p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 78
    const v0, 0x7f0a02e8    # @id/dnd_icon

    .line 80
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p5

    .line 86
    check-cast p5, Landroid/widget/FrameLayout;

    .line 87
    iput-object p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->dndIcon:Landroid/widget/FrameLayout;

    .line 89
    iget-object p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 91
    const v0, 0x7f0a0a8a    # @id/volume_row_slider

    .line 93
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p5

    .line 99
    check-cast p5, Landroid/widget/SeekBar;

    .line 100
    iput-object p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 102
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    .line 104
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 106
    invoke-virtual {p5, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 109
    iget-object p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 112
    const v0, 0x7f0a0a83    # @id/volume_number

    .line 114
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object p5

    .line 120
    check-cast p5, Landroid/widget/TextView;

    .line 121
    iput-object p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->number:Landroid/widget/TextView;

    .line 123
    iput-object p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 125
    iget-object p5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 127
    const v0, 0x7f081997    # @drawable/volume_row_seekbar 'res/drawable/volume_row_seekbar.xml'

    .line 129
    invoke-virtual {p5, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 132
    move-result-object p5

    .line 135
    check-cast p5, Landroid/graphics/drawable/LayerDrawable;

    .line 136
    const v0, 0x102000d    # @android:id/progress

    .line 138
    invoke-virtual {p5, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 141
    move-result-object v0

    .line 144
    check-cast v0, Lcom/android/systemui/util/RoundedCornerProgressDrawable;

    .line 145
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 147
    move-result-object v0

    .line 150
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 151
    const v1, 0x7f0a0a8f    # @id/volume_seekbar_progress_solid

    .line 153
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 156
    move-result-object v1

    .line 159
    iput-object v1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressSolid:Landroid/graphics/drawable/Drawable;

    .line 160
    const v1, 0x7f0a0a8e    # @id/volume_seekbar_progress_icon

    .line 162
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 165
    move-result-object v0

    .line 168
    if-eqz v0, :cond_1

    .line 169
    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    .line 171
    invoke-virtual {v0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 173
    move-result-object p6

    .line 176
    check-cast p6, Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    .line 177
    :cond_1
    iput-object p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressIcon:Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    .line 179
    iget-object p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 181
    invoke-virtual {p6, p5}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 186
    const p6, 0x7f0a0a89    # @id/volume_row_icon

    .line 188
    invoke-virtual {p5, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    move-result-object p5

    .line 194
    check-cast p5, Landroid/widget/ImageButton;

    .line 195
    iput-object p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 197
    iget-object p5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {p5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 201
    move-result-object p5

    .line 204
    iget-object p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 205
    if-eqz p6, :cond_2

    .line 207
    invoke-virtual {p6, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 209
    :cond_2
    iget-object p6, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressIcon:Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    .line 212
    if-eqz p6, :cond_3

    .line 214
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 216
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 218
    move-result-object v0

    .line 221
    invoke-virtual {v0, p3, p5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 222
    move-result-object p3

    .line 225
    invoke-virtual {p6, p3}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_3
    iget-object p3, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 229
    if-eqz p3, :cond_5

    .line 231
    iget p5, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 233
    if-eq p5, p4, :cond_4

    .line 235
    new-instance p4, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda10;

    .line 237
    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V

    .line 239
    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    goto :goto_0

    .line 245
    :cond_4
    const/4 p0, 0x2

    .line 246
    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    .line 247
    :cond_5
    :goto_0
    return-void
    .line 250
.end method

.method public final initSettingsH(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 6
    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 8
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    if-nez p1, :cond_0

    .line 16
    const/4 p1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p1, 0x8

    .line 20
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    .line 25
    if-eqz p1, :cond_2

    .line 27
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;

    .line 29
    const/4 v1, 0x1

    .line 31
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_2
    return-void
    .line 38
.end method

.method public final isLandscape()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 12
    const/4 v0, 0x2

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public final isRtl()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 12
    move-result p0

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
    .line 21
.end method

.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 8
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->unionViewBoundstoTouchableRegion(Landroid/view/View;)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 32
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 36
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->unionViewBoundstoTouchableRegion(Landroid/view/View;)V

    .line 44
    :cond_1
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 47
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    .line 49
    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 51
    return-void
    .line 54
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mOrientation:I

    .line 4
    return-void
    .line 6
.end method

.method public onPostureChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0xb

    .line 6
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDevicePosture:I

    .line 15
    return-void
    .line 17
.end method

.method public final onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "onStateChangedH() state: "

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 29
    const/4 v1, 0x1

    .line 31
    if-eqz v0, :cond_1

    .line 32
    if-eqz p1, :cond_1

    .line 34
    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 36
    const/4 v2, -0x1

    .line 38
    if-eq v0, v2, :cond_1

    .line 39
    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 41
    if-eq v0, v2, :cond_1

    .line 43
    if-ne v2, v1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 47
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 49
    move-result-object v2

    .line 52
    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    .line 53
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 58
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 60
    const/4 v0, 0x0

    .line 63
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 66
    move-result v2

    .line 69
    if-ge v0, v2, :cond_6

    .line 70
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 72
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 74
    move-result v4

    .line 77
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 83
    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 84
    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    .line 86
    if-nez v2, :cond_2

    .line 88
    goto :goto_2

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 91
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 93
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 96
    check-cast v2, Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v2

    .line 103
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v3

    .line 107
    if-eqz v3, :cond_4

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v3

    .line 113
    check-cast v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 114
    iget v5, v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 116
    if-ne v5, v4, :cond_3

    .line 118
    goto :goto_1

    .line 120
    :cond_4
    const/4 v3, 0x0

    .line 121
    :goto_1
    if-nez v3, :cond_5

    .line 122
    const v5, 0x7f0811f5    # @drawable/ic_volume_remote 'res/drawable/ic_volume_remote.xml'

    .line 124
    const v6, 0x7f0811f6    # @drawable/ic_volume_remote_mute 'res/drawable/ic_volume_remote_mute.xml'

    .line 127
    const/4 v7, 0x1

    .line 130
    const/4 v8, 0x0

    .line 131
    move-object v3, p0

    .line 132
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow$1(IIIZZ)V

    .line 133
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 136
    goto :goto_0

    .line 138
    :cond_6
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 139
    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    .line 141
    if-eq v0, p1, :cond_7

    .line 143
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    .line 145
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 149
    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 153
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 156
    if-eqz p1, :cond_7

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 160
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 163
    check-cast p1, Ljava/util/ArrayList;

    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 167
    move-result-object p1

    .line 170
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    move-result v0

    .line 174
    if-eqz v0, :cond_8

    .line 175
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    move-result-object v0

    .line 180
    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 183
    goto :goto_3

    .line 186
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    .line 187
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 194
    move-result-object v1

    .line 197
    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    .line 200
    move-result-object p0

    .line 203
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 204
    move-result-object p0

    .line 207
    const v1, 0x7f130c43    # @string/volume_dialog_title '%s volume controls'

    .line 208
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    move-result-object p0

    .line 214
    invoke-virtual {p1, p0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    return-void
    .line 218
.end method

.method public final onUiModeChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    .line 10
    move-result p0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 15
    return-void
    .line 18
.end method

.method public final recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 3

    .line 1
    if-nez p1, :cond_1

    .line 2
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 8
    const-string v0, "recheckH ALL"

    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 18
    check-cast p1, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 42
    if-eqz v0, :cond_2

    .line 44
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    const-string v2, "recheckH "

    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 55
    invoke-static {v1, v2, v0}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 57
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 60
    :cond_3
    return-void
    .line 63
.end method

.method public final rescheduleTimeoutH()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 8
    const/4 v2, 0x4

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 13
    const/16 v3, 0x3e80

    .line 15
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    .line 17
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/VolumeDialogImpl$5;

    .line 22
    const/4 v3, 0x6

    .line 24
    const/16 v4, 0x1388

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 29
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    .line 31
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 36
    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 40
    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 44
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    .line 46
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 51
    const/16 v3, 0xbb8

    .line 53
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    .line 55
    move-result v0

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 59
    const/4 v3, 0x3

    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 63
    move-result-object v1

    .line 66
    int-to-long v3, v0

    .line 67
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 68
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 71
    const-string v2, "rescheduleTimeout "

    .line 73
    const-string v3, " "

    .line 75
    invoke-static {v2, v0, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    move-result-object v0

    .line 80
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 95
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    .line 97
    return-void
    .line 100
.end method

.method public final setRingerMode(I)V
    .locals 10

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    const/16 v1, 0x12

    .line 10
    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, "manual_ringer_toggle_count"

    .line 21
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 24
    move-result v3

    .line 27
    const/4 v4, 0x1

    .line 28
    add-int/2addr v3, v4

    .line 29
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    .line 33
    const/4 v0, 0x2

    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz p1, :cond_2

    .line 38
    if-eq p1, v4, :cond_1

    .line 40
    if-eq p1, v0, :cond_0

    .line 42
    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 44
    move-result-object v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 49
    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->scheduleTouchFeedback()V

    .line 51
    :cond_1
    move-object v3, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 56
    move-result-object v3

    .line 59
    :goto_0
    if-eqz v3, :cond_3

    .line 60
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 62
    invoke-interface {v5, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    .line 64
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 67
    invoke-interface {v3, p1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 69
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 77
    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 78
    move-result-object v3

    .line 81
    const-string v5, "RingerGuidanceCount"

    .line 82
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 84
    move-result v3

    .line 87
    const/16 v6, 0xc

    .line 88
    if-le v3, v6, :cond_4

    .line 90
    goto :goto_2

    .line 92
    :cond_4
    if-eqz p1, :cond_6

    .line 93
    if-eq p1, v0, :cond_5

    .line 95
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 97
    const v0, 0x1040a0f

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 107
    iget-object p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 109
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 114
    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 115
    if-eqz p1, :cond_7

    .line 117
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 119
    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 121
    int-to-long v6, v1

    .line 123
    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 124
    int-to-long v8, p1

    .line 126
    long-to-double v6, v6

    .line 127
    long-to-double v8, v8

    .line 128
    div-double/2addr v6, v8

    .line 129
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 130
    move-result-object p1

    .line 133
    invoke-virtual {p1, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 137
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 141
    const v1, 0x7f130c42    # @string/volume_dialog_ringer_guidance_ring 'Calls and notifications will ring (%1$s)'

    .line 142
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 148
    goto :goto_1

    .line 149
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 150
    const v0, 0x1040a0e

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 158
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 159
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 161
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 165
    add-int/2addr v3, v4

    .line 168
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 174
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 175
    move-result-object p0

    .line 178
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 179
    move-result-object p0

    .line 182
    invoke-interface {p0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 183
    move-result-object p0

    .line 186
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    :goto_2
    return-void
    .line 190
.end method

.method public final shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 5

    .line 1
    iget v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 2
    iget p2, p2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 4
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    if-eqz v3, :cond_1

    .line 13
    return v2

    .line 15
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowActiveStreamOnly:Z

    .line 16
    if-nez v3, :cond_5

    .line 18
    const/16 v3, 0xa

    .line 20
    if-ne v0, v3, :cond_2

    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    .line 24
    return p0

    .line 26
    :cond_2
    if-ne p2, v3, :cond_3

    .line 27
    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    .line 29
    if-ne v0, v4, :cond_3

    .line 31
    return v2

    .line 33
    :cond_3
    iget-boolean p1, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->defaultStream:Z

    .line 34
    if-eqz p1, :cond_5

    .line 36
    const/4 p1, 0x2

    .line 38
    if-eq p2, p1, :cond_4

    .line 39
    const/4 p1, 0x4

    .line 41
    if-eq p2, p1, :cond_4

    .line 42
    if-eqz p2, :cond_4

    .line 44
    if-eq p2, v3, :cond_4

    .line 46
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 48
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 50
    move-result p0

    .line 53
    if-eqz p0, :cond_5

    .line 54
    :cond_4
    move v1, v2

    .line 56
    :cond_5
    return v1
    .line 57
.end method

.method public showCsdWarningH(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCsdDialog:Lcom/android/systemui/volume/CsdWarningDialog;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 14
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCsdWarningDialogFactory:Lcom/android/systemui/volume/CsdWarningDialog$Factory;

    .line 17
    invoke-interface {v3, p1, v1}, Lcom/android/systemui/volume/CsdWarningDialog$Factory;->create(ILjava/lang/Runnable;)Lcom/android/systemui/volume/CsdWarningDialog;

    .line 19
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCsdDialog:Lcom/android/systemui/volume/CsdWarningDialog;

    .line 23
    invoke-virtual {p1}, Lcom/android/systemui/volume/CsdWarningDialog;->show()V

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 30
    if-lez p2, :cond_1

    .line 33
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 35
    const/16 v0, 0x8

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 42
    const/16 v1, 0xa

    .line 44
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 46
    move-result-object v0

    .line 49
    int-to-long v1, p2

    .line 50
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 51
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 54
    const-string v0, "scheduleCsdTimeoutH "

    .line 56
    const-string v1, "ms "

    .line 58
    invoke-static {v0, p2, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object p2

    .line 63
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 78
    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 83
    return-void

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p0
    .line 89
.end method

.method public final trimObsoleteH()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 6
    const-string/jumbo v1, "trimObsoleteH"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    :goto_0
    if-ltz v0, :cond_3

    .line 24
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 26
    check-cast v1, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 34
    iget-object v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 36
    if-eqz v2, :cond_2

    .line 38
    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    .line 40
    if-nez v2, :cond_1

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 45
    iget v3, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 47
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 49
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 55
    check-cast v2, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 62
    iget-object v3, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 64
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 69
    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    .line 71
    iget-object v3, v2, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    .line 73
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v2, v2, Lcom/android/systemui/volume/ConfigurableTexts;->mTextLabels:Landroid/util/ArrayMap;

    .line 78
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 83
    goto :goto_0

    .line 85
    :cond_3
    return-void
    .line 86
.end method

.method public final unionViewBoundstoTouchableRegion(Landroid/view/View;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    const/4 v1, 0x0

    .line 8
    aget v2, v0, v1

    .line 9
    int-to-float v2, v2

    .line 11
    const/4 v3, 0x1

    .line 12
    aget v4, v0, v3

    .line 13
    int-to-float v4, v4

    .line 15
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTopContainer:Landroid/view/View;

    .line 16
    if-ne p1, v5, :cond_1

    .line 18
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    .line 20
    if-nez v5, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 24
    move-result v5

    .line 27
    if-nez v5, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    .line 30
    move-result v5

    .line 33
    int-to-float v5, v5

    .line 34
    add-float/2addr v4, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    .line 37
    move-result v5

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getVisibleRowsExtraSize()I

    .line 41
    move-result v6

    .line 44
    if-le v5, v6, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    .line 47
    move-result v5

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getVisibleRowsExtraSize()I

    .line 51
    move-result v6

    .line 54
    sub-int/2addr v5, v6

    .line 55
    int-to-float v5, v5

    .line 56
    add-float/2addr v2, v5

    .line 57
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    .line 58
    float-to-int v6, v2

    .line 60
    float-to-int v7, v4

    .line 61
    aget p0, v0, v1

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 64
    move-result v1

    .line 67
    add-int v8, v1, p0

    .line 68
    aget p0, v0, v3

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 72
    move-result p1

    .line 75
    add-int v9, p1, p0

    .line 76
    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 78
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 80
    return-void
    .line 83
.end method

.method public final updateBackgroundForDrawerClosedAmount()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainerBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerClosedAmount:F

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    .line 19
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    mul-float/2addr v1, v2

    .line 24
    float-to-int v1, v1

    .line 25
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerClosedAmount:F

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraSize()I

    .line 31
    move-result v2

    .line 34
    int-to-float v2, v2

    .line 35
    mul-float/2addr v1, v2

    .line 36
    float-to-int v1, v1

    .line 37
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 38
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainerBackground:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 42
    return-void
    .line 45
.end method

.method public final updateCaptionsIcon()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 2
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 8
    invoke-virtual {v1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->getCaptionsEnabled()Z

    .line 10
    move-result v1

    .line 13
    if-eq v1, v0, :cond_2

    .line 14
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mCaptionsEnabled:Z

    .line 20
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 29
    const v3, 0x7f130c46    # @string/volume_odi_captions_hint_disable 'disable'

    .line 30
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 41
    const v3, 0x7f130c47    # @string/volume_odi_captions_hint_enable 'enable'

    .line 42
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    :goto_0
    new-instance v3, Lcom/android/systemui/volume/CaptionsToggleImageButton$$ExternalSyntheticLambda0;

    .line 49
    invoke-direct {v3, p0}, Lcom/android/systemui/volume/CaptionsToggleImageButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/CaptionsToggleImageButton;)V

    .line 51
    invoke-static {p0, v2, v0, v3}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mCaptionsEnabled:Z

    .line 57
    if-eqz v0, :cond_1

    .line 59
    const v0, 0x7f0811f3    # @drawable/ic_volume_odi_captions 'res/drawable/ic_volume_odi_captions.xml'

    .line 61
    goto :goto_1

    .line 64
    :cond_1
    const v0, 0x7f0811f4    # @drawable/ic_volume_odi_captions_disabled 'res/drawable/ic_volume_odi_captions_disabled.xml'

    .line 65
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResourceAsync(I)Ljava/lang/Runnable;

    .line 68
    move-result-object p0

    .line 71
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_2
    return-void
    .line 75
.end method

.method public final updateRingerH()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    .line 2
    if-eqz v0, :cond_d

    .line 4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 6
    if-eqz v0, :cond_d

    .line 8
    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 10
    const/4 v1, 0x2

    .line 12
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 17
    if-nez v0, :cond_0

    .line 19
    return-void

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 22
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    .line 24
    const/4 v4, 0x3

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x1

    .line 28
    if-eq v3, v4, :cond_2

    .line 29
    if-eq v3, v1, :cond_2

    .line 31
    if-ne v3, v6, :cond_1

    .line 33
    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    .line 35
    if-eqz v2, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    move v2, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    move v2, v6

    .line 42
    :goto_1
    xor-int/lit8 v3, v2, 0x1

    .line 43
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 45
    if-eqz v7, :cond_3

    .line 47
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 49
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenIcon:Landroid/widget/FrameLayout;

    .line 52
    if-eqz v7, :cond_5

    .line 54
    if-eqz v3, :cond_4

    .line 56
    const/16 v3, 0x8

    .line 58
    goto :goto_2

    .line 60
    :cond_4
    move v3, v5

    .line 61
    :goto_2
    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 62
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 65
    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 67
    const v7, 0x7f130c4c    # @string/volume_ringer_hint_unmute 'unmute'

    .line 69
    if-eqz v3, :cond_c

    .line 72
    const v8, 0x7f130c4b    # @string/volume_ringer_hint_mute 'mute'

    .line 74
    if-eq v3, v6, :cond_b

    .line 77
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 79
    if-eqz v3, :cond_6

    .line 81
    iget v3, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 83
    if-eqz v3, :cond_7

    .line 85
    :cond_6
    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 87
    if-eqz v0, :cond_8

    .line 89
    :cond_7
    move v5, v6

    .line 91
    :cond_8
    if-nez v2, :cond_9

    .line 92
    if-eqz v5, :cond_9

    .line 94
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 96
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    .line 98
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    .line 103
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    .line 105
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 110
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 117
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v0

    .line 126
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 127
    goto/16 :goto_4

    .line 130
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 132
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerIconDrawableId:I

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    .line 139
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerIconDrawableId:I

    .line 141
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 146
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    .line 148
    move-result v0

    .line 151
    if-eqz v0, :cond_a

    .line 152
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 154
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 156
    const v3, 0x7f130c4d    # @string/volume_ringer_hint_vibrate 'vibrate'

    .line 158
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    move-result-object v2

    .line 164
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 165
    goto :goto_3

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 169
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    move-result-object v2

    .line 176
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 177
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 180
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 186
    goto :goto_4

    .line 189
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 190
    const v1, 0x7f0811f9    # @drawable/ic_volume_ringer_vibrate 'res/drawable/ic_volume_ringer_vibrate.xml'

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 203
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 207
    move-result-object v1

    .line 210
    invoke-virtual {p0, v0, v6, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 211
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 214
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    move-result-object v0

    .line 219
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 220
    goto :goto_4

    .line 223
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 224
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    .line 226
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    .line 231
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeRingerMuteIconDrawableId:I

    .line 233
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 247
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    move-result-object v1

    .line 254
    invoke-virtual {p0, v0, v5, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 255
    :cond_d
    :goto_4
    return-void
    .line 258
.end method

.method public final updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 11

    .line 1
    const-string v0, "VolumeDialogImpl#updateRowsH"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 11
    const-string/jumbo v1, "updateRowsH"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 19
    if-nez v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isRtl()Z

    .line 26
    move-result v0

    .line 29
    const/4 v1, -0x1

    .line 30
    const/16 v2, 0x7fff

    .line 31
    if-nez v0, :cond_2

    .line 33
    move v0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v2

    .line 37
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 38
    check-cast v3, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v3

    .line 45
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_d

    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 56
    check-cast v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 57
    const/4 v6, 0x1

    .line 59
    if-ne v4, p1, :cond_4

    .line 60
    move v7, v6

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move v7, v5

    .line 64
    :goto_2
    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    .line 65
    move-result v8

    .line 68
    iget-object v9, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 69
    if-eqz v9, :cond_8

    .line 71
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 73
    move-result v10

    .line 76
    if-nez v10, :cond_5

    .line 77
    goto :goto_3

    .line 79
    :cond_5
    move v6, v5

    .line 80
    :goto_3
    if-ne v6, v8, :cond_6

    .line 81
    goto :goto_5

    .line 83
    :cond_6
    if-eqz v8, :cond_7

    .line 84
    goto :goto_4

    .line 86
    :cond_7
    const/16 v5, 0x8

    .line 87
    :goto_4
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_8
    :goto_5
    if-eqz v8, :cond_c

    .line 92
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndDrawerContainerBackground:Landroid/graphics/drawable/Drawable;

    .line 94
    if-eqz v5, :cond_c

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isRtl()Z

    .line 98
    move-result v5

    .line 101
    if-nez v5, :cond_9

    .line 102
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 104
    iget-object v6, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 106
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 108
    move-result v5

    .line 111
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 112
    move-result v0

    .line 115
    goto :goto_6

    .line 116
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 117
    iget-object v6, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 119
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 121
    move-result v5

    .line 124
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 125
    move-result v0

    .line 128
    :goto_6
    iget-object v5, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 129
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 131
    move-result-object v5

    .line 134
    instance-of v6, v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    if-eqz v6, :cond_b

    .line 137
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isRtl()Z

    .line 141
    move-result v6

    .line 144
    if-nez v6, :cond_a

    .line 145
    iget v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerRowsPadding:I

    .line 147
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 149
    goto :goto_7

    .line 152
    :cond_a
    iget v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerRowsPadding:I

    .line 153
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 155
    :cond_b
    :goto_7
    iget-object v5, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 158
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 160
    const v8, 0x7f081996    # @drawable/volume_row_rounded_background 'res/drawable/volume_row_rounded_background.xml'

    .line 162
    invoke-virtual {v6, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 165
    move-result-object v6

    .line 168
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_c
    iget-object v5, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 172
    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    .line 174
    move-result v5

    .line 177
    if-eqz v5, :cond_3

    .line 178
    invoke-virtual {p0, v4, v7}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    .line 180
    goto/16 :goto_1

    .line 183
    :cond_d
    if-le v0, v1, :cond_e

    .line 185
    if-ge v0, v2, :cond_e

    .line 187
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 191
    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 195
    move-result-object v0

    .line 198
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 199
    if-eqz v1, :cond_e

    .line 201
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 205
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 208
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 211
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateBackgroundForDrawerClosedAmount()V

    .line 214
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 217
    return-void
    .line 220
.end method

.method public final updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v6, p1

    .line 4
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v4, "updateVolumeRowH s="

    .line 14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 32
    if-nez v2, :cond_1

    .line 34
    return-void

    .line 36
    :cond_1
    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 37
    iget v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 39
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 44
    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 45
    if-nez v2, :cond_2

    .line 47
    return-void

    .line 49
    :cond_2
    iput-object v2, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 50
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 52
    if-lez v3, :cond_3

    .line 54
    iput v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    .line 56
    :cond_3
    iget v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    .line 58
    if-ne v3, v4, :cond_4

    .line 60
    const/4 v3, -0x1

    .line 62
    iput v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    .line 63
    :cond_4
    iget v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 65
    const/4 v4, 0x1

    .line 67
    if-nez v3, :cond_5

    .line 68
    move v7, v4

    .line 70
    goto :goto_0

    .line 71
    :cond_5
    const/4 v7, 0x0

    .line 72
    :goto_0
    const/16 v8, 0xa

    .line 73
    if-ne v3, v8, :cond_6

    .line 75
    move v8, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_6
    const/4 v8, 0x0

    .line 79
    :goto_1
    const/4 v9, 0x2

    .line 80
    if-ne v3, v9, :cond_7

    .line 81
    move v10, v4

    .line 83
    goto :goto_2

    .line 84
    :cond_7
    const/4 v10, 0x0

    .line 85
    :goto_2
    if-ne v3, v4, :cond_8

    .line 86
    move v11, v4

    .line 88
    goto :goto_3

    .line 89
    :cond_8
    const/4 v11, 0x0

    .line 90
    :goto_3
    const/4 v12, 0x4

    .line 91
    if-ne v3, v12, :cond_9

    .line 92
    move v12, v4

    .line 94
    goto :goto_4

    .line 95
    :cond_9
    const/4 v12, 0x0

    .line 96
    :goto_4
    const/4 v13, 0x3

    .line 97
    if-ne v3, v13, :cond_a

    .line 98
    move v3, v4

    .line 100
    goto :goto_5

    .line 101
    :cond_a
    const/4 v3, 0x0

    .line 102
    :goto_5
    if-eqz v10, :cond_b

    .line 103
    iget-object v14, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 105
    iget v14, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 107
    if-ne v14, v4, :cond_b

    .line 109
    move v14, v4

    .line 111
    goto :goto_6

    .line 112
    :cond_b
    const/4 v14, 0x0

    .line 113
    :goto_6
    if-eqz v10, :cond_c

    .line 114
    iget-object v15, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 116
    iget v15, v15, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 118
    if-nez v15, :cond_c

    .line 120
    move v15, v4

    .line 122
    goto :goto_7

    .line 123
    :cond_c
    const/4 v15, 0x0

    .line 124
    :goto_7
    iget-object v5, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 125
    iget v9, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    .line 127
    if-ne v9, v4, :cond_d

    .line 129
    move/from16 v16, v4

    .line 131
    goto :goto_8

    .line 133
    :cond_d
    const/16 v16, 0x0

    .line 134
    :goto_8
    if-ne v9, v13, :cond_e

    .line 136
    move/from16 v17, v4

    .line 138
    const/4 v4, 0x2

    .line 140
    goto :goto_9

    .line 141
    :cond_e
    const/4 v4, 0x2

    .line 142
    const/16 v17, 0x0

    .line 143
    :goto_9
    if-ne v9, v4, :cond_f

    .line 145
    const/4 v4, 0x1

    .line 147
    goto :goto_a

    .line 148
    :cond_f
    const/4 v4, 0x0

    .line 149
    :goto_a
    if-eqz v17, :cond_10

    .line 150
    if-nez v10, :cond_15

    .line 152
    if-eqz v11, :cond_16

    .line 154
    goto :goto_b

    .line 156
    :cond_10
    if-eqz v4, :cond_11

    .line 157
    if-nez v10, :cond_15

    .line 159
    if-nez v11, :cond_15

    .line 161
    if-nez v12, :cond_15

    .line 163
    if-eqz v3, :cond_16

    .line 165
    goto :goto_b

    .line 167
    :cond_11
    if-eqz v16, :cond_16

    .line 168
    if-eqz v12, :cond_12

    .line 170
    iget-boolean v4, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    .line 172
    if-nez v4, :cond_15

    .line 174
    :cond_12
    if-eqz v3, :cond_13

    .line 176
    iget-boolean v3, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    .line 178
    if-nez v3, :cond_15

    .line 180
    :cond_13
    if-eqz v10, :cond_14

    .line 182
    iget-boolean v3, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    .line 184
    if-nez v3, :cond_15

    .line 186
    :cond_14
    if-eqz v11, :cond_16

    .line 188
    iget-boolean v3, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    .line 190
    if-eqz v3, :cond_16

    .line 192
    :cond_15
    :goto_b
    const/4 v3, 0x1

    .line 194
    goto :goto_c

    .line 195
    :cond_16
    const/4 v3, 0x0

    .line 196
    :goto_c
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 197
    mul-int/lit8 v4, v4, 0x64

    .line 199
    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 201
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    .line 203
    move-result v5

    .line 206
    if-eq v4, v5, :cond_17

    .line 207
    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 209
    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 211
    :cond_17
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 214
    mul-int/lit8 v4, v4, 0x64

    .line 216
    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 218
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMin()I

    .line 220
    move-result v5

    .line 223
    if-eq v4, v5, :cond_18

    .line 224
    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 226
    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setMin(I)V

    .line 228
    :cond_18
    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    .line 231
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    .line 233
    move-result-object v5

    .line 236
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 237
    move-result-object v9

    .line 240
    const/4 v11, 0x0

    .line 241
    if-eqz v9, :cond_19

    .line 242
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 244
    move-result v12

    .line 247
    if-nez v12, :cond_1a

    .line 248
    :cond_19
    move-object v9, v11

    .line 250
    :cond_1a
    if-eqz v5, :cond_1c

    .line 251
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 253
    move-result v12

    .line 256
    if-nez v12, :cond_1b

    .line 257
    goto :goto_d

    .line 259
    :cond_1b
    move-object v11, v5

    .line 260
    :cond_1c
    :goto_d
    invoke-static {v9, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    move-result v9

    .line 264
    if-eqz v9, :cond_1d

    .line 265
    goto :goto_e

    .line 267
    :cond_1d
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :goto_e
    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 271
    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    .line 273
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 275
    move-result-object v5

    .line 278
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 282
    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    .line 284
    iget v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    .line 286
    if-nez v5, :cond_1e

    .line 288
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    goto :goto_f

    .line 293
    :cond_1e
    iget-object v11, v4, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    .line 294
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 296
    move-result v12

    .line 299
    if-eqz v12, :cond_1f

    .line 300
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    move-result-object v4

    .line 305
    check-cast v4, Ljava/lang/Integer;

    .line 306
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 308
    goto :goto_f

    .line 311
    :cond_1f
    iget-object v12, v4, Lcom/android/systemui/volume/ConfigurableTexts;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 314
    move-result-object v12

    .line 317
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 318
    move-result-object v13

    .line 321
    iget v13, v13, Landroid/content/res/Configuration;->fontScale:F

    .line 322
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 324
    move-result-object v12

    .line 327
    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    .line 328
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    .line 330
    move-result v17

    .line 333
    div-float v17, v17, v13

    .line 334
    div-float v12, v17, v12

    .line 336
    float-to-int v12, v12

    .line 338
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    move-result-object v13

    .line 342
    invoke-virtual {v11, v5, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v11, Lcom/android/systemui/volume/ConfigurableTexts$1;

    .line 346
    invoke-direct {v11, v4, v5, v12}, Lcom/android/systemui/volume/ConfigurableTexts$1;-><init>(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V

    .line 348
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 351
    iget-object v4, v4, Lcom/android/systemui/volume/ConfigurableTexts;->mTextLabels:Landroid/util/ArrayMap;

    .line 354
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    move-result-object v9

    .line 359
    invoke-virtual {v4, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :goto_f
    iget-boolean v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 363
    if-nez v4, :cond_20

    .line 365
    iget-boolean v5, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    .line 367
    if-eqz v5, :cond_21

    .line 369
    :cond_20
    if-nez v3, :cond_21

    .line 371
    const/4 v5, 0x1

    .line 373
    goto :goto_10

    .line 374
    :cond_21
    const/4 v5, 0x0

    .line 375
    :goto_10
    const v11, 0x7f0811ee    # @drawable/ic_volume_media_bt 'res/drawable/ic_volume_media_bt.xml'

    .line 376
    const v12, 0x7f0811ef    # @drawable/ic_volume_media_bt_mute 'res/drawable/ic_volume_media_bt_mute.xml'

    .line 379
    const v13, 0x7f0811f9    # @drawable/ic_volume_ringer_vibrate 'res/drawable/ic_volume_ringer_vibrate.xml'

    .line 382
    if-eqz v14, :cond_22

    .line 385
    move v4, v13

    .line 387
    goto :goto_14

    .line 388
    :cond_22
    if-nez v15, :cond_30

    .line 389
    if-eqz v3, :cond_23

    .line 391
    goto :goto_13

    .line 393
    :cond_23
    iget-boolean v15, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 394
    if-eqz v15, :cond_29

    .line 396
    if-eqz v7, :cond_24

    .line 398
    const v4, 0x7f0811ea    # @drawable/ic_volume_bt_sco 'res/drawable/ic_volume_bt_sco.xml'

    .line 400
    goto :goto_14

    .line 403
    :cond_24
    if-eqz v4, :cond_25

    .line 404
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 406
    if-eqz v4, :cond_26

    .line 408
    :cond_25
    iget-boolean v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 410
    if-eqz v4, :cond_27

    .line 412
    :cond_26
    const/4 v4, 0x1

    .line 414
    goto :goto_11

    .line 415
    :cond_27
    const/4 v4, 0x0

    .line 416
    :goto_11
    if-eqz v4, :cond_28

    .line 417
    move v4, v12

    .line 419
    goto :goto_14

    .line 420
    :cond_28
    move v4, v11

    .line 421
    goto :goto_14

    .line 422
    :cond_29
    if-eqz v4, :cond_2a

    .line 423
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 425
    if-eqz v4, :cond_2b

    .line 427
    :cond_2a
    iget-boolean v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 429
    if-eqz v4, :cond_2c

    .line 431
    :cond_2b
    const/4 v4, 0x1

    .line 433
    goto :goto_12

    .line 434
    :cond_2c
    const/4 v4, 0x0

    .line 435
    :goto_12
    if-eqz v4, :cond_2e

    .line 436
    iget-boolean v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 438
    if-eqz v4, :cond_2d

    .line 440
    const v4, 0x7f0811f2    # @drawable/ic_volume_media_off 'res/drawable/ic_volume_media_off.xml'

    .line 442
    goto :goto_14

    .line 445
    :cond_2d
    iget v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .line 446
    goto :goto_14

    .line 448
    :cond_2e
    iget-boolean v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowLowMediaVolumeIcon:Z

    .line 449
    if-eqz v4, :cond_2f

    .line 451
    iget v4, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 453
    const/4 v7, 0x2

    .line 455
    mul-int/2addr v4, v7

    .line 456
    iget v15, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 457
    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 459
    add-int/2addr v15, v7

    .line 461
    if-ge v4, v15, :cond_2f

    .line 462
    const v4, 0x7f0811f0    # @drawable/ic_volume_media_low 'res/drawable/ic_volume_media_low.xml'

    .line 464
    goto :goto_14

    .line 467
    :cond_2f
    iget v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    .line 468
    goto :goto_14

    .line 470
    :cond_30
    :goto_13
    iget v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .line 471
    :goto_14
    iget-object v7, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 473
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 475
    move-result-object v7

    .line 478
    iget-object v15, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 479
    if-eqz v15, :cond_31

    .line 481
    invoke-virtual {v15, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 483
    :cond_31
    iget-object v15, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressIcon:Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    .line 486
    if-eqz v15, :cond_32

    .line 488
    iget-object v9, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 490
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 492
    move-result-object v9

    .line 495
    invoke-virtual {v9, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 496
    move-result-object v7

    .line 499
    invoke-virtual {v15, v7}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    :cond_32
    if-ne v4, v13, :cond_33

    .line 503
    const/4 v9, 0x3

    .line 505
    goto :goto_17

    .line 506
    :cond_33
    if-eq v4, v12, :cond_37

    .line 507
    iget v7, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    .line 509
    if-ne v4, v7, :cond_34

    .line 511
    goto :goto_16

    .line 513
    :cond_34
    if-eq v4, v11, :cond_36

    .line 514
    iget v7, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    .line 516
    if-eq v4, v7, :cond_36

    .line 518
    const v7, 0x7f0811f0    # @drawable/ic_volume_media_low 'res/drawable/ic_volume_media_low.xml'

    .line 520
    if-ne v4, v7, :cond_35

    .line 523
    goto :goto_15

    .line 525
    :cond_35
    const/4 v9, 0x0

    .line 526
    goto :goto_17

    .line 527
    :cond_36
    :goto_15
    const/4 v9, 0x1

    .line 528
    goto :goto_17

    .line 529
    :cond_37
    :goto_16
    const/4 v9, 0x2

    .line 530
    :goto_17
    iput v9, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconState:I

    .line 531
    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 533
    if-eqz v4, :cond_42

    .line 535
    if-eqz v5, :cond_41

    .line 537
    const v5, 0x7f130c52    # @string/volume_stream_content_description_mute_a11y '%1$s. Tap to mute.'

    .line 539
    const v7, 0x7f130c51    # @string/volume_stream_content_description_mute '%1$s. Tap to mute. Accessibility services may be muted.'

    .line 542
    const v9, 0x7f130c53    # @string/volume_stream_content_description_unmute '%1$s. Tap to unmute.'

    .line 545
    if-eqz v10, :cond_3c

    .line 548
    if-eqz v14, :cond_38

    .line 550
    iget-object v5, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 552
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    .line 554
    move-result-object v2

    .line 557
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 558
    move-result-object v2

    .line 561
    invoke-virtual {v5, v9, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 562
    move-result-object v2

    .line 565
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 566
    goto/16 :goto_1c

    .line 569
    :cond_38
    iget-object v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 571
    invoke-interface {v4}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    .line 573
    move-result v4

    .line 576
    if-eqz v4, :cond_3a

    .line 577
    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 579
    iget-object v5, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 581
    iget-boolean v7, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    .line 583
    if-eqz v7, :cond_39

    .line 585
    const v7, 0x7f130c55    # @string/volume_stream_content_description_vibrate_a11y '%1$s. Tap to set to vibrate.'

    .line 587
    goto :goto_18

    .line 590
    :cond_39
    const v7, 0x7f130c54    # @string/volume_stream_content_description_vibrate '%1$s. Tap to set to vibrate. Accessibility services may be muted.'

    .line 591
    :goto_18
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    .line 594
    move-result-object v2

    .line 597
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 598
    move-result-object v2

    .line 601
    invoke-virtual {v5, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 602
    move-result-object v2

    .line 605
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 606
    goto :goto_1c

    .line 609
    :cond_3a
    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 610
    iget-object v8, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 612
    iget-boolean v9, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    .line 614
    if-eqz v9, :cond_3b

    .line 616
    goto :goto_19

    .line 618
    :cond_3b
    move v5, v7

    .line 619
    :goto_19
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    .line 620
    move-result-object v2

    .line 623
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 624
    move-result-object v2

    .line 627
    invoke-virtual {v8, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 628
    move-result-object v2

    .line 631
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 632
    goto :goto_1c

    .line 635
    :cond_3c
    if-eqz v8, :cond_3d

    .line 636
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    .line 638
    move-result-object v2

    .line 641
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 642
    goto :goto_1c

    .line 645
    :cond_3d
    iget-boolean v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 646
    if-nez v8, :cond_40

    .line 648
    iget-boolean v8, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 650
    if-eqz v8, :cond_3e

    .line 652
    iget v8, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 654
    if-nez v8, :cond_3e

    .line 656
    goto :goto_1b

    .line 658
    :cond_3e
    iget-object v8, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 659
    iget-boolean v9, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    .line 661
    if-eqz v9, :cond_3f

    .line 663
    goto :goto_1a

    .line 665
    :cond_3f
    move v5, v7

    .line 666
    :goto_1a
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    .line 667
    move-result-object v2

    .line 670
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 671
    move-result-object v2

    .line 674
    invoke-virtual {v8, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 675
    move-result-object v2

    .line 678
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 679
    goto :goto_1c

    .line 682
    :cond_40
    :goto_1b
    iget-object v5, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 683
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    .line 685
    move-result-object v2

    .line 688
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 689
    move-result-object v2

    .line 692
    invoke-virtual {v5, v9, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 693
    move-result-object v2

    .line 696
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 697
    goto :goto_1c

    .line 700
    :cond_41
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    .line 701
    move-result-object v2

    .line 704
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 705
    :cond_42
    :goto_1c
    const/4 v2, 0x0

    .line 708
    if-eqz v3, :cond_43

    .line 709
    iput-boolean v2, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->tracking:Z

    .line 711
    :cond_43
    xor-int/lit8 v4, v3, 0x1

    .line 713
    xor-int/lit8 v5, v4, 0x1

    .line 715
    iget-object v7, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->dndIcon:Landroid/widget/FrameLayout;

    .line 717
    if-eqz v5, :cond_44

    .line 719
    move v5, v2

    .line 721
    goto :goto_1d

    .line 722
    :cond_44
    const/16 v5, 0x8

    .line 723
    :goto_1d
    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 725
    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 728
    iget-boolean v7, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 730
    if-eqz v7, :cond_45

    .line 732
    if-nez v10, :cond_45

    .line 734
    if-nez v3, :cond_45

    .line 736
    move v7, v2

    .line 738
    goto :goto_1e

    .line 739
    :cond_45
    iget v3, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 740
    move v7, v3

    .line 742
    :goto_1e
    const-string v3, "VolumeDialogImpl#updateVolumeRowSliderH"

    .line 743
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 745
    iget-object v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 748
    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 750
    iget v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 753
    iget v4, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 755
    if-ne v3, v4, :cond_46

    .line 757
    const/4 v3, 0x1

    .line 759
    goto :goto_1f

    .line 760
    :cond_46
    move v3, v2

    .line 761
    :goto_1f
    invoke-virtual {v1, v6, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    .line 762
    iget-boolean v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->tracking:Z

    .line 765
    if-eqz v3, :cond_47

    .line 767
    goto/16 :goto_22

    .line 769
    :cond_47
    iget-object v3, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 771
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    .line 773
    move-result v3

    .line 776
    iget-object v4, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 777
    invoke-static {v3, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(ILandroid/widget/SeekBar;)I

    .line 779
    move-result v4

    .line 782
    iget-object v5, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 783
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 785
    move-result v5

    .line 788
    if-nez v5, :cond_48

    .line 789
    const/4 v5, 0x1

    .line 791
    goto :goto_20

    .line 792
    :cond_48
    move v5, v2

    .line 793
    :goto_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 794
    move-result-wide v8

    .line 797
    iget-wide v10, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    .line 798
    sub-long/2addr v8, v10

    .line 800
    const-wide/16 v10, 0x3e8

    .line 801
    cmp-long v8, v8, v10

    .line 803
    if-gez v8, :cond_49

    .line 805
    const/4 v2, 0x1

    .line 807
    :cond_49
    iget-object v8, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 808
    const/4 v9, 0x3

    .line 810
    invoke-virtual {v8, v9, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 811
    iget-boolean v8, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 814
    if-eqz v8, :cond_4b

    .line 816
    if-eqz v5, :cond_4b

    .line 818
    if-eqz v2, :cond_4b

    .line 820
    if-eqz v0, :cond_4a

    .line 822
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 824
    const-string v2, "inGracePeriod"

    .line 826
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_4a
    iget-object v0, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 831
    const/4 v1, 0x3

    .line 833
    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 834
    move-result-object v1

    .line 837
    iget-wide v2, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    .line 838
    add-long/2addr v2, v10

    .line 840
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 841
    goto/16 :goto_22

    .line 844
    :cond_4b
    if-ne v7, v4, :cond_4c

    .line 846
    if-eqz v8, :cond_4c

    .line 848
    if-eqz v5, :cond_4c

    .line 850
    goto/16 :goto_22

    .line 852
    :cond_4c
    mul-int/lit8 v9, v7, 0x64

    .line 854
    if-eq v3, v9, :cond_51

    .line 856
    if-eqz v8, :cond_4f

    .line 858
    if-eqz v5, :cond_4f

    .line 860
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 862
    if-eqz v0, :cond_4d

    .line 864
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    .line 866
    move-result v0

    .line 869
    if-eqz v0, :cond_4d

    .line 870
    iget v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->animTargetProgress:I

    .line 872
    if-ne v0, v9, :cond_4d

    .line 874
    goto :goto_22

    .line 876
    :cond_4d
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 877
    if-nez v0, :cond_4e

    .line 879
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 881
    const-string v2, "progress"

    .line 883
    filled-new-array {v3, v9}, [I

    .line 885
    move-result-object v3

    .line 888
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 889
    move-result-object v0

    .line 892
    iput-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 893
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 895
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 897
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 900
    iget-object v8, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 903
    iget-object v2, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    .line 905
    const-string/jumbo v3, "update"

    .line 907
    new-instance v10, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    .line 910
    const-wide/16 v4, 0x50

    .line 912
    move-object v0, v10

    .line 914
    move-object/from16 v1, p0

    .line 915
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;Ljava/lang/String;J)V

    .line 917
    invoke-virtual {v8, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 920
    goto :goto_21

    .line 923
    :cond_4e
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 924
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 927
    filled-new-array {v3, v9}, [I

    .line 929
    move-result-object v1

    .line 932
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 933
    :goto_21
    iput v9, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->animTargetProgress:I

    .line 936
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 938
    const-wide/16 v1, 0x50

    .line 940
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 942
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 945
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 947
    goto :goto_22

    .line 950
    :cond_4f
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    .line 951
    if-eqz v0, :cond_50

    .line 953
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 955
    :cond_50
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 958
    const/4 v1, 0x1

    .line 960
    invoke-virtual {v0, v9, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 961
    :cond_51
    :goto_22
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 964
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->number:Landroid/widget/TextView;

    .line 967
    if-eqz v0, :cond_52

    .line 969
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 971
    move-result-object v1

    .line 974
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    :cond_52
    return-void
    .line 978
.end method

.method public final updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 4
    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    .line 12
    invoke-virtual {p2}, Landroid/widget/SeekBar;->isEnabled()Z

    .line 14
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    const/4 p2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move p2, v0

    .line 22
    :goto_0
    if-nez p2, :cond_2

    .line 23
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mChangeVolumeRowTintWhenInactive:Z

    .line 25
    if-nez v1, :cond_2

    .line 27
    return-void

    .line 29
    :cond_2
    if-eqz p2, :cond_3

    .line 30
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 32
    const v2, 0x1010435    # @android:attr/colorAccent

    .line 34
    invoke-static {v2, v1}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 37
    move-result-object v1

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 42
    const v2, 0x1120028    # @android:^attr-private/colorAccentSecondary

    .line 44
    invoke-static {v2, v1}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 47
    move-result-object v1

    .line 50
    :goto_1
    if-eqz p2, :cond_4

    .line 51
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 53
    move-result p2

    .line 56
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 57
    move-result p2

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 62
    const v2, 0x1010553    # @android:attr/secondaryContentAlpha

    .line 64
    filled-new-array {v2}, [I

    .line 67
    move-result-object v2

    .line 70
    invoke-virtual {p2, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 71
    move-result-object p2

    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 76
    move-result v0

    .line 79
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    const/high16 p2, 0x437f0000    # 255.0f

    .line 83
    mul-float/2addr v0, p2

    .line 85
    float-to-int p2, v0

    .line 86
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 87
    const v2, 0x10104e2    # @android:attr/colorBackgroundFloating

    .line 89
    invoke-static {v2, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 92
    move-result-object v0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 96
    const v2, 0x1120123    # @android:^attr-private/textColorSearchUrl

    .line 98
    invoke-static {v2, p0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 101
    move-result-object p0

    .line 104
    iget-object v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressSolid:Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 107
    iget-object v2, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->sliderProgressIcon:Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    .line 110
    if-eqz v2, :cond_5

    .line 112
    invoke-virtual {v2, v0}, Lcom/android/systemui/util/AlphaTintDrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 114
    :cond_5
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 117
    if-eqz v0, :cond_6

    .line 119
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    iget-object p0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    .line 124
    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 126
    :cond_6
    iget-object p0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->number:Landroid/widget/TextView;

    .line 129
    if-eqz p0, :cond_7

    .line 131
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 133
    iget-object p0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->number:Landroid/widget/TextView;

    .line 136
    int-to-float p1, p2

    .line 138
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 139
    :cond_7
    return-void
    .line 142
.end method

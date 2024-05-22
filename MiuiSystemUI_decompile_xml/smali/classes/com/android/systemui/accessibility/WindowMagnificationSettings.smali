.class public final Lcom/android/systemui/accessibility/WindowMagnificationSettings;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;


# instance fields
.field public final mAllowDiagonalScrolling:Z

.field public mAllowDiagonalScrollingSwitch:Landroid/widget/Switch;

.field public mAllowDiagonalScrollingTitle:Landroid/widget/TextView;

.field public mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

.field public final mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

.field public final mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

.field public final mContext:Landroid/content/Context;

.field public mDoneButton:Landroid/widget/Button;

.field final mDraggableWindowBounds:Landroid/graphics/Rect;

.field public mEditButton:Landroid/widget/Button;

.field public mFullScreenButton:Landroid/widget/ImageButton;

.field public final mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

.field public mIsVisible:Z

.field public mLargeButton:Landroid/widget/ImageButton;

.field public mLastSelectedButtonIndex:I

.field public final mMagnificationCapabilityObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;

.field public mMediumButton:Landroid/widget/ImageButton;

.field public final mPanelDelegate:Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public final mScreenOffReceiver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mSettingView:Landroid/widget/LinearLayout;

.field public final mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

.field public mSingleTapDetected:Z

.field public mSmallButton:Landroid/widget/ImageButton;

.field public final mWindowInsetChangeRunnable:Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public mZoomSeekbar:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;


# direct methods
.method public static -$$Nest$msetMagnifierSize(Lcom/android/systemui/accessibility/WindowMagnificationSettings;I)V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    .line 6
    check-cast v0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    .line 10
    iget-object v2, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    .line 12
    iget v0, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    .line 14
    check-cast v2, Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 16
    iget-object v3, v2, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 18
    iget-object v3, v3, Lcom/android/systemui/accessibility/WindowMagnification;->mHandler:Landroid/os/Handler;

    .line 20
    new-instance v4, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;

    .line 22
    invoke-direct {v4, v2, v0, v1, v1}, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/WindowMagnification$2;III)V

    .line 24
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    .line 33
    check-cast v0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    .line 35
    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    .line 37
    iget-object v2, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    .line 39
    iget v0, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    .line 41
    check-cast v2, Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 43
    iget-object v3, v2, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 45
    iget-object v4, v3, Lcom/android/systemui/accessibility/WindowMagnification;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v5, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;

    .line 49
    const/4 v6, 0x0

    .line 51
    invoke-direct {v5, v2, v0, p1, v6}, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/WindowMagnification$2;III)V

    .line 52
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    sget-object v0, Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;->MAGNIFICATION_SETTINGS_WINDOW_SIZE_SELECTED:Lcom/android/systemui/accessibility/AccessibilityLogger$MagnificationSettingsEvent;

    .line 58
    iget-object v2, v3, Lcom/android/systemui/accessibility/WindowMagnification;->mA11yLogger:Lcom/android/systemui/accessibility/AccessibilityLogger;

    .line 60
    iget-object v2, v2, Lcom/android/systemui/accessibility/AccessibilityLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 62
    invoke-interface {v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    .line 67
    check-cast v0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    .line 69
    iget-object v0, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    .line 71
    iget-object v2, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    .line 73
    iget v0, v0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    .line 75
    check-cast v2, Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 77
    iget-object v3, v2, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 79
    iget-object v3, v3, Lcom/android/systemui/accessibility/WindowMagnification;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v4, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;

    .line 83
    const/4 v5, 0x2

    .line 85
    invoke-direct {v4, v2, v0, v5, v1}, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/WindowMagnification$2;III)V

    .line 86
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->updateSelectedButton(I)V

    .line 92
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    :goto_1
    return-void
    .line 99
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSingleTapDetected:Z

    .line 15
    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLastSelectedButtonIndex:I

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrolling:Z

    .line 19
    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;

    .line 21
    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    .line 23
    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mPanelDelegate:Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;

    .line 26
    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    .line 28
    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    .line 30
    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    .line 33
    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;

    .line 35
    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    .line 37
    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mScreenOffReceiver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 42
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 50
    const-class v1, Landroid/view/WindowManager;

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 57
    check-cast v1, Landroid/view/WindowManager;

    .line 58
    iput-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    .line 60
    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    .line 64
    iput-object p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 66
    const-string p2, "accessibility_allow_diagonal_scrolling"

    .line 68
    const/4 p3, -0x2

    .line 70
    invoke-interface {p4, v0, p3, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 71
    move-result p2

    .line 74
    const/4 p3, 0x1

    .line 75
    if-ne p2, p3, :cond_0

    .line 76
    move v0, p3

    .line 78
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrolling:Z

    .line 79
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 81
    const/4 v2, -0x2

    .line 83
    const/4 v3, -0x2

    .line 84
    const/16 v4, 0x7e8

    .line 85
    const/16 v5, 0x8

    .line 87
    const/4 v6, -0x2

    .line 89
    move-object v1, p2

    .line 90
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 91
    const p4, 0x800033

    .line 94
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 97
    const p4, 0x1040143    # @android:string/app_category_game

    .line 99
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    move-result-object p4

    .line 105
    iput-object p4, p2, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 106
    const/4 p4, 0x3

    .line 108
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 109
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 111
    new-instance p2, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;

    .line 113
    invoke-direct {p2, p3, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 115
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowInsetChangeRunnable:Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->inflateView()V

    .line 120
    new-instance p2, Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 125
    move-result-object p3

    .line 128
    invoke-direct {p2, p1, p3, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;)V

    .line 129
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    .line 132
    new-instance p2, Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 136
    move-result-object p1

    .line 139
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;Landroid/os/Handler;)V

    .line 140
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMagnificationCapabilityObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;

    .line 143
    return-void
    .line 145
.end method


# virtual methods
.method public final getDraggableWindowBounds()Landroid/graphics/Rect;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f070738    # @dimen/magnification_switch_button_margin '16.0dp'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    .line 15
    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 21
    move-result-object v2

    .line 24
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 25
    move-result v3

    .line 28
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 29
    move-result v4

    .line 32
    or-int/2addr v3, v4

    .line 33
    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 34
    move-result-object v2

    .line 37
    new-instance v3, Landroid/graphics/Rect;

    .line 38
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 40
    move-result-object v1

    .line 43
    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 44
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v3, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 48
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 51
    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 53
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 55
    invoke-virtual {v3, v1, v1, v4, p0}, Landroid/graphics/Rect;->inset(IIII)V

    .line 57
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 60
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 63
    return-object v3
    .line 66
.end method

.method public getSettingView()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 2
    return-object p0
    .line 4
.end method

.method public final hideSettingPanel(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMagnificationCapabilityObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 9
    invoke-interface {v1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 16
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 18
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    .line 22
    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 26
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 28
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mScreenOffReceiver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;

    .line 32
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    .line 39
    check-cast p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->onSettingsPanelVisibilityChanged(Z)V

    .line 43
    return-void
    .line 46
.end method

.method public final inflateView()V
    .locals 5

    .line 1
    const v0, 0x7f0d03fb    # @layout/window_magnification_settings_view 'res/layout/window_magnification_settings_view.xml'

    .line 2
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 14
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 25
    new-instance v2, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v2, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 35
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mPanelDelegate:Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;

    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 42
    const v2, 0x7f0a054d    # @id/magnifier_panel_view

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 53
    const v2, 0x7f0a054e    # @id/magnifier_small_button

    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/ImageButton;

    .line 62
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSmallButton:Landroid/widget/ImageButton;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 66
    const v2, 0x7f0a054c    # @id/magnifier_medium_button

    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/ImageButton;

    .line 75
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMediumButton:Landroid/widget/ImageButton;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 79
    const v2, 0x7f0a054b    # @id/magnifier_large_button

    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/ImageButton;

    .line 88
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLargeButton:Landroid/widget/ImageButton;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 92
    const v2, 0x7f0a0545    # @id/magnifier_done_button

    .line 94
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/Button;

    .line 101
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDoneButton:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 105
    const v2, 0x7f0a0546    # @id/magnifier_edit_button

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 113
    check-cast v0, Landroid/widget/Button;

    .line 114
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 118
    const v2, 0x7f0a0547    # @id/magnifier_full_button

    .line 120
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/ImageButton;

    .line 127
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 131
    const v2, 0x7f0a0549    # @id/magnifier_horizontal_lock_title

    .line 133
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v0

    .line 139
    check-cast v0, Landroid/widget/TextView;

    .line 140
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingTitle:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 144
    const v2, 0x7f0a054f    # @id/magnifier_zoom_slider

    .line 146
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object v0

    .line 152
    check-cast v0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 153
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 157
    const-string v2, "accessibility_display_magnification_scale"

    .line 159
    const/4 v3, 0x0

    .line 161
    const/4 v4, -0x2

    .line 162
    invoke-interface {v0, v3, v4, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getFloatForUser(FILjava/lang/String;)F

    .line 163
    move-result v0

    .line 166
    const/high16 v2, 0x3f800000    # 1.0f

    .line 167
    sub-float/2addr v0, v2

    .line 169
    div-float/2addr v0, v2

    .line 170
    float-to-int v0, v0

    .line 171
    if-gez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 175
    invoke-virtual {v2, v0}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setProgress(I)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 180
    new-instance v2, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;

    .line 182
    invoke-direct {v2, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$ZoomSeekbarChangeListener;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    .line 184
    invoke-virtual {v0, v2}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 190
    const v2, 0x7f0a054a    # @id/magnifier_horizontal_lock_view

    .line 192
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 195
    move-result-object v0

    .line 198
    check-cast v0, Landroid/widget/LinearLayout;

    .line 199
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 203
    const v2, 0x7f0a0548    # @id/magnifier_horizontal_lock_switch

    .line 205
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 208
    move-result-object v0

    .line 211
    check-cast v0, Landroid/widget/Switch;

    .line 212
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingSwitch:Landroid/widget/Switch;

    .line 214
    iget-boolean v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrolling:Z

    .line 216
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingSwitch:Landroid/widget/Switch;

    .line 221
    new-instance v2, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda1;

    .line 223
    invoke-direct {v2, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    .line 225
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSmallButton:Landroid/widget/ImageButton;

    .line 231
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mButtonClickListener:Lcom/android/systemui/accessibility/WindowMagnificationSettings$3;

    .line 233
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMediumButton:Landroid/widget/ImageButton;

    .line 238
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLargeButton:Landroid/widget/ImageButton;

    .line 243
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDoneButton:Landroid/widget/Button;

    .line 248
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    .line 253
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/Button;

    .line 258
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingTitle:Landroid/widget/TextView;

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 268
    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;

    .line 270
    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V

    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 275
    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLastSelectedButtonIndex:I

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->updateSelectedButton(I)V

    .line 280
    return-void
    .line 283
.end method

.method public final moveButton(FF)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda4;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;FF)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSfVsyncFrameProvider:Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 9
    return-void
    .line 12
.end method

.method public final onDrag(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->moveButton(FF)V

    .line 2
    const/4 p0, 0x1

    .line 5
    return p0
    .line 6
.end method

.method public final onFinish()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSingleTapDetected:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->showSettingPanel(Z)V

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSingleTapDetected:Z

    .line 11
    return v1
    .line 13
.end method

.method public final onSingleTap(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSingleTapDetected:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setDiagonalScrolling(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, -0x2

    .line 8
    const-string v2, "accessibility_allow_diagonal_scrolling"

    .line 9
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 11
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    .line 14
    check-cast p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->this$0:Lcom/android/systemui/accessibility/MagnificationSettingsController;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    .line 20
    iget p0, p0, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mDisplayId:I

    .line 22
    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 24
    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 26
    iget-object v1, v1, Lcom/android/systemui/accessibility/WindowMagnification;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v2, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;

    .line 30
    const/4 v3, 0x1

    .line 32
    invoke-direct {v2, v0, p0, p1, v3}, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnification$2;IZI)V

    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
    .line 39
.end method

.method public final showSettingPanel(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 4
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->updateUIControlsIfNeeded()V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->getDraggableWindowBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 21
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mDraggableWindowBounds:Landroid/graphics/Rect;

    .line 24
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 26
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 28
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 30
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 34
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    .line 36
    invoke-interface {v3, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 41
    const-string v2, "accessibility_magnification_capability"

    .line 43
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMagnificationCapabilityObserver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$1;

    .line 45
    const/4 v4, -0x2

    .line 47
    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 51
    new-instance v2, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;

    .line 53
    const/4 v3, 0x0

    .line 55
    invoke-direct {v2, v3, p0}, Lcom/android/systemui/accessibility/WindowMagnificationSettings$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 59
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mIsVisible:Z

    .line 63
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mCallback:Lcom/android/systemui/accessibility/WindowMagnificationSettingsCallback;

    .line 65
    check-cast v2, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;

    .line 67
    invoke-virtual {v2, v0}, Lcom/android/systemui/accessibility/MagnificationSettingsController$1;->onSettingsPanelVisibilityChanged(Z)V

    .line 69
    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 74
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v0

    .line 79
    const v2, 0x7f1300a7    # @string/accessibility_magnification_settings_panel_description 'Magnification settings'

    .line 80
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    .line 90
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 92
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mScreenOffReceiver:Lcom/android/systemui/accessibility/WindowMagnificationSettings$4;

    .line 97
    invoke-virtual {v1, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
    .line 102
.end method

.method public final updateSelectedButton(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLastSelectedButtonIndex:I

    .line 2
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    if-ne v0, v5, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSmallButton:Landroid/widget/ImageButton;

    .line 11
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    if-ne v0, v3, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMediumButton:Landroid/widget/ImageButton;

    .line 19
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 21
    goto :goto_0

    .line 24
    :cond_1
    if-ne v0, v2, :cond_2

    .line 25
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLargeButton:Landroid/widget/ImageButton;

    .line 27
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 29
    goto :goto_0

    .line 32
    :cond_2
    if-ne v0, v1, :cond_3

    .line 33
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    .line 35
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 37
    :cond_3
    :goto_0
    if-ne p1, v5, :cond_4

    .line 40
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSmallButton:Landroid/widget/ImageButton;

    .line 42
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 44
    goto :goto_1

    .line 47
    :cond_4
    if-ne p1, v3, :cond_5

    .line 48
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mMediumButton:Landroid/widget/ImageButton;

    .line 50
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 52
    goto :goto_1

    .line 55
    :cond_5
    if-ne p1, v2, :cond_6

    .line 56
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLargeButton:Landroid/widget/ImageButton;

    .line 58
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 60
    goto :goto_1

    .line 63
    :cond_6
    if-ne p1, v1, :cond_7

    .line 64
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    .line 66
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 68
    :cond_7
    :goto_1
    iput p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLastSelectedButtonIndex:I

    .line 71
    return-void
    .line 73
.end method

.method public final updateUIControlsIfNeeded()V
    .locals 9

    .line 1
    const-string v0, "accessibility_magnification_capability"

    .line 2
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x2

    .line 7
    invoke-interface {v1, v2, v3, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 8
    move-result v0

    .line 11
    iget v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mLastSelectedButtonIndex:I

    .line 12
    const/4 v5, 0x1

    .line 14
    const/16 v6, 0x8

    .line 15
    const/4 v7, 0x4

    .line 17
    if-eq v0, v5, :cond_4

    .line 18
    const/4 v8, 0x2

    .line 20
    if-eq v0, v8, :cond_2

    .line 21
    const/4 v8, 0x3

    .line 23
    if-eq v0, v8, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "accessibility_magnification_mode"

    .line 27
    invoke-interface {v1, v2, v3, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 29
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 35
    if-ne v0, v5, :cond_1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/Button;

    .line 40
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

    .line 45
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/Button;

    .line 51
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/Button;

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    .line 72
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 74
    if-ne v4, v7, :cond_3

    .line 77
    goto :goto_2

    .line 79
    :cond_3
    :goto_0
    move v2, v4

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mFullScreenButton:Landroid/widget/ImageButton;

    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mEditButton:Landroid/widget/Button;

    .line 87
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mAllowDiagonalScrollingView:Landroid/widget/LinearLayout;

    .line 92
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    :goto_1
    move v2, v7

    .line 97
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->updateSelectedButton(I)V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mSettingView:Landroid/widget/LinearLayout;

    .line 101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 103
    return-void
    .line 106
.end method

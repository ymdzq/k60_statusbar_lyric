.class public Lcom/android/systemui/navigationbar/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field public mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field public mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

.field public mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mButtonDispatchers:Landroid/util/SparseArray;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

.field public mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

.field public mCurrentRotation:I

.field public mCurrentView:Landroid/view/View;

.field public final mDarkIconColor:I

.field public final mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

.field public mDisabledFlags:I

.field public mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field public mDockedStackExists:Z

.field public mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

.field public final mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

.field public mHapticEnabled:Z

.field public mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field public mHorizontal:Landroid/view/View;

.field public final mImeCanRenderGesturalNavButtons:Z

.field public mImeDrawsImeNavBar:Z

.field public mInCarMode:Z

.field public mIsFoldDevice:Z

.field public mIsKeyguardShowing:Ljava/lang/Boolean;

.field public mIsVertical:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallBack:Lcom/android/systemui/navigationbar/NavigationBarView$3;

.field public mLastKeyguardShowing:Ljava/lang/Boolean;

.field public mLayoutTransitionsEnabled:Z

.field public final mLightContext:Landroid/content/Context;

.field public final mLightIconColor:I

.field public mNavBarMode:I

.field public mNavigationIconHints:I

.field public mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

.field public mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;

.field public mOverviewProxyEnabled:Z

.field public mPanelView:Lcom/android/systemui/shade/ShadeViewController;

.field public final mPipListener:Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

.field public final mQuickStepAccessibilityDelegate:Lcom/android/systemui/navigationbar/NavigationBarView$1;

.field public mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field public mRecentsOptional:Ljava/util/Optional;

.field public final mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

.field public final mRotationButtonListener:Lcom/android/systemui/navigationbar/NavigationBarView$2;

.field public final mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

.field public mScreenOn:Z

.field public mScreenPinningActive:Z

.field public final mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

.field public mShowSwipeUpUi:Z

.field public mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

.field public final mTmpLastConfiguration:Landroid/content/res/Configuration;

.field public mTouchHandler:Lcom/android/systemui/Gefingerpoken;

.field public final mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

.field public mUpdateActiveTouchRegionsCallback:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda10;

.field public mVertical:Landroid/view/View;

.field public mWakeAndUnlocking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 6
    const/4 p2, -0x1

    .line 8
    iput p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 9
    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 12
    iput p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 14
    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    .line 16
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    .line 21
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 24
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    .line 30
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 35
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 37
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOptional:Ljava/util/Optional;

    .line 41
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningActive:Z

    .line 43
    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    .line 45
    move-result v1

    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeCanRenderGesturalNavButtons:Z

    .line 49
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarView$1;

    .line 51
    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    .line 53
    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mQuickStepAccessibilityDelegate:Lcom/android/systemui/navigationbar/NavigationBarView$1;

    .line 56
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarView$2;

    .line 58
    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$2;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    .line 60
    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonListener:Lcom/android/systemui/navigationbar/NavigationBarView$2;

    .line 63
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarView$3;

    .line 65
    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$3;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    .line 67
    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mKeyguardStateControllerCallBack:Lcom/android/systemui/navigationbar/NavigationBarView$3;

    .line 70
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHapticEnabled:Z

    .line 72
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

    .line 74
    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    .line 76
    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPipListener:Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

    .line 79
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 81
    const v2, 0x7f04021a    # @attr/darkIconTheme

    .line 83
    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    .line 86
    move-result v2

    .line 89
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 90
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 93
    const v3, 0x7f04046c    # @attr/lightIconTheme

    .line 95
    invoke-static {v3, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    .line 98
    move-result v3

    .line 101
    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 102
    iput-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    .line 105
    const v3, 0x7f0406c2    # @attr/singleToneColor

    .line 107
    invoke-static {v2, v3, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 110
    move-result v4

    .line 113
    iput v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    .line 114
    invoke-static {v1, v3, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 116
    move-result v1

    .line 119
    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    .line 120
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 122
    const-class p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 124
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    move-result-object p2

    .line 129
    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 130
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 132
    new-instance p2, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 134
    invoke-direct {p2}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 139
    new-instance v3, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 141
    const v5, 0x7f0a042f    # @id/ime_switcher

    .line 143
    const v6, 0x7f081023    # @drawable/ic_ime_switcher_default 'res/drawable/ic_ime_switcher_default.xml'

    .line 146
    invoke-direct {v3, v2, v5, v6}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(Landroid/content/Context;II)V

    .line 149
    new-instance v6, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 152
    const v7, 0x7f0a0029    # @id/accessibility_button

    .line 154
    const v8, 0x7f0811ba    # @drawable/ic_sysbar_accessibility_button 'res/drawable/ic_sysbar_accessibility_button.xml'

    .line 157
    invoke-direct {v6, v2, v7, v8}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(Landroid/content/Context;II)V

    .line 160
    invoke-virtual {p2, v3}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 163
    invoke-virtual {p2, v6}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 166
    new-instance v8, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    .line 169
    invoke-direct {v8, v2}, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;-><init>(Landroid/content/Context;)V

    .line 171
    iput-object v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    .line 174
    new-instance v8, Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    .line 176
    iget-object v9, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 178
    invoke-direct {v8, v9}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;-><init>(Landroid/content/Context;)V

    .line 180
    iput-object v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    .line 183
    new-instance v8, Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 185
    new-instance v9, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;

    .line 187
    invoke-direct {v9, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    .line 189
    invoke-direct {v8, v2, v4, v1, v9}, Lcom/android/systemui/shared/rotation/RotationButtonController;-><init>(Landroid/content/Context;IILcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;)V

    .line 192
    iput-object v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 195
    new-instance v1, Landroid/content/res/Configuration;

    .line 197
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 199
    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 202
    new-instance v2, Landroid/content/res/Configuration;

    .line 204
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 206
    iput-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 211
    move-result-object p1

    .line 214
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 215
    move-result-object p1

    .line 218
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 219
    new-instance p1, Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    .line 222
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 224
    invoke-direct {p1, v1}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;-><init>(Landroid/content/Context;)V

    .line 226
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    .line 229
    new-instance p1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 231
    const v1, 0x7f0a00fb    # @id/back

    .line 233
    invoke-direct {p1, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    .line 236
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    new-instance p1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 242
    const v1, 0x7f0a03fd    # @id/home

    .line 244
    invoke-direct {p1, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    .line 247
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    new-instance p1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 253
    const v1, 0x7f0a0400    # @id/home_handle

    .line 255
    invoke-direct {p1, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    .line 258
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    new-instance p1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 264
    const v1, 0x7f0a077e    # @id/recent_apps

    .line 266
    invoke-direct {p1, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    .line 269
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    const p1, 0x7f0a05ac    # @id/menu_container

    .line 281
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    new-instance p1, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 287
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/buttons/DeadZone;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    .line 289
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 292
    return-void
    .line 294
.end method

.method public static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "      "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, ": "

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    if-nez p2, :cond_0

    .line 24
    const-string p1, "null"

    .line 26
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    .line 37
    move-result v0

    .line 40
    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, " alpha="

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getAlpha()F

    .line 53
    move-result p2

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 67
    return-void
    .line 70
.end method

.method private getContextDisplay()Landroid/view/Display;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public static visibilityToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    const/16 v0, 0x8

    .line 5
    if-eq p0, v0, :cond_0

    .line 7
    const-string p0, "VISIBLE"

    .line 9
    return-object p0

    .line 11
    :cond_0
    const-string p0, "GONE"

    .line 12
    return-object p0

    .line 14
    :cond_1
    const-string p0, "INVISIBLE"

    .line 15
    return-object p0
    .line 17
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    new-instance v1, Landroid/graphics/Point;

    .line 7
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 9
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    .line 12
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 16
    const-string v2, "NavigationBarView:"

    .line 19
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    const-string v3, "      this: "

    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v3, " "

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 43
    move-result v4

    .line 46
    invoke-static {v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 57
    const/4 v4, 0x0

    .line 58
    new-array v5, v4, [Ljava/lang/Object;

    .line 59
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 64
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 68
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 71
    iget v5, v1, Landroid/graphics/Point;->x:I

    .line 73
    const/4 v6, 0x1

    .line 75
    if-gt v2, v5, :cond_1

    .line 76
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 78
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 80
    if-le v2, v1, :cond_0

    .line 82
    goto :goto_0

    .line 84
    :cond_0
    move v1, v4

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    move v1, v6

    .line 87
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    const-string v5, "      window: "

    .line 90
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    .line 105
    move-result v0

    .line 108
    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    if-eqz v1, :cond_2

    .line 116
    const-string v0, " OFFSCREEN!"

    .line 118
    goto :goto_2

    .line 120
    :cond_2
    const-string v0, ""

    .line 121
    :goto_2
    invoke-static {v2, v0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 123
    const/4 v0, 0x5

    .line 126
    new-array v0, v0, [Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    .line 129
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 133
    move-result v1

    .line 136
    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 139
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    move-result-object v2

    .line 146
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 147
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_3

    .line 151
    :catch_0
    const-string v1, "(unknown)"

    .line 152
    goto :goto_3

    .line 154
    :cond_3
    const-string v1, "(null)"

    .line 155
    :goto_3
    aput-object v1, v0, v4

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    .line 159
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 163
    move-result v1

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    move-result-object v1

    .line 170
    aput-object v1, v0, v6

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    .line 173
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 177
    move-result v1

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    move-result-object v1

    .line 184
    const/4 v2, 0x2

    .line 185
    aput-object v1, v0, v2

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    .line 188
    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 192
    move-result v1

    .line 195
    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 199
    const/4 v3, 0x3

    .line 200
    aput-object v1, v0, v3

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    .line 203
    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 207
    move-result v1

    .line 210
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 211
    move-result-object v1

    .line 214
    const/4 v5, 0x4

    .line 215
    aput-object v1, v0, v5

    .line 216
    const-string v1, "      mCurrentView: id=%s (%dx%d) %s %f"

    .line 218
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    new-array v0, v3, [Ljava/lang/Object;

    .line 227
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    move-result-object v1

    .line 234
    aput-object v1, v0, v4

    .line 235
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 237
    if-eqz v1, :cond_4

    .line 239
    const-string/jumbo v1, "true"

    .line 241
    goto :goto_4

    .line 244
    :cond_4
    const-string v1, "false"

    .line 245
    :goto_4
    aput-object v1, v0, v6

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 249
    move-result-object v1

    .line 252
    iget v1, v1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 253
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 255
    move-result-object v1

    .line 258
    aput-object v1, v0, v2

    .line 259
    const-string v1, "      disabled=0x%08x vertical=%s darkIntensity=%.2f"

    .line 261
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    move-result-object v0

    .line 266
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "    mScreenOn: "

    .line 272
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    const-string v0, "back"

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 291
    move-result-object v1

    .line 294
    invoke-static {p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 295
    const-string v0, "home"

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 300
    move-result-object v1

    .line 303
    invoke-static {p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 304
    const-string v0, "handle"

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 309
    move-result-object v1

    .line 312
    invoke-static {p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 313
    const-string v0, "rcnt"

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 318
    move-result-object v1

    .line 321
    invoke-static {p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 322
    const-string/jumbo v0, "rota"

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    .line 328
    move-result-object v1

    .line 331
    invoke-static {p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 332
    const-string v0, "a11y"

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 337
    move-result-object v1

    .line 340
    invoke-static {p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 341
    const-string v0, "ime"

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 346
    move-result-object v1

    .line 349
    invoke-static {p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V

    .line 350
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 353
    if-eqz v0, :cond_5

    .line 355
    const-string v1, "NavigationBarInflaterView"

    .line 357
    const-string v2, "  mCurrentLayout: "

    .line 359
    invoke-static {p1, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    move-result-object v1

    .line 364
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    .line 365
    invoke-static {v1, v0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 370
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    const-string v1, "NavigationBarTransitions:"

    .line 375
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    .line 380
    const-string v2, "  mMode: "

    .line 382
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    iget v2, v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    move-result-object v1

    .line 395
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    const-string v1, "  mAlwaysOpaque: false"

    .line 399
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    .line 404
    const-string v2, "  mAllowAutoDimWallpaperNotVisible: "

    .line 406
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    .line 411
    const-string v3, "  mWallpaperVisible: "

    .line 413
    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    move-result-object v1

    .line 418
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mWallpaperVisible:Z

    .line 419
    const-string v3, "  mLightsOut: "

    .line 421
    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    move-result-object v1

    .line 426
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightsOut:Z

    .line 427
    const-string v3, "  mAutoDim: "

    .line 429
    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    move-result-object v1

    .line 434
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAutoDim:Z

    .line 435
    const-string v3, "  bg overrideAlpha: "

    .line 437
    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    move-result-object v1

    .line 442
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 443
    iget v2, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOverrideAlpha:F

    .line 445
    const-string v3, "  bg color: "

    .line 447
    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    move-result-object v1

    .line 452
    iget v2, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    .line 453
    const-string v3, "  bg frame: "

    .line 455
    invoke-static {v1, v2, p1, v3}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    move-result-object v1

    .line 460
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    .line 461
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    move-result-object v0

    .line 469
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 473
    iget-object v1, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 475
    const-string v2, "ContextualButtonGroup"

    .line 477
    const-string v3, "  getVisibleContextButton(): "

    .line 479
    invoke-static {p1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    move-result-object v2

    .line 484
    iget-object v3, v0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    .line 485
    check-cast v3, Ljava/util/ArrayList;

    .line 487
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 489
    move-result v5

    .line 492
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 493
    if-ltz v5, :cond_7

    .line 495
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 497
    move-result-object v7

    .line 500
    check-cast v7, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    .line 501
    iget-boolean v7, v7, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->markedVisible:Z

    .line 503
    if-eqz v7, :cond_6

    .line 505
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 507
    move-result-object v5

    .line 510
    check-cast v5, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    .line 511
    iget-object v5, v5, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 513
    goto :goto_5

    .line 515
    :cond_7
    const/4 v5, 0x0

    .line 516
    :goto_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    move-result-object v2

    .line 523
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    .line 527
    const-string v5, "  isVisible(): "

    .line 529
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->isVisible()Z

    .line 534
    move-result v0

    .line 537
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    move-result-object v0

    .line 544
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    .line 548
    const-string v2, "  attached(): "

    .line 550
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    if-eqz v1, :cond_8

    .line 555
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 557
    move-result v1

    .line 560
    if-eqz v1, :cond_8

    .line 561
    move v1, v6

    .line 563
    goto :goto_6

    .line 564
    :cond_8
    move v1, v4

    .line 565
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    move-result-object v0

    .line 572
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    const-string v0, "  mButtonData [ "

    .line 576
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 581
    move-result v0

    .line 584
    sub-int/2addr v0, v6

    .line 585
    :goto_7
    if-ltz v0, :cond_a

    .line 586
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 588
    move-result-object v1

    .line 591
    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    .line 592
    iget-object v2, v1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 594
    iget-object v2, v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 596
    const-string v5, "    "

    .line 598
    const-string v7, ": markedVisible="

    .line 600
    invoke-static {v5, v0, v7}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    move-result-object v5

    .line 605
    iget-boolean v7, v1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->markedVisible:Z

    .line 606
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 608
    const-string v7, " visible="

    .line 611
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    iget-object v1, v1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 616
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    .line 618
    move-result v7

    .line 621
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    const-string v7, " attached="

    .line 625
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    if-eqz v2, :cond_9

    .line 630
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 632
    move-result v2

    .line 635
    if-eqz v2, :cond_9

    .line 636
    move v2, v6

    .line 638
    goto :goto_8

    .line 639
    :cond_9
    move v2, v4

    .line 640
    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 641
    const-string v2, " alpha="

    .line 644
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getAlpha()F

    .line 649
    move-result v1

    .line 652
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    move-result-object v1

    .line 659
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    add-int/lit8 v0, v0, -0x1

    .line 663
    goto :goto_7

    .line 665
    :cond_a
    const-string v0, "  ]"

    .line 666
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 671
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->dump(Ljava/io/PrintWriter;)V

    .line 673
    return-void
    .line 676
.end method

.method public getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    const v0, 0x7f0a0029    # @id/accessibility_button

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 11
    return-object p0
    .line 13
.end method

.method public getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    const v0, 0x7f0a00fb    # @id/back

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 11
    return-object p0
    .line 13
.end method

.method public getBackDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackDrawableRes()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 10
    return-object v0
    .line 13
.end method

.method public getBackDrawableRes()I
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mShowSwipeUpUi:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const p0, 0x7f0811bf    # @drawable/ic_sysbar_back_quick_step 'res/drawable/ic_sysbar_back_quick_step.xml'

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const p0, 0x7f0811bc    # @drawable/ic_sysbar_back 'res/drawable/ic_sysbar_back.xml'

    .line 10
    :goto_0
    return p0
    .line 13
.end method

.method public getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 2
    return-object p0
    .line 4
.end method

.method public getButtonDispatchers()Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    return-object p0
    .line 4
.end method

.method public getButtonTouchRegionCache()Ljava/util/Map;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 13
    :goto_0
    const v0, 0x7f0a0675    # @id/nav_buttons

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->getFullTouchableChildRegions()Ljava/util/Map;

    .line 24
    move-result-object p0

    .line 27
    return-object p0
    .line 28
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    .line 2
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    .line 4
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    .line 6
    const/4 v2, 0x1

    .line 8
    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;IIIZ)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public getFloatingRotationButton()Lcom/android/systemui/shared/rotation/FloatingRotationButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    .line 2
    return-object p0
    .line 4
.end method

.method public getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    const v0, 0x7f0a03fd    # @id/home

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 11
    return-object p0
    .line 13
.end method

.method public getHomeDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mShowSwipeUpUi:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const v0, 0x7f0811cc    # @drawable/ic_sysbar_home_quick_step 'res/drawable/ic_sysbar_home_quick_step.xml'

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 9
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x7f0811cb    # @drawable/ic_sysbar_home 'res/drawable/ic_sysbar_home.xml'

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 17
    move-result-object v0

    .line 20
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 21
    if-eqz p0, :cond_1

    .line 23
    const/high16 p0, 0x42b40000    # 90.0f

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setRotation(F)V

    .line 29
    return-object v0
    .line 32
.end method

.method public getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    const v0, 0x7f0a0400    # @id/home_handle

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 11
    return-object p0
    .line 13
.end method

.method public getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    const v0, 0x7f0a042f    # @id/ime_switcher

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 11
    return-object p0
    .line 13
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 4
    return-object p0
    .line 6
.end method

.method public getNavBarHeight()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x10501f8    # @android:dimen/notification_big_picture_max_width

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p0

    .line 21
    const v0, 0x10501f6    # @android:dimen/notification_big_picture_max_height

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result p0

    .line 28
    :goto_0
    return p0
    .line 29
.end method

.method public getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    const v0, 0x7f0a077e    # @id/recent_apps

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 11
    return-object p0
    .line 13
.end method

.method public getRotateSuggestionButton()Lcom/android/systemui/navigationbar/buttons/RotationContextButton;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 2
    const v0, 0x7f0a07cc    # @id/rotate_suggestion

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    .line 11
    return-object p0
    .line 13
.end method

.method public getRotationButtonController()Lcom/android/systemui/shared/rotation/RotationButtonController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isImeRenderingNavButtons()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeDrawsImeNavBar:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeCanRenderGesturalNavButtons:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 10
    and-int/lit8 p0, p0, 0x2

    .line 12
    if-eqz p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public final isOverviewEnabled()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 2
    const/high16 v0, 0x1000000

    .line 4
    and-int/2addr p0, v0

    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public isRecentsButtonDisabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 12
    move-result v0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    return p0
    .line 27
.end method

.method public final notifyActiveTouchRegions()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mUpdateActiveTouchRegionsCallback:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda10;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 6
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->getButtonLocations(ZZZ)Landroid/graphics/Region;

    .line 9
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 13
    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchNavButtonBounds()V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final notifyVerticalChangedListener(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;

    .line 2
    if-eqz p0, :cond_1

    .line 4
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda10;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 10
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Ljava/util/Optional;

    .line 16
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 28
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 32
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 42
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 46
    move-result-object p0

    .line 49
    const/4 v0, 0x1

    .line 50
    xor-int/2addr p1, v0

    .line 51
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 54
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimEnabled:Z

    .line 56
    if-eq v1, p1, :cond_0

    .line 58
    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsController;->mScrimEnabled:Z

    .line 62
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->updateQsState()V

    .line 66
    :cond_1
    return-void
    .line 69
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 6
    move-result v1

    .line 9
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsFoldDevice:Z

    .line 10
    const/4 v3, 0x1

    .line 12
    if-nez v2, :cond_0

    .line 13
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    move-result-object v2

    .line 24
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 25
    if-ne v2, v3, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 29
    move-result v2

    .line 32
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 33
    move-result v4

    .line 36
    invoke-virtual {p0, v0, v2, v1, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 40
    iput v0, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    .line 42
    iput v1, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    .line 44
    iget-object v2, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 46
    if-eqz v2, :cond_1

    .line 48
    invoke-interface {v2, v0, v1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setInsets(II)V

    .line 50
    :cond_1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 53
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 55
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 61
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    const/4 v3, 0x0

    .line 68
    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 69
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 75
    move-result-object p0

    .line 78
    return-object p0
    .line 79
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 11
    if-eqz v0, :cond_3

    .line 13
    iget-boolean v1, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    .line 15
    if-nez v1, :cond_3

    .line 17
    iget-object v1, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object v2

    .line 24
    const-string v3, "android.hardware.type.pc"

    .line 25
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    goto :goto_2

    .line 33
    :cond_0
    const/4 v2, 0x1

    .line 34
    iput-boolean v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    .line 35
    new-instance v3, Landroid/content/IntentFilter;

    .line 37
    const-string v4, "android.intent.action.DOCK_EVENT"

    .line 39
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v4, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mDockedReceiver:Lcom/android/systemui/shared/rotation/RotationButtonController$1;

    .line 44
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    move-result-object v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    const-string v3, "android.intent.extra.DOCK_STATE"

    .line 53
    const/4 v4, 0x0

    .line 55
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 56
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    move v2, v4

    .line 63
    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mDocked:Z

    .line 64
    :goto_1
    sget-object v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 66
    iget-object v0, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;

    .line 68
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 70
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 76
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mKeyguardStateControllerCallBack:Lcom/android/systemui/navigationbar/NavigationBarView$3;

    .line 78
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 80
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 82
    return-void
    .line 85
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 9
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 14
    move-result p1

    .line 17
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    and-int/lit16 v1, p1, 0x1000

    .line 23
    if-nez v1, :cond_0

    .line 25
    and-int/lit16 v1, p1, 0x400

    .line 27
    if-eqz v1, :cond_1

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->updateDimensionResources()V

    .line 31
    iget-boolean v1, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    .line 34
    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->adjustViewPositionAndCreateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 38
    move-result-object v1

    .line 41
    iget-object v2, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    .line 42
    iget-object v3, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonContainer:Landroid/view/ViewGroup;

    .line 44
    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :cond_1
    and-int/lit8 p1, p1, 0x4

    .line 49
    if-eqz p1, :cond_2

    .line 51
    iget-object p1, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mContext:Landroid/content/Context;

    .line 53
    iget v1, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mContentDescriptionResource:I

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 60
    iget-object v0, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 66
    if-eqz p1, :cond_4

    .line 68
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 70
    and-int/lit8 p1, p1, 0xf

    .line 72
    const/4 v0, 0x3

    .line 74
    if-ne p1, v0, :cond_3

    .line 75
    const/4 p1, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/4 p1, 0x0

    .line 79
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    .line 80
    if-eq p1, v0, :cond_4

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRecentsIcon()V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentRotation()V

    .line 94
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 99
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    .line 104
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 106
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 108
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 110
    if-ne v0, v1, :cond_5

    .line 112
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 114
    move-result p1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 118
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 120
    move-result v0

    .line 123
    if-eq p1, v0, :cond_6

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 126
    :cond_6
    return-void
    .line 129
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 29
    if-eqz v1, :cond_3

    .line 31
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    .line 33
    invoke-virtual {v1}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->hide()Z

    .line 35
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 38
    const-string v2, "RotationButtonController"

    .line 40
    iget-boolean v3, v1, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    .line 42
    if-nez v3, :cond_1

    .line 44
    goto :goto_3

    .line 46
    :cond_1
    iput-boolean v0, v1, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    .line 47
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    .line 49
    iget-object v3, v1, Lcom/android/systemui/shared/rotation/RotationButtonController;->mDockedReceiver:Lcom/android/systemui/shared/rotation/RotationButtonController$1;

    .line 51
    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v3, "Docked receiver already unregistered"

    .line 58
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_1
    iget-boolean v0, v1, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationWatcherRegistered:Z

    .line 63
    if-eqz v0, :cond_2

    .line 65
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 67
    move-result-object v0

    .line 70
    iget-object v3, v1, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationWatcher:Lcom/android/systemui/shared/rotation/RotationButtonController$2;

    .line 71
    invoke-interface {v0, v3}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    goto :goto_2

    .line 76
    :catch_1
    move-exception v0

    .line 77
    const-string v1, "UnregisterListeners caught a RemoteException"

    .line 78
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    goto :goto_3

    .line 83
    :cond_2
    :goto_2
    sget-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 84
    iget-object v1, v1, Lcom/android/systemui/shared/rotation/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;

    .line 86
    iget-object v2, v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mImpl:Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    .line 88
    monitor-enter v2

    .line 90
    :try_start_2
    iget-object v0, v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->mImpl:Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners$Impl;->removeListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 93
    monitor-exit v2

    .line 96
    goto :goto_3

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw p0

    .line 100
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 101
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mKeyguardStateControllerCallBack:Lcom/android/systemui/navigationbar/NavigationBarView$3;

    .line 103
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 105
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 107
    return-void
    .line 110
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mShouldFlash:Z

    .line 4
    if-eqz v1, :cond_3

    .line 6
    iget v1, v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mFlashFrac:F

    .line 8
    const/4 v2, 0x0

    .line 10
    cmpg-float v1, v1, v2

    .line 11
    if-gtz v1, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->getSize(J)F

    .line 20
    move-result v1

    .line 23
    float-to-int v1, v1

    .line 24
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mVertical:Z

    .line 25
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_2

    .line 28
    iget v2, v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDisplayRotation:I

    .line 30
    const/4 v4, 0x3

    .line 32
    if-ne v2, v4, :cond_1

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 35
    move-result v2

    .line 38
    sub-int/2addr v2, v1

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 40
    move-result v1

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 44
    move-result v4

    .line 47
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 52
    move-result v2

    .line 55
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 56
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 60
    move-result v2

    .line 63
    invoke-virtual {p1, v3, v3, v2, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 64
    :goto_0
    iget v0, v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mFlashFrac:F

    .line 67
    const/high16 v1, 0x437f0000    # 255.0f

    .line 69
    mul-float/2addr v0, v1

    .line 71
    float-to-int v0, v0

    .line 72
    const/16 v1, 0xaa

    .line 73
    const/16 v2, 0xdd

    .line 75
    const/16 v3, 0xee

    .line 77
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 79
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    return-void
    .line 85
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a067f    # @id/navigation_inflater

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 18
    const v0, 0x7f0a0404    # @id/horizontal

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 28
    const v0, 0x7f0a0a54    # @id/vertical

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentView()V

    .line 39
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 44
    const-class v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 47
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 53
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 55
    return-void
    .line 57
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 2
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    .line 12
    if-eqz v0, :cond_5

    .line 14
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    .line 16
    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    move-result v3

    .line 24
    if-eqz v3, :cond_3

    .line 25
    const/4 v4, 0x2

    .line 27
    if-eq v3, v4, :cond_0

    .line 28
    goto :goto_2

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 31
    move-result v3

    .line 34
    float-to-int v3, v3

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 36
    move-result v4

    .line 39
    float-to-int v4, v4

    .line 40
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownX:I

    .line 41
    sub-int/2addr v3, v5

    .line 43
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 44
    move-result v3

    .line 47
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownY:I

    .line 48
    sub-int/2addr v4, v5

    .line 50
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 51
    move-result v4

    .line 54
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    .line 55
    if-eqz v5, :cond_1

    .line 57
    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    .line 59
    if-le v4, v0, :cond_2

    .line 61
    if-le v4, v3, :cond_2

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mScrollTouchSlop:I

    .line 66
    if-le v3, v0, :cond_2

    .line 68
    if-le v3, v4, :cond_2

    .line 70
    :goto_0
    move v0, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v0, v1

    .line 74
    :goto_1
    if-eqz v0, :cond_4

    .line 75
    move v0, v2

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 79
    move-result v3

    .line 82
    float-to-int v3, v3

    .line 83
    iput v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownX:I

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 86
    move-result v3

    .line 89
    float-to-int v3, v3

    .line 90
    iput v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTouchDownY:I

    .line 91
    :cond_4
    :goto_2
    move v0, v1

    .line 93
    :goto_3
    if-eqz v0, :cond_5

    .line 94
    return v2

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTouchHandler:Lcom/android/systemui/Gefingerpoken;

    .line 97
    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 99
    move-result v0

    .line 102
    if-nez v0, :cond_6

    .line 103
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 105
    move-result p0

    .line 108
    if-eqz p0, :cond_7

    .line 109
    :cond_6
    move v1, v2

    .line 111
    :cond_7
    return v1
    .line 112
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    .line 5
    return-void
    .line 8
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-lez v0, :cond_0

    .line 11
    if-le v1, v0, :cond_0

    .line 13
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 15
    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 17
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    const/4 v3, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v2

    .line 25
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 26
    if-eq v3, v4, :cond_1

    .line 28
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    .line 32
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 35
    :cond_1
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 38
    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 40
    move-result v3

    .line 43
    if-eqz v3, :cond_3

    .line 44
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 46
    if-eqz v3, :cond_2

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v3

    .line 53
    const v4, 0x10501f8    # @android:dimen/notification_big_picture_max_width

    .line 54
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    move-result v3

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v3

    .line 65
    const v4, 0x10501f6    # @android:dimen/notification_big_picture_max_height

    .line 66
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    move-result v3

    .line 72
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v4

    .line 76
    const v5, 0x10501f2    # @android:dimen/notification_actions_icon_size

    .line 77
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    move-result v4

    .line 83
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 84
    new-instance v6, Landroid/graphics/Rect;

    .line 86
    sub-int/2addr v4, v3

    .line 88
    invoke-direct {v6, v2, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    iget-object v0, v5, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 92
    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    .line 94
    goto :goto_2

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 97
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 99
    const/4 v1, 0x0

    .line 101
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    .line 102
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 104
    return-void
    .line 107
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 2
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTouchHandler:Lcom/android/systemui/Gefingerpoken;

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 29
    move-result p0

    .line 32
    return p0
    .line 33
.end method

.method public final orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 2
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 14
    goto :goto_1

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_1
    iget-object v3, p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->mState:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;

    .line 18
    iget v3, v3, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    .line 20
    cmpl-float v3, v3, v0

    .line 22
    if-nez v3, :cond_2

    .line 24
    return-void

    .line 26
    :cond_2
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 27
    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 29
    move-result p0

    .line 32
    if-eqz p0, :cond_3

    .line 33
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setRotation(F)V

    .line 35
    return-void

    .line 38
    :cond_3
    sget-object p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$1;

    .line 39
    new-array v1, v1, [F

    .line 41
    aput v0, v1, v2

    .line 43
    invoke-static {p0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 45
    move-result-object p0

    .line 48
    filled-new-array {p0}, [Landroid/animation/PropertyValuesHolder;

    .line 49
    move-result-object p0

    .line 52
    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 53
    move-result-object p0

    .line 56
    sget-object p1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 57
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    const-wide/16 v0, 0xc8

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 64
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 67
    return-void
    .line 70
.end method

.method public final reorient()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentView()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarFrame;->setDeadZone(Lcom/android/systemui/navigationbar/buttons/DeadZone;)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 16
    iget v1, v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 18
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IZ)V

    .line 21
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    .line 28
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->resolveLayoutDirection()Z

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    .line 40
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    .line 44
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    .line 47
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 49
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;->mIsVertical:Z

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 53
    move-result-object v0

    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 57
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mVertical:Z

    .line 59
    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v1

    .line 66
    :goto_0
    if-ge v2, v1, :cond_3

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v3

    .line 72
    check-cast v3, Landroid/view/View;

    .line 73
    instance-of v4, v3, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    .line 75
    if-eqz v4, :cond_2

    .line 77
    check-cast v3, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    .line 79
    invoke-interface {v3, p0}, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;->setVertical(Z)V

    .line 81
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    return-void
    .line 87
.end method

.method public setAccessibilityButtonState(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 9
    const p2, 0x7f0a0029    # @id/accessibility_button

    .line 11
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)I

    .line 14
    return-void
    .line 17
.end method

.method public setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 2
    return-void
    .line 4
.end method

.method public setBackgroundExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 2
    return-void
    .line 4
.end method

.method public setBehavior(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget p0, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBehavior:I

    .line 9
    if-eq p0, p1, :cond_0

    .line 11
    iput p1, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBehavior:I

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->canShowRotationButton()Z

    .line 15
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    iget-boolean p0, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mPendingRotationSuggestion:Z

    .line 21
    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->showAndLogRotationSuggestion()V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public setComponents(Lcom/android/systemui/shade/ShadeViewController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/shade/ShadeViewController;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateSystemUiStateFlags()V

    :cond_0
    return-void
.end method

.method public setComponents(Ljava/util/Optional;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOptional:Ljava/util/Optional;

    return-void
.end method

.method public setDisabledFlags(ILcom/android/systemui/model/SysUiState;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    .line 7
    move-result v0

    .line 10
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 11
    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLastKeyguardShowing:Ljava/lang/Boolean;

    .line 21
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsKeyguardShowing:Ljava/lang/Boolean;

    .line 23
    if-eq p1, v0, :cond_2

    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsKeyguardShowing:Ljava/lang/Boolean;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLastKeyguardShowing:Ljava/lang/Boolean;

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 39
    :goto_0
    if-nez p1, :cond_3

    .line 40
    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 44
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 50
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V

    .line 53
    return-void
    .line 56
.end method

.method public setDisplayTracker(Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 2
    return-void
    .line 4
.end method

.method public setEdgeBackGestureHandler(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 2
    return-void
    .line 4
.end method

.method public setIconsDarkRestoreListener(Lcom/android/systemui/navigationbar/NavigationBarView$IconsDarkRestoreListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setInScreenPinning(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningActive:Z

    .line 2
    return-void
    .line 4
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .line 1
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 7
    return-void
    .line 10
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 4
    return-void
    .line 7
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBarView$OnVerticalChangedListener;

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 6
    return-void
    .line 9
.end method

.method public setOneHanded(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    .line 2
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/wm/shell/onehanded/OneHanded;)V

    .line 6
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTaskSwitchHelper:Lcom/android/systemui/statusbar/phone/NavigationBarViewTaskSwitchHelper;

    .line 9
    return-void
    .line 11
.end method

.method public final setSlippery(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 15
    if-eqz v1, :cond_4

    .line 17
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 19
    const/high16 v3, 0x20000000

    .line 21
    and-int v4, v2, v3

    .line 23
    if-eqz v4, :cond_1

    .line 25
    const/4 v4, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v4, 0x0

    .line 29
    :goto_0
    if-ne p1, v4, :cond_2

    .line 30
    goto :goto_2

    .line 32
    :cond_2
    if-eqz p1, :cond_3

    .line 33
    or-int p1, v3, v2

    .line 35
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 37
    goto :goto_1

    .line 39
    :cond_3
    const p1, -0x20000001

    .line 40
    and-int/2addr p1, v2

    .line 43
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 44
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p0

    .line 49
    const-class p1, Landroid/view/WindowManager;

    .line 50
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 55
    check-cast p0, Landroid/view/WindowManager;

    .line 56
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :cond_4
    :goto_2
    return-void
    .line 61
.end method

.method public setTouchHandler(Lcom/android/systemui/Gefingerpoken;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTouchHandler:Lcom/android/systemui/Gefingerpoken;

    .line 2
    return-void
    .line 4
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 12
    if-eqz v0, :cond_2

    .line 14
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 16
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    if-nez v1, :cond_1

    .line 24
    if-eqz p1, :cond_1

    .line 26
    const v1, 0x7f14001c    # @style/Animation.NavigationBarFadeIn

    .line 28
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    if-eqz v1, :cond_2

    .line 34
    if-nez p1, :cond_2

    .line 36
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 38
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 43
    const-class v2, Landroid/view/WindowManager;

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    check-cast v1, Landroid/view/WindowManager;

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 52
    move-result-object v2

    .line 55
    check-cast v2, Landroid/view/View;

    .line 56
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mWakeAndUnlocking:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 63
    return-void
    .line 66
.end method

.method public setWindowVisible(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsNavigationBarShowing:Z

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsNavigationBarShowing:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->canShowRotationButton()Z

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    iget-boolean p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mPendingRotationSuggestion:Z

    .line 16
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->showAndLogRotationSuggestion()V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final updateCurrentRotation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 2
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 6
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 10
    if-ne v1, v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 15
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 17
    const/4 v2, 0x1

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const/4 v2, 0x0

    .line 23
    :goto_0
    iget-boolean v0, v1, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 24
    if-eq v2, v0, :cond_2

    .line 26
    iput-boolean v2, v1, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 28
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder()V

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 33
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 35
    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->onConfigurationChanged(I)V

    .line 37
    return-void
    .line 40
.end method

.method public final updateCurrentView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 2
    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    .line 21
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 23
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 31
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mIsVertical:Z

    .line 33
    if-eq v1, v2, :cond_1

    .line 35
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mIsVertical:Z

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentRotation()V

    .line 45
    return-void
    .line 48
.end method

.method public final updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 4
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 8
    const/high16 v2, 0x1000000

    .line 10
    and-int/2addr v1, v2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v3

    .line 19
    :goto_0
    const/16 v4, 0x80

    .line 20
    invoke-virtual {p1, v4, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 22
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 25
    const/high16 v4, 0x200000

    .line 27
    and-int/2addr v1, v4

    .line 29
    if-eqz v1, :cond_1

    .line 30
    move v1, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v3

    .line 34
    :goto_1
    const/16 v4, 0x100

    .line 35
    invoke-virtual {p1, v4, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 37
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 40
    const/high16 v1, 0x2000000

    .line 42
    and-int/2addr p0, v1

    .line 44
    if-eqz p0, :cond_2

    .line 45
    goto :goto_2

    .line 47
    :cond_2
    move v2, v3

    .line 48
    :goto_2
    const/16 p0, 0x400

    .line 49
    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 54
    return-void
    .line 57
.end method

.method public final updateIcons(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 4
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 6
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    move v0, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v4

    .line 14
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 15
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 17
    if-eq v2, v1, :cond_1

    .line 19
    move v1, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v1, v4

    .line 23
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 24
    move-result p1

    .line 27
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 28
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 30
    move-result v2

    .line 33
    if-eq p1, v2, :cond_2

    .line 34
    goto :goto_2

    .line 36
    :cond_2
    move v3, v4

    .line 37
    :goto_2
    if-nez v0, :cond_3

    .line 38
    if-eqz v1, :cond_4

    .line 40
    :cond_3
    const p1, 0x7f0811c6    # @drawable/ic_sysbar_docked 'res/drawable/ic_sysbar_docked.xml'

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 45
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 51
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 55
    :cond_4
    if-nez v1, :cond_5

    .line 57
    if-eqz v3, :cond_6

    .line 59
    :cond_5
    const p1, 0x7f0811d2    # @drawable/ic_sysbar_recent 'res/drawable/ic_sysbar_recent.xml'

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 64
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 68
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 70
    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    .line 72
    iget v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    .line 74
    iget-object p1, p1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    .line 76
    check-cast p1, Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object p1

    .line 83
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v5

    .line 87
    if-eqz v5, :cond_6

    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v5

    .line 93
    check-cast v5, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    .line 94
    iget-object v5, v5, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 96
    invoke-virtual {v5, v2, v4}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->updateIcon(II)V

    .line 98
    goto :goto_3

    .line 101
    :cond_6
    if-nez v0, :cond_7

    .line 102
    if-nez v1, :cond_7

    .line 104
    if-eqz v3, :cond_8

    .line 106
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 108
    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 112
    :cond_8
    if-eqz v0, :cond_a

    .line 114
    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 116
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 118
    move-result p1

    .line 121
    if-nez p1, :cond_9

    .line 122
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsFoldDevice:Z

    .line 124
    if-eqz p1, :cond_a

    .line 126
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 128
    if-eqz p0, :cond_a

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->clearViews()V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 139
    :cond_a
    return-void
    .line 142
.end method

.method public final updateLayoutTransitionsEnabled()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mWakeAndUnlocking:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    .line 15
    move-result-object p0

    .line 18
    const v3, 0x7f0a0675    # @id/nav_buttons

    .line 19
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 28
    move-result-object p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 38
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 41
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 44
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 47
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 51
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 54
    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 57
    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 60
    :cond_2
    :goto_1
    return-void
    .line 63
.end method

.method public final updateNavButtonIcons()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 2
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 12
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 14
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 17
    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    .line 19
    if-eqz v5, :cond_1

    .line 21
    const/high16 v5, 0x42b40000    # 90.0f

    .line 23
    goto :goto_1

    .line 25
    :cond_1
    const/4 v5, 0x0

    .line 26
    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setRotation(F)V

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 30
    move-result-object v5

    .line 33
    invoke-virtual {v5, v4}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 37
    move-result-object v4

    .line 40
    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRecentsIcon()V

    .line 44
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    .line 47
    const/4 v4, 0x4

    .line 49
    and-int/2addr v3, v4

    .line 50
    if-eqz v3, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isImeRenderingNavButtons()Z

    .line 53
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    goto :goto_2

    .line 59
    :cond_2
    move v3, v2

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    :goto_2
    move v3, v1

    .line 62
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 63
    xor-int/2addr v3, v1

    .line 65
    const v6, 0x7f0a042f    # @id/ime_switcher

    .line 66
    invoke-virtual {v5, v6, v3}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)I

    .line 69
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 72
    iget-object v5, v3, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 74
    iget v5, v5, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 76
    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyDarkIntensity(F)V

    .line 78
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 81
    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 83
    move-result v3

    .line 86
    const/high16 v5, 0x200000

    .line 87
    if-nez v3, :cond_5

    .line 89
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 91
    and-int/2addr v3, v5

    .line 93
    if-eqz v3, :cond_4

    .line 94
    goto :goto_4

    .line 96
    :cond_4
    move v3, v2

    .line 97
    goto :goto_5

    .line 98
    :cond_5
    :goto_4
    move v3, v1

    .line 99
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonDisabled()Z

    .line 100
    move-result v6

    .line 103
    if-eqz v6, :cond_6

    .line 104
    iget v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 106
    and-int/2addr v5, v7

    .line 108
    if-eqz v5, :cond_6

    .line 109
    move v5, v1

    .line 111
    goto :goto_6

    .line 112
    :cond_6
    move v5, v2

    .line 113
    :goto_6
    iget v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 114
    invoke-static {v7}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 116
    move-result v7

    .line 119
    if-eqz v7, :cond_7

    .line 120
    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 122
    if-nez v7, :cond_7

    .line 124
    goto :goto_7

    .line 126
    :cond_7
    if-nez v0, :cond_8

    .line 127
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 129
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 131
    move-result v0

    .line 134
    if-nez v0, :cond_9

    .line 135
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    .line 137
    const/high16 v7, 0x400000

    .line 139
    and-int/2addr v0, v7

    .line 141
    if-nez v0, :cond_9

    .line 142
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isImeRenderingNavButtons()Z

    .line 144
    move-result v0

    .line 147
    if-eqz v0, :cond_a

    .line 148
    :cond_9
    :goto_7
    move v0, v1

    .line 150
    goto :goto_8

    .line 151
    :cond_a
    move v0, v2

    .line 152
    :goto_8
    iget-boolean v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyEnabled:Z

    .line 153
    if-eqz v7, :cond_c

    .line 155
    iget v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 157
    if-nez v7, :cond_b

    .line 159
    move v8, v1

    .line 161
    goto :goto_9

    .line 162
    :cond_b
    move v8, v2

    .line 163
    :goto_9
    xor-int/2addr v1, v8

    .line 164
    or-int/2addr v6, v1

    .line 165
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningActive:Z

    .line 166
    if-eqz v1, :cond_d

    .line 168
    invoke-static {v7}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 170
    move-result v1

    .line 173
    if-nez v1, :cond_d

    .line 174
    move v0, v2

    .line 176
    move v3, v0

    .line 177
    goto :goto_a

    .line 178
    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningActive:Z

    .line 179
    if-eqz v1, :cond_d

    .line 181
    move v0, v2

    .line 183
    move v6, v0

    .line 184
    :cond_d
    :goto_a
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    .line 185
    move-result-object v1

    .line 188
    const v7, 0x7f0a0675    # @id/nav_buttons

    .line 189
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    move-result-object v1

    .line 195
    check-cast v1, Landroid/view/ViewGroup;

    .line 196
    if-eqz v1, :cond_e

    .line 198
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 200
    move-result-object v1

    .line 203
    if-eqz v1, :cond_e

    .line 204
    invoke-virtual {v1}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    .line 206
    move-result-object v7

    .line 209
    iget-object v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    .line 210
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 212
    move-result v7

    .line 215
    if-nez v7, :cond_e

    .line 216
    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    .line 218
    invoke-virtual {v1, v7}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 220
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 223
    move-result-object v1

    .line 226
    if-eqz v0, :cond_f

    .line 227
    move v0, v4

    .line 229
    goto :goto_b

    .line 230
    :cond_f
    move v0, v2

    .line 231
    :goto_b
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 235
    move-result-object v0

    .line 238
    if-eqz v3, :cond_10

    .line 239
    move v1, v4

    .line 241
    goto :goto_c

    .line 242
    :cond_10
    move v1, v2

    .line 243
    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 247
    move-result-object v0

    .line 250
    if-eqz v6, :cond_11

    .line 251
    move v1, v4

    .line 253
    goto :goto_d

    .line 254
    :cond_11
    move v1, v2

    .line 255
    :goto_d
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 259
    move-result-object v0

    .line 262
    if-eqz v5, :cond_12

    .line 263
    move v2, v4

    .line 265
    :cond_12
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    .line 269
    return-void
    .line 272
.end method

.method public final updateRecentsIcon()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedStackExists:Z

    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setRotation(F)V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 11
    move-result-object v0

    .line 14
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedStackExists:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 27
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 29
    iget v0, v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyDarkIntensity(F)V

    .line 33
    return-void
    .line 36
.end method

.method public final updateRotationButton()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 2
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const v2, 0x7f0a07cc    # @id/rotate_suggestion

    .line 9
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->getContextButtonIndex(I)I

    .line 16
    move-result v3

    .line 19
    if-eq v3, v1, :cond_0

    .line 20
    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 34
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    .line 36
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonListener:Lcom/android/systemui/navigationbar/NavigationBarView$2;

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotationButton(Lcom/android/systemui/shared/rotation/RotationButton;Lcom/android/systemui/navigationbar/NavigationBarView$2;)V

    .line 40
    goto :goto_1

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 44
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->getContextButtonIndex(I)I

    .line 46
    move-result v3

    .line 49
    if-eq v3, v1, :cond_2

    .line 50
    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    .line 60
    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x0

    .line 65
    :goto_0
    if-nez v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 68
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    .line 84
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonListener:Lcom/android/systemui/navigationbar/NavigationBarView$2;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotationButton(Lcom/android/systemui/shared/rotation/RotationButton;Lcom/android/systemui/navigationbar/NavigationBarView$2;)V

    .line 88
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 91
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 93
    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 95
    return-void
    .line 98
.end method

.method public final updateSlippery()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mShowSwipeUpUi:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/shade/ShadeViewController;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/shade/ShadeViewController;

    .line 31
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isCollapsing()Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 41
    if-eqz v0, :cond_3

    .line 43
    iget-boolean v3, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    .line 45
    if-eqz v3, :cond_2

    .line 47
    iget-object v0, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 49
    if-eqz v0, :cond_2

    .line 51
    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->getExpandState()I

    .line 53
    move-result v0

    .line 56
    const/4 v3, 0x2

    .line 57
    if-ne v0, v3, :cond_2

    .line 58
    move v0, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v0, v2

    .line 62
    :goto_1
    if-eqz v0, :cond_3

    .line 63
    goto :goto_2

    .line 65
    :cond_3
    move v1, v2

    .line 66
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setSlippery(Z)V

    .line 67
    return-void
.end method

.method public final updateStates()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    .line 10
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->clearViews()V

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 24
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 35
    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda3;

    .line 37
    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    .line 39
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 45
    move-result-object v0

    .line 48
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mShowSwipeUpUi:Z

    .line 49
    if-eqz v1, :cond_1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mQuickStepAccessibilityDelegate:Lcom/android/systemui/navigationbar/NavigationBarView$1;

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    :goto_0
    iput-object p0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 57
    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    move-result v1

    .line 64
    const/4 v2, 0x0

    .line 65
    :goto_1
    if-ge v2, v1, :cond_2

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 71
    check-cast v3, Landroid/view/View;

    .line 72
    invoke-virtual {v3, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 77
    goto :goto_1

    .line 79
    :cond_2
    return-void
    .line 80
.end method

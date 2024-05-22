.class public Lcom/android/systemui/screenshot/ScreenshotView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActionExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

.field public mActionsContainer:Landroid/widget/HorizontalScrollView;

.field public mActionsContainerBackground:Landroid/widget/ImageView;

.field public mActionsView:Landroid/widget/LinearLayout;

.field public mCallbacks:Lcom/android/systemui/screenshot/ScreenshotController$5;

.field public mDefaultDisplay:I

.field public mDefaultTimeoutOfTimeoutHandler:J

.field public mDirectionLTR:Z

.field public mDismissButton:Landroid/widget/FrameLayout;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

.field public final mFastOutSlowIn:Landroid/view/animation/Interpolator;

.field public final mFixedSize:F

.field public mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public mNavMode:I

.field public mOrientationPortrait:Z

.field public mPackageName:Ljava/lang/String;

.field public mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

.field public mPendingSharedTransition:Z

.field public mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

.field public final mResources:Landroid/content/res/Resources;

.field public mScreenshotBadge:Landroid/widget/ImageView;

.field public mScreenshotFlash:Landroid/widget/ImageView;

.field public mScreenshotPreview:Landroid/widget/ImageView;

.field public mScreenshotPreviewBorder:Landroid/view/View;

.field public mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

.field public mScrollChip:Lcom/android/systemui/screenshot/OverlayActionChip;

.field public mScrollablePreview:Landroid/widget/ImageView;

.field public mScrollingScrim:Landroid/widget/ImageView;

.field public mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

.field public mShowScrollablePreview:Z

.field public final mSmartChips:Ljava/util/ArrayList;

.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static $r8$lambda$S5f0w1hapcLjtmpENdQZIE3mjNI(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 2
    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPackageName:Ljava/lang/String;

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, v1, v3, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->prepareSharedTransition()V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    .line 15
    iget-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    .line 17
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 19
    new-instance v2, Landroid/content/Intent;

    .line 21
    const-string v4, "android.intent.action.EDIT"

    .line 23
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const v4, 0x7f1302e1    # @string/config_screenshotEditor ''

    .line 28
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz p0, :cond_1

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    move-result v5

    .line 41
    if-lez v5, :cond_0

    .line 42
    move v3, v4

    .line 44
    :cond_0
    if-eqz v3, :cond_1

    .line 45
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 51
    :cond_1
    const-string p0, "image/png"

    .line 54
    invoke-virtual {v2, v1, p0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {p0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    move-result-object p0

    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    move-result-object p0

    .line 68
    const/high16 v1, 0x10000000

    .line 69
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    move-result-object p0

    .line 74
    const v1, 0x8000

    .line 75
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    move-result-object p0

    .line 81
    iget-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->editTransition:Ljava/util/function/Supplier;

    .line 82
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 87
    check-cast v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    .line 88
    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->bundle:Landroid/os/Bundle;

    .line 90
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->owner:Landroid/os/UserHandle;

    .line 92
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 94
    move-result p1

    .line 97
    invoke-virtual {v0, p0, v1, p1, v4}, Lcom/android/systemui/screenshot/ActionIntentExecutor;->launchIntentAsync(Landroid/content/Intent;Landroid/os/Bundle;IZ)V

    .line 98
    return-void
    .line 101
.end method

.method public static $r8$lambda$Y5uU3_TFURY3QbHulb0fUowG8lM(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 2
    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPackageName:Ljava/lang/String;

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, v1, v3, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->prepareSharedTransition()V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    .line 15
    iget-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    .line 17
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 19
    new-instance v2, Landroid/content/Intent;

    .line 21
    const-string v4, "android.intent.action.EDIT"

    .line 23
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const v4, 0x7f1302e1    # @string/config_screenshotEditor ''

    .line 28
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz p0, :cond_1

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    move-result v5

    .line 41
    if-lez v5, :cond_0

    .line 42
    move v3, v4

    .line 44
    :cond_0
    if-eqz v3, :cond_1

    .line 45
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 51
    :cond_1
    const-string p0, "image/png"

    .line 54
    invoke-virtual {v2, v1, p0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {p0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    move-result-object p0

    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    move-result-object p0

    .line 68
    const/high16 v1, 0x10000000

    .line 69
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    move-result-object p0

    .line 74
    const v1, 0x8000

    .line 75
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    move-result-object p0

    .line 81
    iget-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->editTransition:Ljava/util/function/Supplier;

    .line 82
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 87
    check-cast v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    .line 88
    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->bundle:Landroid/os/Bundle;

    .line 90
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->owner:Landroid/os/UserHandle;

    .line 92
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 94
    move-result p1

    .line 97
    invoke-virtual {v0, p0, v1, p1, v4}, Lcom/android/systemui/screenshot/ActionIntentExecutor;->launchIntentAsync(Landroid/content/Intent;Landroid/os/Bundle;IZ)V

    .line 98
    return-void
    .line 101
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/screenshot/ScreenshotView;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/ScreenshotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/screenshot/ScreenshotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDefaultDisplay:I

    const-string p2, ""

    .line 6
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPackageName:Ljava/lang/String;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mSmartChips:Ljava/util/ArrayList;

    .line 8
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mResources:Landroid/content/res/Resources;

    .line 9
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->getInteractionJankMonitorInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 10
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p3

    const/4 p4, 0x1

    .line 11
    invoke-virtual {p3, p4}, Landroid/app/BroadcastOptions;->setInteractive(Z)Landroid/app/BroadcastOptions;

    .line 12
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    const p3, 0x7f070e50    # @dimen/overlay_x_scale '80.0dp'

    .line 13
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mFixedSize:F

    .line 14
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p3, 0x10c000d    # @android:interpolator/fast_out_slow_in

    .line 15
    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    .line 16
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 17
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 18
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 19
    new-instance p2, Landroid/view/GestureDetector;

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance p4, Lcom/android/systemui/screenshot/ScreenshotView$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/screenshot/ScreenshotView$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-direct {p2, p3, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 20
    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 21
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotView$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public static createScreenDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Insets;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    move-result v0

    .line 5
    iget v1, p2, Landroid/graphics/Insets;->left:I

    .line 6
    sub-int/2addr v0, v1

    .line 8
    iget v1, p2, Landroid/graphics/Insets;->right:I

    .line 9
    sub-int/2addr v0, v1

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    move-result v1

    .line 15
    iget v2, p2, Landroid/graphics/Insets;->top:I

    .line 16
    sub-int/2addr v1, v2

    .line 18
    iget v2, p2, Landroid/graphics/Insets;->bottom:I

    .line 19
    sub-int/2addr v1, v2

    .line 21
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 22
    invoke-direct {v3, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 24
    if-eqz v1, :cond_3

    .line 27
    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 31
    move-result p0

    .line 34
    if-eqz p0, :cond_3

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 37
    move-result p0

    .line 40
    if-nez p0, :cond_0

    .line 41
    goto :goto_1

    .line 43
    :cond_0
    new-instance p0, Landroid/graphics/drawable/InsetDrawable;

    .line 44
    iget p1, p2, Landroid/graphics/Insets;->left:I

    .line 46
    int-to-float p1, p1

    .line 48
    const/high16 v2, -0x40800000    # -1.0f

    .line 49
    mul-float/2addr p1, v2

    .line 51
    int-to-float v0, v0

    .line 52
    div-float v4, p1, v0

    .line 53
    iget p1, p2, Landroid/graphics/Insets;->top:I

    .line 55
    int-to-float p1, p1

    .line 57
    mul-float/2addr p1, v2

    .line 58
    int-to-float v1, v1

    .line 59
    div-float v5, p1, v1

    .line 60
    iget p1, p2, Landroid/graphics/Insets;->right:I

    .line 62
    int-to-float p1, p1

    .line 64
    mul-float/2addr p1, v2

    .line 65
    div-float v6, p1, v0

    .line 66
    iget p1, p2, Landroid/graphics/Insets;->bottom:I

    .line 68
    int-to-float p1, p1

    .line 70
    mul-float/2addr p1, v2

    .line 71
    div-float v7, p1, v1

    .line 72
    move-object v2, p0

    .line 74
    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    .line 75
    iget p1, p2, Landroid/graphics/Insets;->left:I

    .line 78
    if-ltz p1, :cond_2

    .line 80
    iget p1, p2, Landroid/graphics/Insets;->top:I

    .line 82
    if-ltz p1, :cond_2

    .line 84
    iget p1, p2, Landroid/graphics/Insets;->right:I

    .line 86
    if-ltz p1, :cond_2

    .line 88
    iget p1, p2, Landroid/graphics/Insets;->bottom:I

    .line 90
    if-gez p1, :cond_1

    .line 92
    goto :goto_0

    .line 94
    :cond_1
    return-object p0

    .line 95
    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    .line 96
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 98
    const/high16 v0, -0x1000000

    .line 100
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 102
    filled-new-array {p2, p0}, [Landroid/graphics/drawable/Drawable;

    .line 105
    move-result-object p0

    .line 108
    invoke-direct {p1, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-object p1

    .line 112
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 113
    const-string p2, "Can\'t create inset drawable, using 0 insets bitmap and insets create degenerate region: "

    .line 115
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 120
    move-result p2

    .line 123
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo p2, "x"

    .line 127
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 133
    move-result p1

    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string p1, " "

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 151
    const-string p1, "Screenshot"

    .line 152
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v3
    .line 157
.end method

.method private getInteractionJankMonitorInstance()Lcom/android/internal/jank/InteractionJankMonitor;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method private getSwipeRegion()Landroid/graphics/Region;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Region;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 14
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 17
    const/high16 v3, -0x3ec00000    # -12.0f

    .line 19
    invoke-static {v3, v2}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 21
    move-result v2

    .line 24
    float-to-int v2, v2

    .line 25
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 26
    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 28
    move-result v4

    .line 31
    float-to-int v4, v4

    .line 32
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 33
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 38
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 43
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 46
    invoke-static {v3, v2}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 48
    move-result v2

    .line 51
    float-to-int v2, v2

    .line 52
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 53
    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 55
    move-result v3

    .line 58
    float-to-int v3, v3

    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 60
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 65
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 68
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 70
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 75
    const v2, 0x7f0a05af    # @id/message_dismiss_button

    .line 78
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object p0

    .line 84
    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 87
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 90
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 92
    :cond_0
    return-object v0
    .line 95
.end method


# virtual methods
.method public final addQuickShareChip(Landroid/app/Notification$Action;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mSmartChips:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 18
    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->QUICK_SHARE:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 20
    if-ne v0, v1, :cond_1

    .line 22
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 27
    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    move-result-object v0

    .line 36
    const v1, 0x7f0d02a8    # @layout/overlay_action_chip 'res/layout/overlay_action_chip.xml'

    .line 37
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    .line 40
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 47
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 49
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/OverlayActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 56
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 58
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 62
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 65
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;

    .line 67
    const/4 v1, 0x3

    .line 69
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 76
    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mSmartChips:Ljava/util/ArrayList;

    .line 90
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 92
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    return-void
    .line 97
.end method

.method public final createScreenshotActionsShadeAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 14
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 16
    const v3, 0x7f130a98    # @string/screenshot_share_description 'Share screenshot'

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 28
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 30
    const v3, 0x7f08119b    # @drawable/ic_screenshot_share 'res/drawable/ic_screenshot_share.xml'

    .line 32
    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 35
    move-result-object v2

    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 40
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 43
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;

    .line 45
    const/4 v4, 0x0

    .line 47
    invoke-direct {v2, v4, p0}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 59
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 61
    const v5, 0x7f130a8a    # @string/screenshot_edit_description 'Edit screenshot'

    .line 63
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 73
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 75
    const v5, 0x7f081199    # @drawable/ic_screenshot_edit 'res/drawable/ic_screenshot_edit.xml'

    .line 77
    invoke-static {v2, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 80
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 87
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;

    .line 89
    invoke-direct {v2, v3, p0}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 102
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;

    .line 104
    const/4 v5, 0x2

    .line 106
    invoke-direct {v2, v5, p0}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 113
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 115
    const v6, 0x7f130a97    # @string/screenshot_scroll_label 'Capture more'

    .line 117
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/OverlayActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 127
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 129
    const v6, 0x7f08119a    # @drawable/ic_screenshot_scroll 'res/drawable/ic_screenshot_scroll.xml'

    .line 131
    invoke-static {v2, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 134
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    .line 146
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 148
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 152
    move-result-object v1

    .line 155
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 158
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    .line 161
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 163
    move-result-object v2

    .line 166
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-array v1, v5, [F

    .line 170
    fill-array-data v1, :array_0

    .line 172
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 175
    move-result-object v1

    .line 178
    const-wide/16 v5, 0x190

    .line 179
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 181
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 184
    const/4 v5, 0x0

    .line 186
    invoke-virtual {v2, v5}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 187
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 190
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 192
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 195
    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 200
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$9;

    .line 205
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/screenshot/ScreenshotView$9;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V

    .line 207
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda6;

    .line 213
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;Ljava/util/ArrayList;)V

    .line 215
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    return-object v1

    .line 221
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 222
.end method

.method public getScreenshotPreview()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTouchRegion(Z)Landroid/graphics/Region;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->getSwipeRegion()Landroid/graphics/Region;

    .line 2
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollingScrim:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    .line 10
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    .line 16
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollingScrim:Landroid/widget/ImageView;

    .line 21
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 23
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 26
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 28
    :cond_0
    iget p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mNavMode:I

    .line 31
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 33
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 39
    const-class v1, Landroid/view/WindowManager;

    .line 41
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Landroid/view/WindowManager;

    .line 47
    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 49
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 53
    move-result-object p1

    .line 56
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    .line 57
    move-result v1

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 61
    move-result-object p1

    .line 64
    new-instance v1, Landroid/graphics/Rect;

    .line 65
    iget v2, p1, Landroid/graphics/Insets;->left:I

    .line 67
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 69
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 71
    const/4 v4, 0x0

    .line 73
    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 79
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 82
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 84
    iget p1, p1, Landroid/graphics/Insets;->right:I

    .line 86
    sub-int p1, v2, p1

    .line 88
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 90
    invoke-virtual {v1, p1, v4, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 95
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 97
    :cond_1
    return-object v0
    .line 100
.end method

.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 3
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 6
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotView;->getTouchRegion(Z)Landroid/graphics/Region;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 13
    return-void
    .line 16
.end method

.method public final onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a081d    # @id/screenshot_scrolling_scrim

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-object v1, v0

    .line 17
    check-cast v1, Landroid/widget/ImageView;

    .line 18
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollingScrim:Landroid/widget/ImageView;

    .line 20
    const v0, 0x7f0a081f    # @id/screenshot_static

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-object v1, v0

    .line 34
    check-cast v1, Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 35
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 37
    const v0, 0x7f0a0819    # @id/screenshot_preview

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/ImageView;

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-object v1, v0

    .line 51
    check-cast v1, Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0a081a    # @id/screenshot_preview_border

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 62
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-object v1, v0

    .line 66
    check-cast v1, Landroid/view/View;

    .line 67
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreviewBorder:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 71
    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 74
    const v0, 0x7f0a080d    # @id/screenshot_badge

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/ImageView;

    .line 84
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-object v2, v0

    .line 89
    check-cast v2, Landroid/widget/ImageView;

    .line 90
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotBadge:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0a0093    # @id/actions_container_background

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/ImageView;

    .line 101
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-object v2, v0

    .line 106
    check-cast v2, Landroid/widget/ImageView;

    .line 107
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0a0092    # @id/actions_container

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v0

    .line 117
    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 118
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-object v2, v0

    .line 123
    check-cast v2, Landroid/widget/HorizontalScrollView;

    .line 124
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 126
    const v0, 0x7f0a080c    # @id/screenshot_actions

    .line 128
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 131
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/LinearLayout;

    .line 135
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-object v2, v0

    .line 140
    check-cast v2, Landroid/widget/LinearLayout;

    .line 141
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    .line 143
    const v0, 0x7f0a0811    # @id/screenshot_dismiss_button

    .line 145
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/FrameLayout;

    .line 152
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-object v2, v0

    .line 157
    check-cast v2, Landroid/widget/FrameLayout;

    .line 158
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 160
    const v0, 0x7f0a081c    # @id/screenshot_scrollable_preview

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object v0

    .line 168
    check-cast v0, Landroid/widget/ImageView;

    .line 169
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-object v2, v0

    .line 174
    check-cast v2, Landroid/widget/ImageView;

    .line 175
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 177
    const v0, 0x7f0a0814    # @id/screenshot_flash

    .line 179
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 182
    move-result-object v0

    .line 185
    check-cast v0, Landroid/widget/ImageView;

    .line 186
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    move-object v2, v0

    .line 191
    check-cast v2, Landroid/widget/ImageView;

    .line 192
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 196
    const v2, 0x7f0a081e    # @id/screenshot_share_chip

    .line 198
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    .line 201
    move-result-object v0

    .line 204
    check-cast v0, Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 205
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-object v2, v0

    .line 210
    check-cast v2, Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 211
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 215
    const v2, 0x7f0a0813    # @id/screenshot_edit_chip

    .line 217
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    .line 220
    move-result-object v0

    .line 223
    check-cast v0, Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 224
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    move-object v2, v0

    .line 229
    check-cast v2, Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 230
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 234
    const v2, 0x7f0a081b    # @id/screenshot_scroll_chip

    .line 236
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    .line 239
    move-result-object v0

    .line 242
    check-cast v0, Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 243
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    move-object v2, v0

    .line 248
    check-cast v2, Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 249
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 251
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 253
    const/high16 v2, 0x41400000    # 12.0f

    .line 255
    invoke-static {v2, v0}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 257
    move-result v0

    .line 260
    float-to-int v0, v0

    .line 261
    new-instance v2, Landroid/view/TouchDelegate;

    .line 262
    new-instance v3, Landroid/graphics/Rect;

    .line 264
    invoke-direct {v3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 266
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 269
    invoke-direct {v2, v3, v4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 271
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 274
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 276
    new-instance v2, Landroid/view/TouchDelegate;

    .line 279
    new-instance v3, Landroid/graphics/Rect;

    .line 281
    invoke-direct {v3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 286
    invoke-direct {v2, v3, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 291
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 293
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 299
    const/4 v2, 0x0

    .line 301
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 302
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 305
    move-result-object v0

    .line 308
    const v3, 0x10e00c2    # @android:integer/config_notificationStripRemoteViewSizeBytes

    .line 309
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 312
    move-result v0

    .line 315
    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mNavMode:I

    .line 316
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 318
    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 322
    move-result-object v0

    .line 325
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 326
    if-ne v0, v1, :cond_0

    .line 328
    move v0, v1

    .line 330
    goto :goto_0

    .line 331
    :cond_0
    move v0, v2

    .line 332
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mOrientationPortrait:Z

    .line 333
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 335
    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 339
    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 343
    move-result v0

    .line 346
    if-nez v0, :cond_1

    .line 347
    move v2, v1

    .line 349
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDirectionLTR:Z

    .line 350
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 352
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 355
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 358
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotView$3;

    .line 360
    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotView$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    .line 362
    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->setCallbacks(Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissCallbacks;)V

    .line 365
    return-void
    .line 368
.end method

.method public final prepareSharedTransition()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingSharedTransition:Z

    .line 3
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [F

    .line 6
    fill-array-data v0, :array_0

    .line 8
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 11
    move-result-object v0

    .line 14
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;

    .line 15
    const/4 v2, 0x3

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 21
    const-wide/16 v1, 0x258

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 26
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 29
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 34
.end method

.method public final reset()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mSwipeDismissHandler:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    iget-object v0, v0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 34
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 40
    const/4 v3, 0x4

    .line 42
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 46
    const/high16 v4, 0x3f800000    # 1.0f

    .line 48
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreviewBorder:Landroid/view/View;

    .line 53
    const/4 v5, 0x0

    .line 55
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotBadge:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotBadge:Landroid/widget/ImageView;

    .line 64
    const/16 v6, 0x8

    .line 66
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotBadge:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingSharedTransition:Z

    .line 76
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 83
    invoke-virtual {v0, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 88
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollingScrim:Landroid/widget/ImageView;

    .line 93
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 103
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 108
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    move-result-object v3

    .line 115
    const v5, 0x7f130a92    # @string/screenshot_preview_description 'Screenshot preview'

    .line 116
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 122
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollingScrim:Landroid/widget/ImageView;

    .line 136
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 146
    invoke-virtual {v0, v2}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 151
    invoke-virtual {v0, v2}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIsPending(Z)V

    .line 153
    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 156
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mSmartChips:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    move-result-object v0

    .line 163
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result v2

    .line 167
    if-eqz v2, :cond_2

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    move-result-object v2

    .line 173
    check-cast v2, Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 174
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    .line 176
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 178
    goto :goto_1

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mSmartChips:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 187
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 189
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 192
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 194
    return-void
    .line 197
.end method

.method public final restoreNonScrollingUi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 2
    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollablePreview:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollingScrim:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 19
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 21
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreviewBorder:Landroid/view/View;

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mCallbacks:Lcom/android/systemui/screenshot/ScreenshotController$5;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$5;->this$0:Ljava/lang/Object;

    .line 55
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotController;

    .line 57
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/TimeoutHandler;->resetTimeout()V

    .line 61
    return-void
    .line 64
.end method

.method public final setChipIntents(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 2
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda3;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;I)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 13
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda3;

    .line 15
    const/4 v3, 0x1

    .line 17
    invoke-direct {v1, p0, p1, v3}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;I)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 24
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda3;

    .line 26
    const/4 v4, 0x2

    .line 28
    invoke-direct {v1, p0, p1, v4}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;I)V

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 35
    if-eqz v0, :cond_2

    .line 37
    iget-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->quickShareAction:Landroid/app/Notification$Action;

    .line 39
    if-eqz v1, :cond_0

    .line 41
    iget-object v1, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 43
    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda4;

    .line 45
    invoke-direct {v5, p0, v2}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V

    .line 47
    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/screenshot/OverlayActionChip;->setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "Screenshot"

    .line 54
    const-string v1, "Showed quick share chip, but quick share intent was null"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 61
    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->QUICK_SHARE:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 63
    if-ne v0, v1, :cond_1

    .line 65
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 70
    const/16 v1, 0x8

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 74
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 77
    if-eqz v0, :cond_7

    .line 79
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 81
    move-result p1

    .line 84
    if-eqz p1, :cond_6

    .line 85
    if-eq p1, v3, :cond_5

    .line 87
    if-eq p1, v4, :cond_4

    .line 89
    const/4 v0, 0x3

    .line 91
    if-eq p1, v0, :cond_3

    .line 92
    goto :goto_2

    .line 94
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mQuickShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    .line 97
    goto :goto_2

    .line 100
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    .line 103
    goto :goto_2

    .line 106
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 107
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    .line 109
    goto :goto_2

    .line 112
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 113
    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    .line 115
    goto :goto_2

    .line 118
    :cond_7
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 121
    move-result-object v0

    .line 124
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->smartActions:Ljava/util/List;

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object p1

    .line 130
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v1

    .line 134
    if-eqz v1, :cond_8

    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 140
    check-cast v1, Landroid/app/Notification$Action;

    .line 141
    const v4, 0x7f0d02a8    # @layout/overlay_action_chip 'res/layout/overlay_action_chip.xml'

    .line 143
    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    .line 146
    invoke-virtual {v0, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 148
    move-result-object v4

    .line 151
    check-cast v4, Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 152
    iget-object v5, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {v4, v5}, Lcom/android/systemui/screenshot/OverlayActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 159
    move-result-object v5

    .line 162
    invoke-virtual {v4, v5, v2}, Lcom/android/systemui/screenshot/OverlayActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 163
    iget-object v1, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 166
    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda4;

    .line 168
    invoke-direct {v5, p0, v3}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;I)V

    .line 170
    invoke-virtual {v4, v1, v5}, Lcom/android/systemui/screenshot/OverlayActionChip;->setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 173
    const/high16 v1, 0x3f800000    # 1.0f

    .line 176
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    .line 181
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 183
    move-result v5

    .line 186
    sub-int/2addr v5, v3

    .line 187
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 188
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mSmartChips:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    goto :goto_1

    .line 196
    :cond_8
    :goto_2
    return-void
    .line 197
.end method

.method public final showScrollChip(Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 2
    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_IMPRESSION:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 15
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;

    .line 17
    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;Ljava/lang/String;Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
    .line 25
.end method

.method public final stopInputListening()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    .line 7
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 9
    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object v0, v0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->mReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;

    .line 18
    invoke-virtual {v0}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    .line 20
    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 23
    :cond_1
    return-void
    .line 25
.end method

.method public final updateInsets(Landroid/view/WindowInsets;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 12
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move v2, v1

    .line 19
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mOrientationPortrait:Z

    .line 20
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 30
    move-result-object v2

    .line 33
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 34
    move-result v3

    .line 37
    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 38
    move-result-object p1

    .line 41
    if-nez v2, :cond_1

    .line 42
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 44
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    .line 50
    move-result-object v1

    .line 53
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mOrientationPortrait:Z

    .line 54
    if-eqz v3, :cond_2

    .line 56
    iget v3, v1, Landroid/graphics/Insets;->left:I

    .line 58
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 60
    move-result v4

    .line 63
    iget v5, v1, Landroid/graphics/Insets;->top:I

    .line 64
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 66
    move-result v4

    .line 69
    iget v5, v1, Landroid/graphics/Insets;->right:I

    .line 70
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 72
    move-result v2

    .line 75
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 76
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 78
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 80
    move-result p1

    .line 83
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 84
    move-result p1

    .line 87
    invoke-virtual {v0, v3, v4, v5, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 92
    move-result v3

    .line 95
    iget v4, v1, Landroid/graphics/Insets;->left:I

    .line 96
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 98
    move-result v3

    .line 101
    iget v4, v1, Landroid/graphics/Insets;->top:I

    .line 102
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 104
    move-result v2

    .line 107
    iget v5, v1, Landroid/graphics/Insets;->right:I

    .line 108
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 110
    move-result v2

    .line 113
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 114
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 116
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 118
    move-result p1

    .line 121
    invoke-virtual {v0, v3, v4, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 122
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 130
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 132
    return-void
    .line 135
.end method

.method public final updateOrientation(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 12
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mOrientationPortrait:Z

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->updateInsets(Landroid/view/WindowInsets;)V

    .line 21
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object p1

    .line 29
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mOrientationPortrait:Z

    .line 30
    const/4 v1, -0x2

    .line 32
    if-eqz v0, :cond_1

    .line 33
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mFixedSize:F

    .line 35
    float-to-int v0, v0

    .line 37
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 38
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 42
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mFixedSize:F

    .line 52
    float-to-int v0, v0

    .line 54
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 57
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
    .line 69
.end method

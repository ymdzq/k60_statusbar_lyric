.class public Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.super Landroid/app/AlertDialog;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

.field public final mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mHandler:Landroid/os/Handler;

.field public mLastConfigurationHeightDp:I

.field public mLastConfigurationWidthDp:I

.field public mLastHeight:I

.field public mLastWidth:I

.field public final mOnCreateRunnables:Ljava/util/List;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;


# direct methods
.method public constructor <init>(IZLandroid/content/Context;)V
    .locals 5

    .line 2
    const-class v0, Lcom/android/systemui/flags/FeatureFlags;

    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/flags/FeatureFlags;

    const-class v1, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 4
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    const-class v2, Lcom/android/systemui/model/SysUiState;

    .line 5
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/model/SysUiState;

    const-class v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 6
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const-class v4, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 7
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 8
    invoke-direct {p0, p3, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mHandler:Landroid/os/Handler;

    const/high16 p1, -0x80000000

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastWidth:I

    .line 11
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastHeight:I

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationWidthDp:I

    .line 13
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationHeightDp:I

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mOnCreateRunnables:Ljava/util/List;

    .line 15
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 17
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Landroid/app/AlertDialog;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    if-eqz p2, :cond_0

    .line 21
    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    invoke-direct {p1, p0, v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;-><init>(Landroid/app/Dialog;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogLaunchAnimator;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    .line 23
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 24
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f140564    # @style/Theme.SystemUI.Dialog

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(IZLandroid/content/Context;)V

    return-void
.end method

.method public static applyFlags(Landroid/app/AlertDialog;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object p0

    .line 5
    const/16 v0, 0x7e1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    .line 8
    const/high16 v0, 0xa0000

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 13
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 24
    move-result p0

    .line 27
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 28
    move-result v1

    .line 31
    not-int v1, v1

    .line 32
    and-int/2addr p0, v1

    .line 33
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 34
    return-void
    .line 37
.end method

.method public static calculateDialogWidthWithInsets(Landroid/app/Dialog;I)I
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 3
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 16
    move-result p1

    .line 19
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getHorizontalInsets(Landroid/app/Dialog;)I

    .line 20
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    add-float/2addr p1, p0

    .line 25
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 26
    move-result p0

    .line 29
    return p0
    .line 30
.end method

.method public static getDefaultDialogWidth(Landroid/app/Dialog;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "persist.systemui.flag_tablet_dialog_width"

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    const/16 v0, 0x270

    .line 16
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->calculateDialogWidthWithInsets(Landroid/app/Dialog;I)I

    .line 18
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 v2, -0x2

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    const/16 v0, 0x15c

    .line 26
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->calculateDialogWidthWithInsets(Landroid/app/Dialog;I)I

    .line 28
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_1
    if-lez v1, :cond_2

    .line 33
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->calculateDialogWidthWithInsets(Landroid/app/Dialog;I)I

    .line 35
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v0

    .line 43
    const v1, 0x7f0704c5    # @dimen/large_dialog_width '@dimen/match_parent'

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result v0

    .line 50
    if-lez v0, :cond_3

    .line 51
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getHorizontalInsets(Landroid/app/Dialog;)I

    .line 53
    move-result p0

    .line 56
    add-int/2addr v0, p0

    .line 57
    :cond_3
    return v0
    .line 58
.end method

.method public static getHorizontalInsets(Landroid/app/Dialog;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda3;

    .line 14
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda3;-><init>()V

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object p0

    .line 33
    :goto_0
    if-eqz p0, :cond_2

    .line 34
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    .line 36
    move-result-object p0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 41
    :goto_1
    iget v0, p0, Landroid/graphics/Insets;->left:I

    .line 43
    iget p0, p0, Landroid/graphics/Insets;->right:I

    .line 45
    add-int/2addr v0, p0

    .line 47
    return v0
    .line 48
.end method

.method public static registerDismissListener(Landroid/app/Dialog;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    .line 2
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 4
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 10
    const-class v2, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 12
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 18
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;-><init>(Landroid/app/Dialog;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogLaunchAnimator;)V

    .line 20
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda4;

    .line 23
    invoke-direct {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;)V

    .line 25
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 28
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 31
    sget-object p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 33
    const/4 v1, 0x0

    .line 35
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 36
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 38
    const/4 p0, 0x1

    .line 41
    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mRegistered:Z

    .line 42
    return-void
.end method

.method public static setDialogSize(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->create()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    move-result-object v0

    .line 8
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getDefaultDialogWidth(Landroid/app/Dialog;)I

    .line 9
    move-result p0

    .line 12
    const/4 v1, -0x2

    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 14
    return-void
    .line 17
.end method

.method public static setShowForAllUsers(Landroid/app/Dialog;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 6
    move-result-object p0

    .line 9
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 10
    or-int/lit8 v0, v0, 0x10

    .line 12
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 14
    return-void
    .line 16
.end method

.method public static setWindowOnTop(Landroid/app/Dialog;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object p0

    .line 5
    const/16 v0, 0x7e1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    .line 8
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 21
    move-result p0

    .line 24
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 25
    move-result v0

    .line 28
    not-int v0, v0

    .line 29
    and-int/2addr p0, v0

    .line 30
    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 31
    :cond_0
    return-void
    .line 34
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
    .line 3
.end method

.method public getWidth()I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getDefaultDialogWidth(Landroid/app/Dialog;)I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationWidthDp:I

    .line 2
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationHeightDp:I

    .line 8
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 10
    if-eq v0, v2, :cond_1

    .line 12
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationWidthDp:I

    .line 14
    iget p1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 16
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationHeightDp:I

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->updateWindowSize()V

    .line 20
    :cond_1
    return-void
    .line 23
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    move-result-object p1

    .line 16
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 17
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationWidthDp:I

    .line 19
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 21
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastConfigurationHeightDp:I

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->updateWindowSize()V

    .line 25
    const/4 p1, 0x0

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mOnCreateRunnables:Ljava/util/List;

    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v0

    .line 36
    if-ge p1, v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mOnCreateRunnables:Ljava/util/List;

    .line 39
    check-cast v0, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Runnable;

    .line 47
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 49
    add-int/lit8 p1, p1, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 55
    sget-object p1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    return-void
    .line 62
.end method

.method public final onStart()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    .line 5
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 10
    sget-object v3, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 12
    const/4 v4, 0x0

    .line 14
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 15
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 17
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mRegistered:Z

    .line 20
    :cond_0
    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 25
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->setShowing(Lcom/android/systemui/statusbar/phone/SystemUIDialog;Z)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 30
    const v2, 0x8000

    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    .line 40
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->start()V

    .line 47
    return-void
    .line 50
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDismissReceiver:Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mRegistered:Z

    .line 10
    if-eqz v2, :cond_0

    .line 12
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 14
    invoke-virtual {v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$DismissReceiver;->mRegistered:Z

    .line 19
    :cond_0
    invoke-static {p0}, Landroid/view/ViewRootImpl;->removeConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 24
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->setShowing(Lcom/android/systemui/statusbar/phone/SystemUIDialog;Z)V

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 29
    const v2, 0x8000

    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    .line 39
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->stop()V

    .line 46
    return-void
    .line 49
.end method

.method public final setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 19
    const/4 p4, 0x0

    .line 20
    invoke-virtual {p0, p1, p2, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 21
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mOnCreateRunnables:Ljava/util/List;

    .line 24
    new-instance p4, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;

    .line 26
    invoke-direct {p4, p1, p3, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda1;-><init>(ILandroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    .line 28
    check-cast p2, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :goto_0
    return-void
    .line 36
.end method

.method public final setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 1
    const/4 v0, -0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 4
    return-void
    .line 7
.end method

.method public start()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public stop()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateWindowSize()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mHandler:Landroid/os/Handler;

    .line 6
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getWidth()I

    .line 25
    move-result v0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getHeight()I

    .line 29
    move-result v1

    .line 32
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastWidth:I

    .line 33
    if-ne v0, v2, :cond_1

    .line 35
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastHeight:I

    .line 37
    if-ne v1, v2, :cond_1

    .line 39
    return-void

    .line 41
    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastWidth:I

    .line 42
    iput v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->mLastHeight:I

    .line 44
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 50
    return-void
    .line 53
.end method

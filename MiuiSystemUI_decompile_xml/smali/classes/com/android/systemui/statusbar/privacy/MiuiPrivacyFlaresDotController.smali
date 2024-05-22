.class public final Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static final PRIVACY_TYPE:[I


# instance fields
.field public isShowing:Z

.field public mBarHeight:I

.field public final mCapsuleParent:Landroid/widget/ImageView;

.field public mCapsuleParentFolme:Lmiuix/animation/IFolme;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFullScreenGesture:Z

.field public mIsNewMiuiPromptInfo:Z

.field public mIsRTL:Z

.field public mLastMiuiPromptInfo:I

.field public final mListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field public mMiuiOptimization:Z

.field public mOrientation:I

.field public final mPrivacyContainer:Landroid/widget/FrameLayout;

.field public mPrivacyContainerFolme:Lmiuix/animation/IFolme;

.field public final mPrivacyDotView:Landroid/view/ViewGroup;

.field public mRemoteViews:Landroid/widget/RemoteViews;

.field public final mResources:Landroid/content/res/Resources;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final runnable:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    const/16 v1, 0x8

    .line 3
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x2

    .line 6
    filled-new-array {v2, v3, v0, v1}, [I

    .line 7
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->PRIVACY_TYPE:[I

    .line 11
    return-void
    .line 13
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    .line 6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    .line 9
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mOrientation:I

    .line 14
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsRTL:Z

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;)V

    .line 20
    iput-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->runnable:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mWindowManager:Landroid/view/WindowManager;

    .line 27
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 29
    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mResources:Landroid/content/res/Resources;

    .line 40
    iput-object p4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mHandler:Landroid/os/Handler;

    .line 42
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 44
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 50
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 52
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 54
    iget v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    .line 57
    if-gez v0, :cond_0

    .line 59
    const v0, 0x10502bd    # @android:dimen/text_size_menu_header_material

    .line 61
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    move-result p2

    .line 67
    iput p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    .line 68
    :cond_0
    new-instance p2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;

    .line 70
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;)V

    .line 72
    iput-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 77
    move-result-object v0

    .line 80
    const v2, 0x7f0d02ed    # @layout/privacy_flares 'res/layout/privacy_flares.xml'

    .line 81
    const/4 v3, 0x0

    .line 84
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 88
    check-cast v0, Landroid/view/ViewGroup;

    .line 89
    iput-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotView:Landroid/view/ViewGroup;

    .line 91
    const v2, 0x7f0a03a1    # @id/fullscreen_dot

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v2

    .line 99
    check-cast v2, Landroid/widget/ImageView;

    .line 100
    iput-object v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mCapsuleParent:Landroid/widget/ImageView;

    .line 102
    const v4, 0x7f0a05b5    # @id/mini_state_container

    .line 104
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v4

    .line 110
    check-cast v4, Landroid/widget/FrameLayout;

    .line 111
    iput-object v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyContainer:Landroid/widget/FrameLayout;

    .line 113
    iget-object v5, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mCapsuleParentFolme:Lmiuix/animation/IFolme;

    .line 115
    if-eqz v5, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyContainerFolme:Lmiuix/animation/IFolme;

    .line 119
    if-nez v5, :cond_2

    .line 121
    :cond_1
    filled-new-array {v2}, [Landroid/view/View;

    .line 123
    move-result-object v2

    .line 126
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 127
    move-result-object v2

    .line 130
    iput-object v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mCapsuleParentFolme:Lmiuix/animation/IFolme;

    .line 131
    filled-new-array {v4}, [Landroid/view/View;

    .line 133
    move-result-object v2

    .line 136
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 137
    move-result-object v2

    .line 140
    iput-object v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyContainerFolme:Lmiuix/animation/IFolme;

    .line 141
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$1;

    .line 143
    invoke-direct {v2, p0, p4}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$1;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;Landroid/os/Handler;)V

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 148
    move-result-object p1

    .line 151
    const-string p4, "force_fsg_nav_bar"

    .line 152
    invoke-static {p4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 154
    move-result-object p4

    .line 157
    invoke-virtual {p1, p4, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$1;->onChange(Z)V

    .line 161
    sget-boolean p1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    .line 164
    if-eqz p1, :cond_3

    .line 166
    goto :goto_1

    .line 168
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    .line 169
    if-eqz p1, :cond_4

    .line 171
    goto :goto_0

    .line 173
    :cond_4
    move-object p2, v3

    .line 174
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :goto_1
    const-string p1, "MiuiPrivacyFlaresDotController"

    .line 178
    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 180
    return-void
    .line 183
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotView:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 4
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 10
    move-result-object p0

    .line 13
    const-string p2, "  "

    .line 14
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final hide()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mCapsuleParentFolme:Lmiuix/animation/IFolme;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mCapsuleParentFolme:Lmiuix/animation/IFolme;

    .line 18
    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 20
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyContainerFolme:Lmiuix/animation/IFolme;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 31
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyContainerFolme:Lmiuix/animation/IFolme;

    .line 38
    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 40
    move-result-object v0

    .line 43
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->runnable:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mHandler:Landroid/os/Handler;

    .line 49
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mWindowManager:Landroid/view/WindowManager;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotView:Landroid/view/ViewGroup;

    .line 56
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->showPrivacyDot()V

    .line 61
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    .line 65
    return-void
    .line 67
.end method

.method public final isRTL()Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 6
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
    .line 15
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mOrientation:I

    .line 2
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsRTL:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL()Z

    .line 10
    move-result v1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 16
    iput p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mOrientation:I

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL()Z

    .line 20
    move-result p1

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsRTL:Z

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateDotViewMarginEndAndGravity()V

    .line 26
    :cond_1
    return-void
    .line 29
.end method

.method public final showPrivacyDot()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyContainer:Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 4
    move-result v1

    .line 7
    div-int/lit8 v1, v1, 0x2

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mCapsuleParent:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 12
    move-result v1

    .line 15
    div-int/lit8 v1, v1, 0x2

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    const/16 p0, 0x8

    .line 22
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 24
    return-void
    .line 27
.end method

.method public final updateDotViewHeight()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 2
    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    .line 4
    if-nez v1, :cond_0

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mResources:Landroid/content/res/Resources;

    .line 15
    const v2, 0x7f070e32    # @dimen/ongoing_appops_dot_diameter '6.5454dp'

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v1

    .line 23
    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 24
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    .line 26
    if-eqz v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 30
    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mWindowManager:Landroid/view/WindowManager;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotView:Landroid/view/ViewGroup;

    .line 44
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :cond_1
    return-void
    .line 49
.end method

.method public final updateDotViewMarginEndAndGravity()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mCapsuleParent:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    iget-object v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyContainer:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL()Z

    .line 22
    move-result v6

    .line 25
    if-eqz v6, :cond_0

    .line 26
    const v6, 0x800013

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    const v6, 0x800015

    .line 32
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v8

    .line 40
    const v9, 0x7f0710ef    # @dimen/status_bar_padding_end '3.0px'

    .line 41
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v8

    .line 47
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsFullScreenGesture:Z

    .line 48
    if-nez v9, :cond_1

    .line 50
    iget p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mOrientation:I

    .line 52
    const/4 v9, 0x2

    .line 54
    if-ne p0, v9, :cond_1

    .line 55
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object p0

    .line 60
    const v7, 0x7f070d14    # @dimen/navigation_bar_height '@android:dimen/notification_big_picture_max_height'

    .line 61
    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    move-result p0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 p0, 0x0

    .line 69
    :goto_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    .line 70
    move-result v7

    .line 73
    add-int/2addr v8, p0

    .line 74
    if-ne v7, v8, :cond_2

    .line 75
    if-eq v4, v6, :cond_3

    .line 77
    :cond_2
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 79
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    :cond_3
    invoke-virtual {v3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    .line 87
    move-result p0

    .line 90
    if-ne p0, v8, :cond_4

    .line 91
    if-eq v5, v6, :cond_5

    .line 93
    :cond_4
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 95
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 98
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    :cond_5
    return-void
    .line 103
.end method

.method public final updateLastMiuiPromptInfo(Landroid/widget/RemoteViews;[I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    array-length v3, p2

    .line 5
    const/4 v4, 0x1

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    aget v3, p2, v1

    .line 9
    if-ne v3, v4, :cond_0

    .line 11
    sget-object v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->PRIVACY_TYPE:[I

    .line 13
    aget v3, v3, v1

    .line 15
    add-int/2addr v2, v3

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    iget p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLastMiuiPromptInfo:I

    .line 21
    if-ne v2, p2, :cond_3

    .line 23
    iget-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 25
    if-eq p1, p2, :cond_2

    .line 27
    goto :goto_1

    .line 29
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsNewMiuiPromptInfo:Z

    .line 30
    goto :goto_2

    .line 32
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsNewMiuiPromptInfo:Z

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 35
    :goto_2
    const-string/jumbo p1, "updatePrivacy: "

    .line 37
    const-string p2, " "

    .line 40
    invoke-static {p1, v2, p2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object p1

    .line 45
    iget v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLastMiuiPromptInfo:I

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsNewMiuiPromptInfo:Z

    .line 54
    const-string v0, "MiuiPrivacyFlaresDotController"

    .line 56
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 58
    iput v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLastMiuiPromptInfo:I

    .line 61
    return-void
    .line 63
.end method

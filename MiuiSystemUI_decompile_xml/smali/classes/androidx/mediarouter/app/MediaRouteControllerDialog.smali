.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CONNECTION_TIMEOUT_MILLIS:I


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mArtIconBackgroundColor:I

.field public mArtIconBitmap:Landroid/graphics/Bitmap;

.field public mArtIconIsLoaded:Z

.field public mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

.field public mArtIconUri:Landroid/net/Uri;

.field public mArtView:Landroid/widget/ImageView;

.field public mAttachedToWindow:Z

.field public final mCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

.field public final mContext:Landroid/content/Context;

.field public final mControllerCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

.field public mCreated:Z

.field public mCustomControlLayout:Landroid/widget/FrameLayout;

.field public mDefaultControlLayout:Landroid/widget/FrameLayout;

.field public mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field public mDialogAreaLayout:Landroid/widget/LinearLayout;

.field public mDialogContentWidth:I

.field public mDisconnectButton:Landroid/widget/Button;

.field public mDividerView:Landroid/view/View;

.field public final mEnableGroupVolumeUX:Z

.field public mExpandableAreaLayout:Landroid/widget/FrameLayout;

.field public final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

.field public mGroupExpandCollapseButton:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

.field public mGroupListAnimationDurationMs:I

.field public final mGroupListFadeInAnimation:Landroidx/mediarouter/app/MediaRouteControllerDialog$1;

.field public mGroupListFadeInDurationMs:I

.field public mGroupListFadeOutDurationMs:I

.field public mGroupMemberRoutes:Ljava/util/List;

.field public mGroupMemberRoutesAdded:Ljava/util/Set;

.field public mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

.field public mGroupMemberRoutesRemoved:Ljava/util/Set;

.field public mHasPendingUpdate:Z

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mIsGroupExpanded:Z

.field public mIsGroupListAnimating:Z

.field public mIsGroupListAnimationPending:Z

.field public final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field public mMediaMainControlLayout:Landroid/widget/LinearLayout;

.field public mPendingUpdateAnimationNeeded:Z

.field public mPlaybackControlButton:Landroid/widget/ImageButton;

.field public mPlaybackControlLayout:Landroid/widget/RelativeLayout;

.field public final mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public mRouteInVolumeSliderTouched:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public mRouteNameTextView:Landroid/widget/TextView;

.field public final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field public mState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public mStopCastingButton:Landroid/widget/Button;

.field public mSubtitleView:Landroid/widget/TextView;

.field public mTitleView:Landroid/widget/TextView;

.field public mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

.field public final mVolumeControlEnabled:Z

.field public mVolumeControlLayout:Landroid/widget/LinearLayout;

.field public mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

.field public mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

.field public mVolumeGroupListItemHeight:I

.field public mVolumeGroupListItemIconSize:I

.field public mVolumeGroupListMaxHeight:I

.field public final mVolumeGroupListPaddingTop:I

.field public mVolumeSlider:Landroid/widget/SeekBar;

.field public mVolumeSliderMap:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    const-wide/16 v1, 0x1e

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    move-result-wide v0

    .line 9
    long-to-int v0, v0

    .line 10
    sput v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->CONNECTION_TIMEOUT_MILLIS:I

    .line 11
    return-void
    .line 13
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogContext(ZLandroid/content/Context;)Landroid/content/Context;

    .line 3
    move-result-object p1

    .line 6
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    .line 7
    move-result v1

    .line 10
    invoke-direct {p0, p1, v1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 11
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 14
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$1;

    .line 16
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, v2, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$1;-><init>(ILjava/lang/Object;)V

    .line 19
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeInAnimation:Landroidx/mediarouter/app/MediaRouteControllerDialog$1;

    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 27
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 28
    new-instance v3, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

    .line 30
    invoke-direct {v3, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 32
    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

    .line 35
    invoke-static {v1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 37
    move-result-object v3

    .line 40
    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 41
    sget-object v3, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 43
    if-nez v3, :cond_0

    .line 45
    move v0, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getGlobalRouter()Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    .line 49
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    :goto_0
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mEnableGroupVolumeUX:Z

    .line 56
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 58
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 60
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 63
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 65
    move-result-object v0

    .line 68
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 69
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setMediaSession()V

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object v0

    .line 77
    const v2, 0x7f070c39    # @dimen/mr_controller_volume_group_list_padding_top '16.0dp'

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    move-result v0

    .line 84
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListPaddingTop:I

    .line 85
    const-string v0, "accessibility"

    .line 87
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 92
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 93
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 95
    const v0, 0x7f0c0011    # @interpolator/mr_linear_out_slow_in 'res/interpolator/mr_linear_out_slow_in.xml'

    .line 97
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 100
    move-result-object v0

    .line 103
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 104
    const v0, 0x7f0c0010    # @interpolator/mr_fast_out_slow_in 'res/interpolator/mr_fast_out_slow_in.xml'

    .line 106
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 109
    move-result-object p1

    .line 112
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 113
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 115
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 117
    return-void
    .line 120
.end method

.method public static setLayoutHeight(ILandroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final animateLayoutHeight(ILandroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;

    .line 8
    invoke-direct {v1, v0, p1, p2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;-><init>(IILandroid/view/View;)V

    .line 10
    iget p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    .line 13
    int-to-long v2, p1

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 16
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 19
    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 21
    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 24
    return-void
    .line 27
.end method

.method public final canShowPlaybackControlLayout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
    .line 14
.end method

.method public final clearGroupListAnimation(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 10
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    .line 12
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 19
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 24
    add-int v5, v0, v2

    .line 25
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 27
    invoke-virtual {v6, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 32
    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 33
    if-eqz p1, :cond_0

    .line 35
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 37
    if-eqz v6, :cond_0

    .line 39
    check-cast v6, Ljava/util/HashSet;

    .line 41
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 43
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    goto :goto_1

    .line 49
    :cond_0
    const v5, 0x7f0a0a80    # @id/volume_item_container

    .line 50
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v5

    .line 56
    check-cast v5, Landroid/widget/LinearLayout;

    .line 57
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    new-instance v5, Landroid/view/animation/AnimationSet;

    .line 62
    invoke-direct {v5, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 64
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    .line 67
    const/high16 v7, 0x3f800000    # 1.0f

    .line 69
    invoke-direct {v6, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 71
    const-wide/16 v7, 0x0

    .line 74
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 76
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 79
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    .line 82
    const/4 v9, 0x0

    .line 84
    invoke-direct {v6, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 85
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 88
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 91
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 94
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 97
    invoke-virtual {v3, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 103
    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 106
    iget-object v0, v0, Landroidx/mediarouter/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    .line 108
    check-cast v0, Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v0

    .line 115
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result v2

    .line 119
    if-eqz v2, :cond_3

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v2

    .line 125
    check-cast v2, Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    .line 126
    iput-boolean v4, v2, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    .line 128
    iput-boolean v4, v2, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    .line 130
    iget-object v2, v2, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mListener:Landroidx/mediarouter/app/MediaRouteControllerDialog$10;

    .line 132
    if-eqz v2, :cond_2

    .line 134
    iget-object v3, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$10;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 136
    iget-object v5, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    .line 138
    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$10;->val$route:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 140
    check-cast v5, Ljava/util/HashSet;

    .line 142
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 147
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 149
    goto :goto_2

    .line 152
    :cond_3
    if-nez p1, :cond_4

    .line 153
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->finishAnimation(Z)V

    .line 155
    :cond_4
    return-void
    .line 158
.end method

.method public final finishAnimation(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 3
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    .line 5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupListAnimating:Z

    .line 8
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupListAnimationPending:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupListAnimationPending:Z

    .line 14
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 19
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 22
    return-void
    .line 25
.end method

.method public final getMainControllerHeight(Z)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_3

    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 15
    move-result v1

    .line 18
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 21
    move-result v2

    .line 24
    add-int/2addr v2, v1

    .line 25
    add-int/2addr v2, v0

    .line 26
    if-eqz p1, :cond_1

    .line 27
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    .line 29
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    .line 31
    move-result v0

    .line 34
    add-int/2addr v2, v0

    .line 35
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 36
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 38
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 46
    move-result v0

    .line 49
    add-int/2addr v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v0, v2

    .line 52
    :goto_0
    if-eqz p1, :cond_3

    .line 53
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 55
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 57
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    move-result p0

    .line 68
    add-int/2addr v0, p0

    .line 69
    :cond_3
    return v0
    .line 70
.end method

.method public final isGroup()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 10
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 12
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    move-result p0

    .line 19
    const/4 v0, 0x1

    .line 20
    if-le p0, v0, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
    .line 25
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 6
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 8
    sget-object v1, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 10
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 12
    const/4 v3, 0x2

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 15
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setMediaSession()V

    .line 23
    return-void
    .line 26
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    move-result-object p1

    .line 8
    const v0, 0x106000d    # @android:color/transparent

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 12
    const p1, 0x7f0d0251    # @layout/mr_controller_material_dialog_b 'res/layout/mr_controller_material_dialog_b.xml'

    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 18
    const p1, 0x102001b    # @android:id/button3

    .line 21
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 27
    const/16 v0, 0x8

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    new-instance p1, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;

    .line 33
    const/4 v1, 0x4

    .line 35
    invoke-direct {p1, p0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;I)V

    .line 36
    const v1, 0x7f0a0645    # @id/mr_expandable_area

    .line 39
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 45
    check-cast v1, Landroid/widget/FrameLayout;

    .line 46
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mExpandableAreaLayout:Landroid/widget/FrameLayout;

    .line 48
    new-instance v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;

    .line 50
    const/4 v3, 0x1

    .line 52
    invoke-direct {v2, p0, v3}, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;I)V

    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v1, 0x7f0a0644    # @id/mr_dialog_area

    .line 59
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v1

    .line 65
    check-cast v1, Landroid/widget/LinearLayout;

    .line 66
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogAreaLayout:Landroid/widget/LinearLayout;

    .line 68
    new-instance v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;

    .line 70
    const/4 v4, 0x2

    .line 72
    invoke-direct {v2, p0, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;I)V

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 79
    const/4 v2, 0x0

    .line 81
    const v4, 0x7f0401bd    # @attr/colorPrimary

    .line 82
    invoke-static {v1, v2, v4}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    .line 85
    move-result v5

    .line 88
    const v6, 0x1010031    # @android:attr/colorBackground

    .line 89
    invoke-static {v1, v2, v6}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    .line 92
    move-result v6

    .line 95
    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    .line 96
    move-result-wide v6

    .line 99
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    .line 100
    cmpg-double v6, v6, v8

    .line 102
    if-gez v6, :cond_0

    .line 104
    const v5, 0x7f0401a4    # @attr/colorAccent

    .line 106
    invoke-static {v1, v2, v5}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    .line 109
    move-result v5

    .line 112
    :cond_0
    const v1, 0x102001a    # @android:id/button2

    .line 113
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v1

    .line 119
    check-cast v1, Landroid/widget/Button;

    .line 120
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    .line 122
    const v6, 0x7f13080c    # @string/mr_controller_disconnect 'Disconnect'

    .line 124
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 127
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    .line 130
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 132
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    .line 135
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x1020019    # @android:id/button1

    .line 140
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object v1

    .line 146
    check-cast v1, Landroid/widget/Button;

    .line 147
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    .line 149
    const v6, 0x7f130813    # @string/mr_controller_stop_casting 'Stop casting'

    .line 151
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 154
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    .line 157
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 159
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    .line 162
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v1, 0x7f0a0649    # @id/mr_name

    .line 167
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object v1

    .line 173
    check-cast v1, Landroid/widget/TextView;

    .line 174
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouteNameTextView:Landroid/widget/TextView;

    .line 176
    const v1, 0x7f0a063c    # @id/mr_close

    .line 178
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 181
    move-result-object v1

    .line 184
    check-cast v1, Landroid/widget/ImageButton;

    .line 185
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v1, 0x7f0a0642    # @id/mr_custom_control

    .line 190
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 193
    move-result-object v1

    .line 196
    check-cast v1, Landroid/widget/FrameLayout;

    .line 197
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCustomControlLayout:Landroid/widget/FrameLayout;

    .line 199
    const v1, 0x7f0a0643    # @id/mr_default_control

    .line 201
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 204
    move-result-object v1

    .line 207
    check-cast v1, Landroid/widget/FrameLayout;

    .line 208
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 210
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;

    .line 212
    const/4 v5, 0x3

    .line 214
    invoke-direct {v1, p0, v5}, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;I)V

    .line 215
    const v5, 0x7f0a0621    # @id/mr_art

    .line 218
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 221
    move-result-object v5

    .line 224
    check-cast v5, Landroid/widget/ImageView;

    .line 225
    iput-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 227
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v5, 0x7f0a0641    # @id/mr_control_title_container

    .line 232
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 235
    move-result-object v5

    .line 238
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    const v1, 0x7f0a0648    # @id/mr_media_main_control

    .line 242
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 245
    move-result-object v1

    .line 248
    check-cast v1, Landroid/widget/LinearLayout;

    .line 249
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 251
    const v1, 0x7f0a063d    # @id/mr_control_divider

    .line 253
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 256
    move-result-object v1

    .line 259
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    .line 260
    const v1, 0x7f0a0650    # @id/mr_playback_control

    .line 262
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 265
    move-result-object v1

    .line 268
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 269
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    .line 271
    const v1, 0x7f0a0640    # @id/mr_control_title

    .line 273
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 276
    move-result-object v1

    .line 279
    check-cast v1, Landroid/widget/TextView;

    .line 280
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    .line 282
    const v1, 0x7f0a063f    # @id/mr_control_subtitle

    .line 284
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 287
    move-result-object v1

    .line 290
    check-cast v1, Landroid/widget/TextView;

    .line 291
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    .line 293
    const v1, 0x7f0a063e    # @id/mr_control_playback_ctrl

    .line 295
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 298
    move-result-object v1

    .line 301
    check-cast v1, Landroid/widget/ImageButton;

    .line 302
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    .line 304
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    const p1, 0x7f0a0652    # @id/mr_volume_control

    .line 309
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 312
    move-result-object p1

    .line 315
    check-cast p1, Landroid/widget/LinearLayout;

    .line 316
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 318
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    const p1, 0x7f0a0655    # @id/mr_volume_slider

    .line 323
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 326
    move-result-object p1

    .line 329
    check-cast p1, Landroid/widget/SeekBar;

    .line 330
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 332
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 334
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 336
    new-instance p1, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    .line 339
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 341
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    .line 344
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 346
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 348
    const p1, 0x7f0a0653    # @id/mr_volume_group_list

    .line 351
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 354
    move-result-object p1

    .line 357
    check-cast p1, Landroidx/mediarouter/app/OverlayListView;

    .line 358
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 360
    new-instance p1, Ljava/util/ArrayList;

    .line 362
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 364
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 367
    new-instance p1, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 369
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 371
    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    .line 373
    move-result-object v0

    .line 376
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 377
    invoke-direct {p1, p0, v0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/List;)V

    .line 379
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 382
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 384
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 386
    new-instance p1, Ljava/util/HashSet;

    .line 389
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 391
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    .line 394
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 396
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 398
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 400
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isGroup()Z

    .line 402
    move-result v5

    .line 405
    invoke-static {p1, v2, v4}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    .line 406
    move-result v4

    .line 409
    const v6, 0x7f0401bf    # @attr/colorPrimaryDark

    .line 410
    invoke-static {p1, v2, v6}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeColor(Landroid/content/Context;II)I

    .line 413
    move-result v6

    .line 416
    if-eqz v5, :cond_1

    .line 417
    invoke-static {v2, p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getControllerColor(ILandroid/content/Context;)I

    .line 419
    move-result p1

    .line 422
    const/high16 v5, -0x22000000

    .line 423
    if-ne p1, v5, :cond_1

    .line 425
    const/4 p1, -0x1

    .line 427
    move v6, v4

    .line 428
    move v4, p1

    .line 429
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 430
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 433
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    move-result-object p1

    .line 439
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 440
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    move-result-object p1

    .line 446
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 447
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 450
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 452
    check-cast v0, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 454
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 456
    invoke-static {p1, v0, v1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setVolumeSliderColor(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 458
    new-instance p1, Ljava/util/HashMap;

    .line 461
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 463
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    .line 466
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 468
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 470
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const p1, 0x7f0a0646    # @id/mr_group_expand_collapse

    .line 475
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 478
    move-result-object p1

    .line 481
    check-cast p1, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 482
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupExpandCollapseButton:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 484
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;

    .line 486
    invoke-direct {v0, p0, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;I)V

    .line 488
    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 494
    if-eqz p1, :cond_2

    .line 496
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 498
    goto :goto_0

    .line 500
    :cond_2
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 501
    :goto_0
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 503
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 505
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 507
    move-result-object p1

    .line 510
    const v0, 0x7f0b00cb    # @integer/mr_controller_volume_group_list_animation_duration_ms '400'

    .line 511
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 514
    move-result p1

    .line 517
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    .line 518
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 520
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 522
    move-result-object p1

    .line 525
    const v0, 0x7f0b00cc    # @integer/mr_controller_volume_group_list_fade_in_duration_ms '400'

    .line 526
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 529
    move-result p1

    .line 532
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeInDurationMs:I

    .line 533
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 537
    move-result-object p1

    .line 540
    const v0, 0x7f0b00cd    # @integer/mr_controller_volume_group_list_fade_out_duration_ms '200'

    .line 541
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 544
    move-result p1

    .line 547
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupListFadeOutDurationMs:I

    .line 548
    iput-boolean v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCreated:Z

    .line 550
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateLayout()V

    .line 552
    return-void
    .line 555
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 4
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 6
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setMediaSession()V

    .line 9
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 13
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 15
    return-void
    .line 18
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    if-eq p1, v0, :cond_1

    .line 4
    const/16 v1, 0x18

    .line 6
    if-ne p1, v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 11
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    iget-boolean p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mEnableGroupVolumeUX:Z

    .line 16
    const/4 v1, 0x1

    .line 18
    if-nez p2, :cond_2

    .line 19
    iget-boolean p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 21
    if-nez p2, :cond_4

    .line 23
    :cond_2
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 25
    if-ne p1, v0, :cond_3

    .line 27
    const/4 p1, -0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_3
    move p1, v1

    .line 31
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 32
    :cond_4
    return v1
    .line 35
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x19

    .line 2
    if-eq p1, v0, :cond_1

    .line 4
    const/16 v0, 0x18

    .line 6
    if-ne p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 11
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 16
    return p0
    .line 17
.end method

.method public final setMediaSession()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

    .line 6
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 8
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 12
    :cond_0
    return-void
    .line 14
.end method

.method public final update(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mHasPendingUpdate:Z

    .line 7
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    .line 9
    or-int/2addr p1, v0

    .line 11
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    .line 12
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mHasPendingUpdate:Z

    .line 16
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    .line 18
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 20
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_23

    .line 26
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 28
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    goto/16 :goto_16

    .line 36
    :cond_1
    iget-boolean v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mCreated:Z

    .line 38
    if-nez v2, :cond_2

    .line 40
    return-void

    .line 42
    :cond_2
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouteNameTextView:Landroid/widget/TextView;

    .line 43
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 45
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    .line 47
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    .line 52
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 54
    iget-boolean v3, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    .line 56
    const/16 v4, 0x8

    .line 58
    if-eqz v3, :cond_3

    .line 60
    move v3, v0

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move v3, v4

    .line 64
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    iget-boolean v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    .line 68
    const/4 v3, 0x0

    .line 70
    if-eqz v2, :cond_6

    .line 71
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 73
    if-eqz v2, :cond_4

    .line 75
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 77
    move-result v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    move v2, v1

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    move v2, v0

    .line 85
    :goto_1
    if-eqz v2, :cond_5

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    const-string v5, "Can\'t set artwork image with recycled bitmap: "

    .line 90
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 95
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 103
    const-string v5, "MediaRouteCtrlDialog"

    .line 104
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    goto :goto_2

    .line 109
    :cond_5
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 110
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 117
    iget v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    .line 119
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 121
    :goto_2
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    .line 124
    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 126
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    .line 128
    :cond_6
    iget-boolean v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mEnableGroupVolumeUX:Z

    .line 130
    if-nez v2, :cond_8

    .line 132
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isGroup()Z

    .line 134
    move-result v2

    .line 137
    if-eqz v2, :cond_8

    .line 138
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iput-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 145
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 147
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 149
    iget-boolean v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 152
    if-eqz v2, :cond_7

    .line 154
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 156
    goto :goto_3

    .line 158
    :cond_7
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 159
    :goto_3
    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 161
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    .line 163
    goto :goto_6

    .line 166
    :cond_8
    iget-boolean v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 167
    if-eqz v2, :cond_9

    .line 169
    iget-boolean v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mEnableGroupVolumeUX:Z

    .line 171
    if-eqz v2, :cond_b

    .line 173
    :cond_9
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 175
    iget-boolean v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 177
    if-eqz v5, :cond_a

    .line 179
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    .line 181
    move-result v2

    .line 184
    if-ne v2, v1, :cond_a

    .line 185
    move v2, v1

    .line 187
    goto :goto_4

    .line 188
    :cond_a
    move v2, v0

    .line 189
    :goto_4
    if-nez v2, :cond_c

    .line 190
    :cond_b
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 192
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    goto :goto_6

    .line 197
    :cond_c
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 198
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 200
    move-result v2

    .line 203
    if-ne v2, v4, :cond_e

    .line 204
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 206
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 211
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 213
    iget v5, v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 215
    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 217
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 220
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 222
    iget v5, v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    .line 224
    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 226
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupExpandCollapseButton:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 229
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isGroup()Z

    .line 231
    move-result v5

    .line 234
    if-eqz v5, :cond_d

    .line 235
    move v5, v0

    .line 237
    goto :goto_5

    .line 238
    :cond_d
    move v5, v4

    .line 239
    :goto_5
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 240
    :cond_e
    :goto_6
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    .line 243
    move-result v2

    .line 246
    if-eqz v2, :cond_22

    .line 247
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 249
    if-nez v2, :cond_f

    .line 251
    move-object v2, v3

    .line 253
    goto :goto_7

    .line 254
    :cond_f
    iget-object v2, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 255
    :goto_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 257
    move-result v5

    .line 260
    xor-int/2addr v5, v1

    .line 261
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 262
    if-nez v6, :cond_10

    .line 264
    goto :goto_8

    .line 266
    :cond_10
    iget-object v3, v6, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    .line 267
    :goto_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 269
    move-result v6

    .line 272
    xor-int/2addr v6, v1

    .line 273
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 274
    iget v7, v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 276
    const/4 v8, -0x1

    .line 278
    if-eq v7, v8, :cond_11

    .line 279
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    .line 281
    const v3, 0x7f130809    # @string/mr_controller_casting_screen 'Casting screen'

    .line 283
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 286
    goto :goto_b

    .line 289
    :cond_11
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 290
    if-eqz v7, :cond_15

    .line 292
    iget v7, v7, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 294
    if-nez v7, :cond_12

    .line 296
    goto :goto_a

    .line 298
    :cond_12
    if-nez v5, :cond_13

    .line 299
    if-nez v6, :cond_13

    .line 301
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    .line 303
    const v3, 0x7f13080e    # @string/mr_controller_no_info_available 'No info available'

    .line 305
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 308
    goto :goto_b

    .line 311
    :cond_13
    if-eqz v5, :cond_14

    .line 312
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    .line 314
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    move v2, v1

    .line 319
    goto :goto_9

    .line 320
    :cond_14
    move v2, v0

    .line 321
    :goto_9
    if-eqz v6, :cond_16

    .line 322
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    .line 324
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    move v3, v1

    .line 329
    goto :goto_c

    .line 330
    :cond_15
    :goto_a
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    .line 331
    const v3, 0x7f13080f    # @string/mr_controller_no_media_selected 'No media selected'

    .line 333
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 336
    :goto_b
    move v2, v1

    .line 339
    :cond_16
    move v3, v0

    .line 340
    :goto_c
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    .line 341
    if-eqz v2, :cond_17

    .line 343
    move v2, v0

    .line 345
    goto :goto_d

    .line 346
    :cond_17
    move v2, v4

    .line 347
    :goto_d
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    .line 351
    if-eqz v3, :cond_18

    .line 353
    move v3, v0

    .line 355
    goto :goto_e

    .line 356
    :cond_18
    move v3, v4

    .line 357
    :goto_e
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 361
    if-eqz v2, :cond_22

    .line 363
    iget v2, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 365
    const/4 v3, 0x6

    .line 367
    if-eq v2, v3, :cond_1a

    .line 368
    const/4 v3, 0x3

    .line 370
    if-ne v2, v3, :cond_19

    .line 371
    goto :goto_f

    .line 373
    :cond_19
    move v2, v0

    .line 374
    goto :goto_10

    .line 375
    :cond_1a
    :goto_f
    move v2, v1

    .line 376
    :goto_10
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    .line 377
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    .line 379
    move-result-object v3

    .line 382
    const-wide/16 v5, 0x0

    .line 383
    if-eqz v2, :cond_1c

    .line 385
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 387
    iget-wide v7, v7, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 389
    const-wide/16 v9, 0x202

    .line 391
    and-long/2addr v7, v9

    .line 393
    cmp-long v7, v7, v5

    .line 394
    if-eqz v7, :cond_1b

    .line 396
    move v7, v1

    .line 398
    goto :goto_11

    .line 399
    :cond_1b
    move v7, v0

    .line 400
    :goto_11
    if-eqz v7, :cond_1c

    .line 401
    const v2, 0x7f0404f0    # @attr/mediaRoutePauseDrawable

    .line 403
    const v5, 0x7f130810    # @string/mr_controller_pause 'Pause'

    .line 406
    goto :goto_14

    .line 409
    :cond_1c
    if-eqz v2, :cond_1e

    .line 410
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 412
    iget-wide v7, v7, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 414
    const-wide/16 v9, 0x1

    .line 416
    and-long/2addr v7, v9

    .line 418
    cmp-long v7, v7, v5

    .line 419
    if-eqz v7, :cond_1d

    .line 421
    move v7, v1

    .line 423
    goto :goto_12

    .line 424
    :cond_1d
    move v7, v0

    .line 425
    :goto_12
    if-eqz v7, :cond_1e

    .line 426
    const v2, 0x7f0404f4    # @attr/mediaRouteStopDrawable

    .line 428
    const v5, 0x7f130812    # @string/mr_controller_stop 'Stop'

    .line 431
    goto :goto_14

    .line 434
    :cond_1e
    if-nez v2, :cond_20

    .line 435
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 437
    iget-wide v7, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 439
    const-wide/16 v9, 0x204

    .line 441
    and-long/2addr v7, v9

    .line 443
    cmp-long v2, v7, v5

    .line 444
    if-eqz v2, :cond_1f

    .line 446
    move v2, v1

    .line 448
    goto :goto_13

    .line 449
    :cond_1f
    move v2, v0

    .line 450
    :goto_13
    if-eqz v2, :cond_20

    .line 451
    const v2, 0x7f0404f1    # @attr/mediaRoutePlayDrawable

    .line 453
    const v5, 0x7f130811    # @string/mr_controller_play 'Play'

    .line 456
    goto :goto_14

    .line 459
    :cond_20
    move v1, v0

    .line 460
    move v2, v1

    .line 461
    move v5, v2

    .line 462
    :goto_14
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    .line 463
    if-eqz v1, :cond_21

    .line 465
    goto :goto_15

    .line 467
    :cond_21
    move v0, v4

    .line 468
    :goto_15
    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 469
    if-eqz v1, :cond_22

    .line 472
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    .line 474
    invoke-static {v2, v3}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeResource(ILandroid/content/Context;)I

    .line 476
    move-result v1

    .line 479
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 480
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    .line 483
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 485
    move-result-object v1

    .line 488
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 489
    move-result-object v1

    .line 492
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 493
    :cond_22
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    .line 496
    return-void

    .line 499
    :cond_23
    :goto_16
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 500
    return-void
    .line 503
.end method

.method public final updateArtIconIfNeeded()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move-object v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 11
    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, v0, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    .line 14
    :goto_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 16
    if-nez v0, :cond_2

    .line 18
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 20
    goto :goto_2

    .line 22
    :cond_2
    iget-object v3, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 23
    :goto_2
    if-nez v0, :cond_3

    .line 25
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 27
    goto :goto_3

    .line 29
    :cond_3
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 30
    :goto_3
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-eq v3, v2, :cond_4

    .line 34
    goto :goto_6

    .line 36
    :cond_4
    if-nez v3, :cond_7

    .line 37
    if-eqz v0, :cond_5

    .line 39
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 44
    if-eqz v2, :cond_5

    .line 45
    goto :goto_4

    .line 47
    :cond_5
    if-nez v0, :cond_6

    .line 48
    if-nez v1, :cond_6

    .line 50
    :goto_4
    move v0, v5

    .line 52
    goto :goto_5

    .line 53
    :cond_6
    move v0, v4

    .line 54
    :goto_5
    if-nez v0, :cond_7

    .line 55
    :goto_6
    move v0, v5

    .line 57
    goto :goto_7

    .line 58
    :cond_7
    move v0, v4

    .line 59
    :goto_7
    if-eqz v0, :cond_a

    .line 60
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isGroup()Z

    .line 62
    move-result v0

    .line 65
    if-eqz v0, :cond_8

    .line 66
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mEnableGroupVolumeUX:Z

    .line 68
    if-nez v0, :cond_8

    .line 70
    goto :goto_8

    .line 72
    :cond_8
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 73
    if-eqz v0, :cond_9

    .line 75
    invoke-virtual {v0, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 77
    :cond_9
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 80
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 82
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 85
    new-array p0, v4, [Ljava/lang/Void;

    .line 87
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    :cond_a
    :goto_8
    return-void
    .line 92
.end method

.method public final updateLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogWidth(Landroid/content/Context;)I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    move-result-object v1

    .line 11
    const/4 v2, -0x2

    .line 12
    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    move-result v2

    .line 27
    sub-int/2addr v0, v2

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 29
    move-result v1

    .line 32
    sub-int/2addr v0, v1

    .line 33
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    .line 34
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v0

    .line 41
    const v1, 0x7f070c37    # @dimen/mr_controller_volume_group_list_item_icon_size '24.0dp'

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    move-result v1

    .line 48
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemIconSize:I

    .line 49
    const v1, 0x7f070c36    # @dimen/mr_controller_volume_group_list_item_height '68.0dp'

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    move-result v1

    .line 57
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    .line 58
    const v1, 0x7f070c38    # @dimen/mr_controller_volume_group_list_max_height '288.0dp'

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    move-result v0

    .line 66
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListMaxHeight:I

    .line 67
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 70
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 72
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateArtIconIfNeeded()V

    .line 74
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    .line 78
    return-void
    .line 81
.end method

.method public final updateLayoutHeight(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    move-result-object v0

    .line 12
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;

    .line 13
    invoke-direct {v1, p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Z)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    return-void
    .line 21
.end method

.method public final updateMediaControlVisibility(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x8

    .line 11
    if-nez v1, :cond_0

    .line 13
    if-eqz p1, :cond_0

    .line 15
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v3

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 23
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 27
    move-result p0

    .line 30
    if-ne p0, v3, :cond_1

    .line 31
    if-nez p1, :cond_1

    .line 33
    move v2, v3

    .line 35
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    return-void
    .line 39
.end method

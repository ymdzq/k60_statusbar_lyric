.class public final Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field public final mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field public mGroupVolumeItem:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mItems:Ljava/util/ArrayList;

.field public final mLayoutAnimationDurationMs:I

.field public final mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

.field public final mSpeakerIcon:Landroid/graphics/drawable/Drawable;

.field public final mTvIcon:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    .line 12
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 20
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 22
    const v1, 0x7f0404ed    # @attr/mediaRouteDefaultIconDrawable

    .line 24
    invoke-static {v1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v0

    .line 30
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 31
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 33
    const v1, 0x7f0404f6    # @attr/mediaRouteTvIconDrawable

    .line 35
    invoke-static {v1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object v0

    .line 41
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    .line 42
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 44
    const v1, 0x7f0404f3    # @attr/mediaRouteSpeakerIconDrawable

    .line 46
    invoke-static {v1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object v0

    .line 52
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 55
    const v1, 0x7f0404f2    # @attr/mediaRouteSpeakerGroupIconDrawable

    .line 57
    invoke-static {v1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getIconByAttrId(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v0

    .line 63
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object p1

    .line 71
    const v0, 0x7f0b00ca    # @integer/mr_cast_volume_slider_layout_animation_duration_ms '400'

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 75
    move-result p1

    .line 78
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mLayoutAnimationDurationMs:I

    .line 79
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 81
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 86
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->updateItems()V

    .line 88
    return-void
    .line 91
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
    new-instance v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$1;

    .line 8
    invoke-direct {v1, p1, v0, p2}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$1;-><init>(IILandroid/view/View;)V

    .line 10
    new-instance p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$2;

    .line 13
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$2;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;)V

    .line 15
    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 18
    iget p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mLayoutAnimationDurationMs:I

    .line 21
    int-to-long v2, p1

    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 24
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 27
    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 29
    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 32
    return-void
    .line 35
.end method

.method public final getIconDrawable(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 6
    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 14
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    return-object v0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "Failed to load "

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    const-string v2, "MediaRouteCtrlDialog"

    .line 41
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_0
    iget v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 46
    const/4 v1, 0x1

    .line 48
    if-eq v0, v1, :cond_3

    .line 49
    const/4 v1, 0x2

    .line 51
    if-eq v0, v1, :cond_2

    .line 52
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    .line 54
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mSpeakerGroupIcon:Landroid/graphics/drawable/Drawable;

    .line 60
    goto :goto_0

    .line 62
    :cond_1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mSpeakerIcon:Landroid/graphics/drawable/Drawable;

    .line 66
    goto :goto_0

    .line 68
    :cond_3
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mTvIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    :goto_0
    return-object p0
    .line 71
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    add-int/lit8 p0, p0, 0x1

    .line 8
    return p0
    .line 10
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mGroupVolumeItem:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 7
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 15
    :goto_0
    iget p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mType:I

    .line 17
    return p0
    .line 19
.end method

.method public final notifyAdapterDataSetChanged()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 2
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUngroupableRoutes:Ljava/util/List;

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUngroupableRoutes:Ljava/util/List;

    .line 11
    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 20
    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mProvider:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    .line 27
    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->mRoutes:Ljava/util/List;

    .line 30
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    move-result-object v4

    .line 35
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v4

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 49
    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 50
    iget-object v6, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 52
    invoke-virtual {v6, v5}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 54
    move-result-object v6

    .line 57
    if-eqz v6, :cond_0

    .line 58
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;->isGroupable()Z

    .line 60
    move-result v6

    .line 63
    if-eqz v6, :cond_0

    .line 64
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .line 70
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 72
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 75
    check-cast v1, Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 83
    return-void
    .line 86
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 1
    invoke-virtual {p0, p2}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->getItemViewType(I)I

    .line 2
    move-result v0

    .line 5
    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mGroupVolumeItem:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 11
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 18
    check-cast p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 19
    :goto_0
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 23
    if-eq v0, v1, :cond_17

    .line 25
    const/4 v3, 0x2

    .line 27
    if-eq v0, v3, :cond_16

    .line 28
    const/4 v4, 0x3

    .line 30
    const/high16 v5, 0x3f800000    # 1.0f

    .line 31
    const/4 v6, 0x4

    .line 33
    if-eq v0, v4, :cond_4

    .line 34
    if-ne v0, v6, :cond_3

    .line 36
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;

    .line 38
    iget-object p0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    .line 40
    check-cast p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 42
    iput-object p0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 44
    iget-object p2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 51
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 53
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    .line 56
    iget-object v3, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 58
    iget-object v3, v3, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 60
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 62
    move-result-object v3

    .line 65
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 66
    move-result v4

    .line 69
    if-ne v4, v1, :cond_1

    .line 70
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v3

    .line 75
    if-ne v3, p0, :cond_1

    .line 76
    goto :goto_1

    .line 78
    :cond_1
    move v2, v1

    .line 79
    :goto_1
    if-eqz v2, :cond_2

    .line 80
    goto :goto_2

    .line 82
    :cond_2
    iget v5, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mDisabledAlpha:F

    .line 83
    :goto_2
    iget-object v2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mItemView:Landroid/view/View;

    .line 85
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 87
    new-instance v3, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;

    .line 90
    invoke-direct {v3, p1, v1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 92
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v0, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->getIconDrawable(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;

    .line 98
    move-result-object v0

    .line 101
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    .line 105
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;->mTextView:Landroid/widget/TextView;

    .line 107
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    goto/16 :goto_f

    .line 112
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 114
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 116
    throw p0

    .line 119
    :cond_4
    iget-object v0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    .line 120
    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 122
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    .line 124
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 126
    move-object v4, p1

    .line 128
    check-cast v4, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    .line 129
    check-cast p0, Ljava/util/HashMap;

    .line 131
    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 136
    iget-object p0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    .line 138
    check-cast p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 140
    iget-object p2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    .line 142
    iget-object v0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 144
    iget-object v4, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 146
    if-ne p0, v4, :cond_6

    .line 148
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 150
    move-result-object v4

    .line 153
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 154
    move-result v4

    .line 157
    if-lez v4, :cond_6

    .line 158
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 160
    move-result-object v4

    .line 163
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 164
    move-result-object v4

    .line 167
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    move-result v7

    .line 171
    if-eqz v7, :cond_6

    .line 172
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    move-result-object v7

    .line 177
    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 178
    iget-object v8, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    .line 180
    check-cast v8, Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 184
    move-result v8

    .line 187
    if-nez v8, :cond_5

    .line 188
    move-object p0, v7

    .line 190
    :cond_6
    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->bindRouteVolumeSliderHolder(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 191
    invoke-virtual {p2, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->getIconDrawable(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroid/graphics/drawable/Drawable;

    .line 194
    move-result-object p2

    .line 197
    iget-object v4, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 198
    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object p2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    .line 203
    iget-object v7, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mTextView:Landroid/widget/TextView;

    .line 205
    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 210
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 212
    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->isSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    .line 215
    move-result v7

    .line 218
    iget-object v8, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mUngroupableRoutes:Ljava/util/List;

    .line 219
    check-cast v8, Ljava/util/ArrayList;

    .line 221
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 223
    move-result v8

    .line 226
    if-eqz v8, :cond_7

    .line 227
    goto :goto_5

    .line 229
    :cond_7
    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->isSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    .line 230
    move-result v8

    .line 233
    if-eqz v8, :cond_8

    .line 234
    iget-object v8, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 236
    invoke-virtual {v8}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 238
    move-result-object v8

    .line 241
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 242
    move-result v8

    .line 245
    if-ge v8, v3, :cond_8

    .line 246
    goto :goto_5

    .line 248
    :cond_8
    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->isSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    .line 249
    move-result v3

    .line 252
    if-eqz v3, :cond_c

    .line 253
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 255
    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupState(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;

    .line 257
    move-result-object p0

    .line 260
    if-eqz p0, :cond_b

    .line 261
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$1;->this$0:Ljava/lang/Object;

    .line 263
    check-cast p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 265
    if-eqz p0, :cond_a

    .line 267
    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->mIsUnselectable:Z

    .line 269
    if-eqz p0, :cond_9

    .line 271
    goto :goto_3

    .line 273
    :cond_9
    move p0, v2

    .line 274
    goto :goto_4

    .line 275
    :cond_a
    :goto_3
    move p0, v1

    .line 276
    :goto_4
    if-eqz p0, :cond_b

    .line 277
    goto :goto_6

    .line 279
    :cond_b
    :goto_5
    move p0, v2

    .line 280
    goto :goto_7

    .line 281
    :cond_c
    :goto_6
    move p0, v1

    .line 282
    :goto_7
    invoke-virtual {p2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 283
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 286
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 288
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mItemView:Landroid/view/View;

    .line 294
    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    invoke-virtual {p2, p0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 299
    if-nez p0, :cond_e

    .line 302
    if-eqz v7, :cond_d

    .line 304
    goto :goto_8

    .line 306
    :cond_d
    move v3, v2

    .line 307
    goto :goto_9

    .line 308
    :cond_e
    :goto_8
    move v3, v1

    .line 309
    :goto_9
    iget-object v4, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mMuteButton:Landroid/widget/ImageButton;

    .line 310
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 312
    if-nez p0, :cond_10

    .line 315
    if-eqz v7, :cond_f

    .line 317
    goto :goto_a

    .line 319
    :cond_f
    move v1, v2

    .line 320
    :cond_10
    :goto_a
    iget-object v3, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 321
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 323
    iget-object v1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mViewClickListener:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    if-eqz v7, :cond_11

    .line 334
    iget-object v1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 336
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isGroup()Z

    .line 338
    move-result v1

    .line 341
    if-nez v1, :cond_11

    .line 342
    iget v2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mExpandedLayoutHeight:I

    .line 344
    :cond_11
    iget-object v1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mVolumeSliderLayout:Landroid/widget/RelativeLayout;

    .line 346
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 348
    move-result-object v3

    .line 351
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 352
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;->mDisabledAlpha:F

    .line 357
    if-nez p0, :cond_13

    .line 359
    if-eqz v7, :cond_12

    .line 361
    goto :goto_b

    .line 363
    :cond_12
    move v1, p1

    .line 364
    goto :goto_c

    .line 365
    :cond_13
    :goto_b
    move v1, v5

    .line 366
    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 367
    if-nez p0, :cond_15

    .line 370
    if-nez v7, :cond_14

    .line 372
    goto :goto_d

    .line 374
    :cond_14
    move v5, p1

    .line 375
    :cond_15
    :goto_d
    invoke-virtual {p2, v5}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 376
    goto :goto_f

    .line 379
    :cond_16
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$HeaderViewHolder;

    .line 380
    iget-object p0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 384
    move-result-object p0

    .line 387
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    .line 388
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    goto :goto_f

    .line 393
    :cond_17
    iget-object v0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    .line 394
    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 396
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    .line 398
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    .line 400
    move-object v3, p1

    .line 402
    check-cast v3, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    .line 403
    check-cast p0, Ljava/util/HashMap;

    .line 405
    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;

    .line 410
    iget-object p0, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;

    .line 412
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 414
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mEnableGroupVolumeUX:Z

    .line 416
    if-eqz v0, :cond_18

    .line 418
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 420
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getMemberRoutes()Ljava/util/List;

    .line 422
    move-result-object p0

    .line 425
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 426
    move-result p0

    .line 429
    if-le p0, v1, :cond_18

    .line 430
    goto :goto_e

    .line 432
    :cond_18
    move v1, v2

    .line 433
    :goto_e
    if-eqz v1, :cond_19

    .line 434
    iget v2, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;->mExpandedHeight:I

    .line 436
    :cond_19
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 440
    move-result-object v0

    .line 443
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 444
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-object p0, p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    .line 449
    check-cast p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 451
    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->bindRouteVolumeSliderHolder(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 453
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    .line 456
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;->mTextView:Landroid/widget/TextView;

    .line 458
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :goto_f
    return-void
    .line 463
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4
    if-eq p1, v0, :cond_3

    .line 6
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    const/4 v0, 0x3

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    const/4 v0, 0x4

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    const p1, 0x7f0d024a    # @layout/mr_cast_group_item 'res/layout/mr_cast_group_item.xml'

    .line 17
    invoke-virtual {v2, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 23
    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;

    .line 24
    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupViewHolder;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Landroid/view/View;)V

    .line 26
    return-object p2

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 32
    throw p0

    .line 35
    :cond_1
    const p1, 0x7f0d024e    # @layout/mr_cast_route_item 'res/layout/mr_cast_route_item.xml'

    .line 36
    invoke-virtual {v2, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 42
    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;

    .line 43
    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$RouteViewHolder;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Landroid/view/View;)V

    .line 45
    return-object p2

    .line 48
    :cond_2
    const p0, 0x7f0d024c    # @layout/mr_cast_header_item 'res/layout/mr_cast_header_item.xml'

    .line 49
    invoke-virtual {v2, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    move-result-object p0

    .line 55
    new-instance p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$HeaderViewHolder;

    .line 56
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    return-object p1

    .line 61
    :cond_3
    const p1, 0x7f0d024b    # @layout/mr_cast_group_volume_item 'res/layout/mr_cast_group_volume_item.xml'

    .line 62
    invoke-virtual {v2, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    move-result-object p1

    .line 68
    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;

    .line 69
    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$GroupVolumeViewHolder;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;Landroid/view/View;)V

    .line 71
    return-object p2
    .line 74
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 2
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 10
    return-void
    .line 13
.end method

.method public final updateItems()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    new-instance v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 7
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 9
    iget-object v3, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 11
    const/4 v4, 0x1

    .line 13
    invoke-direct {v1, v3, v4}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Ljava/lang/Object;I)V

    .line 14
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->mGroupVolumeItem:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 17
    iget-object v1, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMemberRoutes:Ljava/util/List;

    .line 19
    check-cast v1, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    move-result v1

    .line 26
    const/4 v3, 0x3

    .line 27
    if-nez v1, :cond_0

    .line 28
    iget-object v1, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMemberRoutes:Ljava/util/List;

    .line 30
    check-cast v1, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v1

    .line 37
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 47
    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 48
    new-instance v6, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 50
    invoke-direct {v6, v5, v3}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Ljava/lang/Object;I)V

    .line 52
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 59
    iget-object v5, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 61
    invoke-direct {v1, v5, v3}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Ljava/lang/Object;I)V

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    iget-object v1, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    .line 69
    check-cast v1, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    move-result v1

    .line 76
    const/4 v5, 0x2

    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x0

    .line 79
    if-nez v1, :cond_6

    .line 80
    iget-object v1, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mGroupableRoutes:Ljava/util/List;

    .line 82
    check-cast v1, Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v1

    .line 89
    move v8, v7

    .line 90
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v9

    .line 94
    if-eqz v9, :cond_6

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v9

    .line 100
    check-cast v9, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 101
    iget-object v10, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mMemberRoutes:Ljava/util/List;

    .line 103
    check-cast v10, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 107
    move-result v10

    .line 110
    if-nez v10, :cond_2

    .line 111
    if-nez v8, :cond_5

    .line 113
    iget-object v8, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 115
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupController()Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 120
    move-result-object v8

    .line 123
    if-eqz v8, :cond_3

    .line 124
    invoke-virtual {v8}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->getGroupableSelectionTitle()Ljava/lang/String;

    .line 126
    move-result-object v8

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    move-object v8, v6

    .line 131
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    move-result v10

    .line 135
    if-eqz v10, :cond_4

    .line 136
    iget-object v8, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 138
    const v10, 0x7f130816    # @string/mr_dialog_groupable_header 'Add a device'

    .line 140
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 143
    move-result-object v8

    .line 146
    :cond_4
    new-instance v10, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 147
    invoke-direct {v10, v8, v5}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Ljava/lang/Object;I)V

    .line 149
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    move v8, v4

    .line 155
    :cond_5
    new-instance v10, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 156
    invoke-direct {v10, v9, v3}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Ljava/lang/Object;I)V

    .line 158
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    goto :goto_1

    .line 164
    :cond_6
    iget-object v1, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTransferableRoutes:Ljava/util/List;

    .line 165
    check-cast v1, Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 169
    move-result v1

    .line 172
    if-nez v1, :cond_b

    .line 173
    iget-object v1, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mTransferableRoutes:Ljava/util/List;

    .line 175
    check-cast v1, Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object v1

    .line 182
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v3

    .line 186
    if-eqz v3, :cond_b

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v3

    .line 192
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 193
    iget-object v8, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 195
    if-eq v8, v3, :cond_7

    .line 197
    if-nez v7, :cond_a

    .line 199
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getDynamicGroupController()Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 204
    move-result-object v7

    .line 207
    if-eqz v7, :cond_8

    .line 208
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->getTransferableSectionTitle()Ljava/lang/String;

    .line 210
    move-result-object v7

    .line 213
    goto :goto_4

    .line 214
    :cond_8
    move-object v7, v6

    .line 215
    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    move-result v8

    .line 219
    if-eqz v8, :cond_9

    .line 220
    iget-object v7, v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mContext:Landroid/content/Context;

    .line 222
    const v8, 0x7f130817    # @string/mr_dialog_transferable_header 'Play on a group'

    .line 224
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 227
    move-result-object v7

    .line 230
    :cond_9
    new-instance v8, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 231
    invoke-direct {v8, v7, v5}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Ljava/lang/Object;I)V

    .line 233
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    move v7, v4

    .line 239
    :cond_a
    new-instance v8, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;

    .line 240
    const/4 v9, 0x4

    .line 242
    invoke-direct {v8, v3, v9}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter$Item;-><init>(Ljava/lang/Object;I)V

    .line 243
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    goto :goto_3

    .line 249
    :cond_b
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$RecyclerAdapter;->notifyAdapterDataSetChanged()V

    .line 250
    return-void
    .line 253
.end method

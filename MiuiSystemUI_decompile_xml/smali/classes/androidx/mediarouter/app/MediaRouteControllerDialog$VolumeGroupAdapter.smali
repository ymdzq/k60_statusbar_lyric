.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDisabledAlpha:F

.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5
    invoke-static {p2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getDisabledAlpha(Landroid/content/Context;)F

    .line 8
    move-result p1

    .line 11
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    const v0, 0x7f0a0654    # @id/mr_volume_item_icon

    .line 2
    const v1, 0x7f0a0a80    # @id/volume_item_container

    .line 5
    const/4 v2, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object p2

    .line 18
    const v3, 0x7f0d0252    # @layout/mr_controller_volume_item 'res/layout/mr_controller_volume_item.xml'

    .line 19
    invoke-virtual {p2, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v4

    .line 35
    check-cast v4, Landroid/widget/LinearLayout;

    .line 36
    iget v5, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    .line 38
    invoke-static {v5, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(ILandroid/view/View;)V

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    move-result-object v5

    .line 50
    iget v3, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupListItemIconSize:I

    .line 51
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 63
    check-cast p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 64
    if-eqz p1, :cond_6

    .line 66
    iget-boolean v3, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 68
    const v4, 0x7f0a0649    # @id/mr_name

    .line 70
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v4

    .line 76
    check-cast v4, Landroid/widget/TextView;

    .line 77
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 79
    iget-object v5, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    .line 82
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v4, 0x7f0a0655    # @id/mr_volume_slider

    .line 87
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v4

    .line 93
    check-cast v4, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 94
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 96
    move-result-object p3

    .line 99
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 100
    iget-object v5, v5, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    .line 102
    invoke-static {p3, v4, v5}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setVolumeSliderColor(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 104
    invoke-virtual {v4, p1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object p3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 110
    iget-object p3, p3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    .line 112
    check-cast p3, Ljava/util/HashMap;

    .line 114
    invoke-virtual {p3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    xor-int/lit8 p3, v3, 0x1

    .line 119
    invoke-virtual {v4, p3}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setHideThumb(Z)V

    .line 121
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 124
    const/4 p3, 0x1

    .line 127
    if-eqz v3, :cond_3

    .line 128
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 130
    iget-boolean v5, v5, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 132
    if-eqz v5, :cond_1

    .line 134
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    .line 136
    move-result v5

    .line 139
    if-ne v5, p3, :cond_1

    .line 140
    move v5, p3

    .line 142
    goto :goto_1

    .line 143
    :cond_1
    move v5, v2

    .line 144
    :goto_1
    if-eqz v5, :cond_2

    .line 145
    iget v5, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 147
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 149
    iget v5, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mVolume:I

    .line 152
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 154
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 157
    iget-object v5, v5, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    .line 159
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 161
    goto :goto_2

    .line 164
    :cond_2
    const/16 v5, 0x64

    .line 165
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 167
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 170
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 173
    :cond_3
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    move-result-object v0

    .line 179
    check-cast v0, Landroid/widget/ImageView;

    .line 180
    if-eqz v3, :cond_4

    .line 182
    const/16 v3, 0xff

    .line 184
    goto :goto_3

    .line 186
    :cond_4
    const/high16 v3, 0x437f0000    # 255.0f

    .line 187
    iget v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->mDisabledAlpha:F

    .line 189
    mul-float/2addr v4, v3

    .line 191
    float-to-int v3, v4

    .line 192
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 193
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    move-result-object v0

    .line 199
    check-cast v0, Landroid/widget/LinearLayout;

    .line 200
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 202
    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    .line 204
    check-cast v1, Ljava/util/HashSet;

    .line 206
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 208
    move-result v1

    .line 211
    if-eqz v1, :cond_5

    .line 212
    const/4 v2, 0x4

    .line 214
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 218
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 220
    if-eqz p0, :cond_6

    .line 222
    check-cast p0, Ljava/util/HashSet;

    .line 224
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 226
    move-result p0

    .line 229
    if-eqz p0, :cond_6

    .line 230
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    .line 232
    const/4 p1, 0x0

    .line 234
    invoke-direct {p0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 235
    const-wide/16 v0, 0x0

    .line 238
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 240
    invoke-virtual {p0, p3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 243
    invoke-virtual {p0, p3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 246
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 249
    invoke-virtual {p2, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    :cond_6
    return-object p2
    .line 255
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

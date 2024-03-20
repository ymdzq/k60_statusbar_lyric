.class public Landroidx/leanback/widget/MediaNowPlayingView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mImage1:Landroid/widget/ImageView;

.field public final mImage2:Landroid/widget/ImageView;

.field public final mImage3:Landroid/widget/ImageView;

.field public final mObjectAnimator1:Landroid/animation/ObjectAnimator;

.field public final mObjectAnimator2:Landroid/animation/ObjectAnimator;

.field public final mObjectAnimator3:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    .line 5
    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object p1

    .line 13
    const v0, 0x7f0d0151    # @layout/lb_playback_now_playing_bars 'res/layout/lb_playback_now_playing_bars.xml'

    .line 14
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    const p1, 0x7f0a0111    # @id/bar1

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/ImageView;

    .line 28
    iput-object p1, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f0a0112    # @id/bar2

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    iput-object v0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    .line 41
    const v1, 0x7f0a0113    # @id/bar3

    .line 43
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/ImageView;

    .line 50
    iput-object v1, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 54
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 58
    move-result v2

    .line 61
    int-to-float v2, v2

    .line 62
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 63
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 66
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 70
    move-result v2

    .line 73
    int-to-float v2, v2

    .line 74
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 75
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 82
    move-result v2

    .line 85
    int-to-float v2, v2

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 87
    const v2, 0x3daaaaab

    .line 90
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 99
    const/16 v2, 0x1e

    .line 102
    new-array v2, v2, [F

    .line 104
    fill-array-data v2, :array_0

    .line 106
    const-string/jumbo v3, "scaleY"

    .line 109
    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 112
    move-result-object p1

    .line 115
    iput-object p1, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    .line 116
    const/4 v2, -0x1

    .line 118
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 119
    const-wide/16 v4, 0x910

    .line 122
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    const/16 p1, 0x1b

    .line 130
    new-array p1, p1, [F

    .line 132
    fill-array-data p1, :array_1

    .line 134
    invoke-static {v0, v3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 137
    move-result-object p1

    .line 140
    iput-object p1, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    .line 141
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 143
    const-wide/16 v4, 0x820

    .line 146
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 148
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    const/16 p1, 0x1a

    .line 154
    new-array p1, p1, [F

    .line 156
    fill-array-data p1, :array_2

    .line 158
    invoke-static {v1, v3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 161
    move-result-object p1

    .line 164
    iput-object p1, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    .line 165
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 167
    const-wide/16 v0, 0x7d0

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 172
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    return-void

    .line 178
    nop

    .line 179
    :array_0
    .array-data 4
        0x3ed55555
        0x3e800000    # 0.25f
        0x3ed55555
        0x3f155555
        0x3f400000    # 0.75f
        0x3f555555
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f555555
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3e2aaaab
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f155555
        0x3f400000    # 0.75f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3ed55555
        0x3e800000    # 0.25f
        0x3ed55555
        0x3f2aaaab
        0x3ed55555
        0x3e800000    # 0.25f
        0x3eaaaaab
        0x3ed55555
    .end array-data

    .line 180
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f555555
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3f400000    # 0.75f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f555555
        0x3f2aaaab
        0x3f555555
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3ed55555
        0x3e800000    # 0.25f
        0x3ed55555
        0x3f2aaaab
        0x3f555555
        0x3f800000    # 1.0f
        0x3f555555
        0x3f400000    # 0.75f
        0x3f2aaaab
        0x3f800000    # 1.0f
    .end array-data

    .line 244
    :array_2
    .array-data 4
        0x3f2aaaab
        0x3f400000    # 0.75f
        0x3f555555
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3ed55555
        0x3f155555
        0x3f2aaaab
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f155555
        0x3f400000    # 0.75f
        0x3f6aaaab
        0x3f800000    # 1.0f
        0x3f555555
        0x3f2aaaab
        0x3f400000    # 0.75f
        0x3f155555
        0x3ed55555
        0x3e800000    # 0.25f
        0x3f2aaaab
    .end array-data
    .line 302
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroidx/leanback/widget/MediaNowPlayingView;->startAnimation()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/MediaNowPlayingView;->stopAnimation()V

    .line 5
    return-void
    .line 8
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    const/16 v0, 0x8

    .line 5
    if-ne p1, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/leanback/widget/MediaNowPlayingView;->stopAnimation()V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/MediaNowPlayingView;->startAnimation()V

    .line 13
    :goto_0
    return-void
    .line 16
.end method

.method public final startAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    .line 13
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    .line 24
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 26
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 32
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    .line 35
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object p0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    return-void
    .line 51
.end method

.method public final stopAnimation()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mObjectAnimator1:Landroid/animation/ObjectAnimator;

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 6
    move-result v2

    .line 9
    const v3, 0x3daaaaab

    .line 10
    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 15
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mObjectAnimator2:Landroid/animation/ObjectAnimator;

    .line 21
    iget-object v1, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 31
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mObjectAnimator3:Landroid/animation/ObjectAnimator;

    .line 37
    iget-object v1, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 41
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 47
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 50
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage1:Landroid/widget/ImageView;

    .line 53
    const/16 v1, 0x8

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage2:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object p0, p0, Landroidx/leanback/widget/MediaNowPlayingView;->mImage3:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    return-void
.end method

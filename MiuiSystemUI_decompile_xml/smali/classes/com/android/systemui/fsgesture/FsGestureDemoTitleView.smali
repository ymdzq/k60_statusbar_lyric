.class public Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mSkipView:Landroid/widget/TextView;

.field public mSummaryView:Landroid/widget/TextView;

.field public mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d00c6    # @layout/fs_gesture_title_view 'res/layout/fs_gesture_title_view.xml'

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a039d    # @id/fsgesture_ready_title

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    const p2, 0x7f0a039c    # @id/fsgesture_ready_summary

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    const p2, 0x7f0a039b    # @id/fsgesture_abort

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070393    # @dimen/gesture_title_view_elevation '18.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    return-void
.end method


# virtual methods
.method public final notifyFinish()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f080d64    # @drawable/fs_gesture_finish_bg 'res/drawable/fs_gesture_finish_bg.xml'

    .line 6
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    .line 17
    const/4 v1, 0x4

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationX()F

    .line 25
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    .line 29
    const/high16 v2, 0x420c0000    # 35.0f

    .line 31
    sub-float/2addr v0, v2

    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f1304a5    # @string/fs_gesture_finish 'Nice!'

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    .line 45
    const/16 v0, 0x8

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    return-void
    .line 52
.end method

.method public final prepareTitleView(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f080d5e    # @drawable/fs_gesture_back_bg 'res/drawable/fs_gesture_back_bg.xml'

    .line 6
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    const v0, 0x7f13052f    # @string/how_to_use_app_quick 'How to switch between apps'

    .line 17
    const v1, 0x7f13049f    # @string/fs_gesture_back_ready_title 'Go back'

    .line 20
    const/4 v2, 0x0

    .line 23
    packed-switch p1, :pswitch_data_0

    .line 24
    move p1, v2

    .line 27
    move v0, p1

    .line 28
    goto :goto_1

    .line 29
    :pswitch_0
    const p1, 0x7f130530    # @string/how_to_use_app_quick_hide_line_summary 'Swipe up from the bottom of the screen, then swipe left or right'

    .line 30
    goto :goto_1

    .line 33
    :pswitch_1
    const p1, 0x7f130531    # @string/how_to_use_app_quick_summary 'Swipe left or right from the full screen indicator or bottom of the screen'

    .line 34
    goto :goto_1

    .line 37
    :pswitch_2
    const v0, 0x7f130532    # @string/how_to_use_drawer 'How to open slide menu'

    .line 38
    const p1, 0x7f130533    # @string/how_to_use_drawer_summary 'Swipe right in the upper part of the screen'

    .line 41
    goto :goto_1

    .line 44
    :pswitch_3
    const v0, 0x7f13052e    # @string/how_to_switch_recents 'Open Recents'

    .line 45
    const p1, 0x7f1304a9    # @string/fs_gesture_switch_recents_summary 'Swipe from the bottom and pause'

    .line 48
    goto :goto_1

    .line 51
    :pswitch_4
    const v0, 0x7f13052d    # @string/how_to_back_home 'Go to Home screen'

    .line 52
    const p1, 0x7f13049e    # @string/fs_gesture_back_home_summary 'Swipe from the bottom quickly'

    .line 55
    goto :goto_1

    .line 58
    :pswitch_5
    const p1, 0x7f1304a7    # @string/fs_gesture_right_back_ready_summary 'Swipe left from the edge'

    .line 59
    goto :goto_0

    .line 62
    :pswitch_6
    const p1, 0x7f1304a6    # @string/fs_gesture_left_back_ready_summary 'Swipe right from the edge'

    .line 63
    :goto_0
    move v0, v1

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    .line 67
    if-eqz v1, :cond_0

    .line 69
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    .line 71
    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_0
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 90
.end method

.method public final setRTLParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12
    const/16 v1, 0x14

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16
    const/16 v1, 0xb

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v0

    .line 27
    const v1, 0x7f070385    # @dimen/fsgesture_skip_margin_right '11.0dp'

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v0

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 38
    const v2, 0x7f070386    # @dimen/fsgesture_skip_margin_top '11.0dp'

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result v1

    .line 45
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    .line 46
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49
    :cond_0
    return-void
    .line 52
.end method

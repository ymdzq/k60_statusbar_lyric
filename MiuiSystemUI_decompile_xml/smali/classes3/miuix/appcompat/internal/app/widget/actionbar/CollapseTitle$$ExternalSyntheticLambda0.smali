.class public final synthetic Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const v2, 0x7f08139c    # @drawable/miuix_appcompat_action_bar_subtitle_bg_land 'res/drawable/miuix_appcompat_action_bar_subtitle_bg_land.xml'

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    goto/16 :goto_0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v2

    .line 20
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 21
    const/4 v4, 0x1

    .line 23
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 24
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 27
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleStyle:I

    .line 29
    invoke-virtual {v3, v0, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 34
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 40
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 48
    const v3, 0x7f07008d    # @dimen/action_bar_subtitle_top_margin '0.0dp'

    .line 51
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 54
    move-result v3

    .line 57
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 58
    const v3, 0x7f07008c    # @dimen/action_bar_subtitle_bottom_margin '0.0dp'

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 63
    move-result v2

    .line 66
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 67
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 69
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 74
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iput-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 79
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    .line 81
    move-result v0

    .line 84
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 85
    if-eqz v2, :cond_0

    .line 87
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 89
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    :cond_0
    return-void

    .line 94
    :pswitch_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 95
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object v3

    .line 102
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 103
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 108
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mTitleStyle:I

    .line 110
    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 112
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 117
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 120
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 122
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    const v2, 0x7f0709ed    # @dimen/miuix_appcompat_action_bar_subtitle_start_margin '5.89dp'

    .line 128
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 131
    move-result v2

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 135
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 138
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 140
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 142
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 147
    return-void

    .line 149
    :pswitch_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 150
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 152
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 154
    return-void

    .line 157
    :pswitch_3
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 158
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseTitleLayout:Landroid/widget/LinearLayout;

    .line 160
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mContext:Landroid/content/Context;

    .line 162
    const v1, 0x101039c    # @android:attr/actionBarItemBackground

    .line 164
    invoke-static {v1, p0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 167
    move-result-object p0

    .line 170
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    return-void

    .line 174
    :goto_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 175
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->getSubtitleAdjustSize()F

    .line 177
    move-result v0

    .line 180
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mSubtitleSizeable:Z

    .line 181
    if-eqz v2, :cond_1

    .line 183
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->mCollapseSubtitleView:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 185
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 187
    :cond_1
    return-void

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 192
.end method

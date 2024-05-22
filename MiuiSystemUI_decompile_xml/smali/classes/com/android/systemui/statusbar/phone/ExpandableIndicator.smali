.class public Lcom/android/systemui/statusbar/phone/ExpandableIndicator;
.super Landroid/widget/ImageView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mExpanded:Z

.field public mIsDefaultDirection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    .line 7
    if-eqz v1, :cond_0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    if-eqz v0, :cond_2

    .line 14
    :cond_1
    const v0, 0x7f0811ec    # @drawable/ic_volume_expand_animation 'res/drawable/ic_volume_expand_animation.xml'

    .line 16
    goto :goto_1

    .line 19
    :cond_2
    :goto_0
    const v0, 0x7f0811eb    # @drawable/ic_volume_collapse_animation 'res/drawable/ic_volume_collapse_animation.xml'

    .line 20
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    .line 26
    if-eqz v0, :cond_3

    .line 28
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 30
    const v1, 0x7f1300d7    # @string/accessibility_quick_settings_collapse 'Close quick settings.'

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 40
    const v1, 0x7f1300dc    # @string/accessibility_quick_settings_expand 'Open quick settings.'

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    return-void
    .line 52
.end method

.method public setDefaultDirection(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    if-eqz v0, :cond_1

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    if-eqz v0, :cond_2

    .line 11
    :cond_1
    const p1, 0x7f0811ec    # @drawable/ic_volume_expand_animation 'res/drawable/ic_volume_expand_animation.xml'

    .line 13
    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    const p1, 0x7f0811eb    # @drawable/ic_volume_collapse_animation 'res/drawable/ic_volume_collapse_animation.xml'

    .line 17
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    return-void
    .line 23
.end method

.method public setExpanded(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    .line 7
    xor-int/lit8 v0, p1, 0x1

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    .line 11
    const v2, 0x7f0811ec    # @drawable/ic_volume_expand_animation 'res/drawable/ic_volume_expand_animation.xml'

    .line 13
    const v3, 0x7f0811eb    # @drawable/ic_volume_collapse_animation 'res/drawable/ic_volume_collapse_animation.xml'

    .line 16
    if-eqz v1, :cond_2

    .line 19
    if-eqz v0, :cond_3

    .line 21
    :cond_1
    move v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    if-eqz v0, :cond_1

    .line 25
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 48
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 51
    if-eqz p1, :cond_4

    .line 54
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 56
    const v0, 0x7f1300d7    # @string/accessibility_quick_settings_collapse 'Close quick settings.'

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 66
    const v0, 0x7f1300dc    # @string/accessibility_quick_settings_expand 'Open quick settings.'

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 74
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    return-void
    .line 78
.end method

.class public Lmiuix/preference/StretchableWidgetPreference;
.super Landroidx/preference/Preference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mButtonLine:Landroid/view/View;

.field public mContainer:Lmiuix/stretchablewidget/WidgetContainer;

.field public final mDetailMsgResId:Ljava/lang/String;

.field public mDetailMsgView:Landroid/widget/TextView;

.field public mHeight:I

.field public mIsExpand:Z

.field public mStateImage:Landroid/widget/ImageView;

.field public mTopLine:Landroid/view/View;

.field public mTopView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04071c    # @attr/stretchableWidgetPreferenceStyle

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/StretchableWidgetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    iput v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mHeight:I

    .line 4
    sget-object v1, Lmiuix/preference/R$styleable;->StretchableWidgetPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/StretchableWidgetPreference;->mDetailMsgResId:Ljava/lang/String;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/preference/StretchableWidgetPreference;->mIsExpand:Z

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    const v0, 0x7f0a09c4    # @id/top_view

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 14
    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopView:Landroid/widget/RelativeLayout;

    .line 16
    const v0, 0x1020018    # @android:id/widget_frame

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lmiuix/stretchablewidget/WidgetContainer;

    .line 25
    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 27
    const/4 v1, 0x0

    .line 29
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    move-result v2

    .line 33
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 34
    move-result v3

    .line 37
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 38
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 41
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 43
    move-result v0

    .line 46
    iput v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mHeight:I

    .line 47
    const v0, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0a02b3    # @id/detail_msg_text

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mDetailMsgView:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0a08d5    # @id/state_image

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/ImageView;

    .line 76
    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mStateImage:Landroid/widget/ImageView;

    .line 78
    const v2, 0x7f081649    # @drawable/miuix_stretchable_widget_state_collapse 'res/drawable/miuix_stretchable_widget_state_collapse.xml'

    .line 80
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    const v0, 0x7f0a01ad    # @id/button_line

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 92
    iput-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mButtonLine:Landroid/view/View;

    .line 93
    const v0, 0x7f0a09be    # @id/top_line

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object p1

    .line 101
    iput-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopLine:Landroid/view/View;

    .line 102
    iget-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mDetailMsgResId:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mDetailMsgView:Landroid/widget/TextView;

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-boolean p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mIsExpand:Z

    .line 111
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mStateImage:Landroid/widget/ImageView;

    .line 115
    const v2, 0x7f08164a    # @drawable/miuix_stretchable_widget_state_expand 'res/drawable/miuix_stretchable_widget_state_expand.xml'

    .line 117
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 120
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mButtonLine:Landroid/view/View;

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopLine:Landroid/view/View;

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mStateImage:Landroid/widget/ImageView;

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 136
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mButtonLine:Landroid/view/View;

    .line 139
    const/16 v2, 0x8

    .line 141
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopLine:Landroid/view/View;

    .line 146
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :goto_0
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 151
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 156
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 157
    move-result-object v0

    .line 160
    const-string v2, "start"

    .line 161
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 163
    move-result-object v0

    .line 166
    iget v3, p0, Lmiuix/preference/StretchableWidgetPreference;->mHeight:I

    .line 167
    const-string v4, "widgetHeight"

    .line 169
    invoke-interface {v0, v4, v3}, Lmiuix/animation/IStateStyle;->add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;

    .line 171
    move-result-object v0

    .line 174
    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 175
    const/high16 v5, 0x3f800000    # 1.0f

    .line 177
    invoke-interface {v0, v3, v5}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 179
    move-result-object v0

    .line 182
    const-string v5, "end"

    .line 183
    invoke-interface {v0, v5}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 185
    move-result-object v0

    .line 188
    invoke-interface {v0, v4, v1}, Lmiuix/animation/IStateStyle;->add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;

    .line 189
    move-result-object v0

    .line 192
    const/4 v1, 0x0

    .line 193
    invoke-interface {v0, v3, v1}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 194
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference;->mContainer:Lmiuix/stretchablewidget/WidgetContainer;

    .line 197
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 199
    move-result-object v0

    .line 202
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 203
    move-result-object v0

    .line 206
    if-eqz p1, :cond_1

    .line 207
    goto :goto_1

    .line 209
    :cond_1
    move-object v2, v5

    .line 210
    :goto_1
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 211
    iget-object p1, p0, Lmiuix/preference/StretchableWidgetPreference;->mTopView:Landroid/widget/RelativeLayout;

    .line 214
    new-instance v0, Lmiuix/preference/StretchableWidgetPreference$1;

    .line 216
    invoke-direct {v0, p0}, Lmiuix/preference/StretchableWidgetPreference$1;-><init>(Lmiuix/preference/StretchableWidgetPreference;)V

    .line 218
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
    .line 224
.end method

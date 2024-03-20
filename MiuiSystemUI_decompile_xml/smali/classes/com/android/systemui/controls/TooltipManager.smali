.class public final Lcom/android/systemui/controls/TooltipManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final arrowView:Landroid/view/View;

.field public final below:Z

.field public final dismissView:Landroid/view/View;

.field public final layout:Landroid/view/ViewGroup;

.field public final maxTimesShown:I

.field public final preferenceStorer:Lkotlin/jvm/functions/Function1;

.field public shown:I

.field public final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/android/systemui/controls/TooltipManager;->maxTimesShown:I

    .line 6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/controls/TooltipManager;->below:Z

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    move-result-object v1

    .line 19
    const-string v3, "ControlsStructureSwipeTooltipCount"

    .line 20
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 22
    move-result v1

    .line 25
    iput v1, p0, Lcom/android/systemui/controls/TooltipManager;->shown:I

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    move-result-object v1

    .line 31
    const v2, 0x7f0d0084    # @layout/controls_onboarding 'res/layout/controls_onboarding.xml'

    .line 32
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Landroid/view/ViewGroup;

    .line 40
    iput-object v1, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    .line 42
    new-instance v2, Lcom/android/systemui/controls/TooltipManager$preferenceStorer$1;

    .line 44
    invoke-direct {v2, p1, p0}, Lcom/android/systemui/controls/TooltipManager$preferenceStorer$1;-><init>(Landroid/content/Context;Lcom/android/systemui/controls/TooltipManager;)V

    .line 46
    iput-object v2, p0, Lcom/android/systemui/controls/TooltipManager;->preferenceStorer:Lkotlin/jvm/functions/Function1;

    .line 49
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 52
    const v3, 0x7f0a06c4    # @id/onboarding_text

    .line 55
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 58
    move-result-object v3

    .line 61
    check-cast v3, Landroid/widget/TextView;

    .line 62
    iput-object v3, p0, Lcom/android/systemui/controls/TooltipManager;->textView:Landroid/widget/TextView;

    .line 64
    const v3, 0x7f0a02da    # @id/dismiss

    .line 66
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 69
    move-result-object v3

    .line 72
    new-instance v4, Lcom/android/systemui/controls/TooltipManager$dismissView$1$1;

    .line 73
    invoke-direct {v4, p0}, Lcom/android/systemui/controls/TooltipManager$dismissView$1$1;-><init>(Lcom/android/systemui/controls/TooltipManager;)V

    .line 75
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v3, p0, Lcom/android/systemui/controls/TooltipManager;->dismissView:Landroid/view/View;

    .line 81
    const v3, 0x7f0a00e0    # @id/arrow

    .line 83
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 86
    move-result-object v1

    .line 89
    new-instance v3, Landroid/util/TypedValue;

    .line 90
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 95
    move-result-object v4

    .line 98
    const v5, 0x1010435    # @android:attr/colorAccent

    .line 99
    invoke-virtual {v4, v5, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    move-result-object v0

    .line 108
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 111
    move-result-object v4

    .line 114
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 115
    move-result v0

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    move-result-object p1

    .line 122
    const v3, 0x7f07101a    # @dimen/recents_onboarding_toast_arrow_corner_radius '2.0dp'

    .line 123
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 126
    move-result p1

    .line 129
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    move-result-object v3

    .line 133
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    .line 134
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    int-to-float v5, v5

    .line 138
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    int-to-float v3, v3

    .line 141
    sget v6, Lcom/android/systemui/recents/TriangleShape;->$r8$clinit:I

    .line 142
    new-instance v6, Landroid/graphics/Path;

    .line 144
    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 146
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 149
    invoke-virtual {v6, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 152
    const/high16 v7, 0x40000000    # 2.0f

    .line 155
    div-float v7, v5, v7

    .line 157
    invoke-virtual {v6, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 159
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 162
    new-instance v2, Lcom/android/systemui/recents/TriangleShape;

    .line 165
    invoke-direct {v2, v6, v5, v3}, Lcom/android/systemui/recents/TriangleShape;-><init>(Landroid/graphics/Path;FF)V

    .line 167
    invoke-direct {v4, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 170
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 173
    move-result-object v2

    .line 176
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    new-instance v0, Landroid/graphics/CornerPathEffect;

    .line 180
    int-to-float p1, p1

    .line 182
    invoke-direct {v0, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 183
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 186
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iput-object v1, p0, Lcom/android/systemui/controls/TooltipManager;->arrowView:Landroid/view/View;

    .line 192
    return-void
    .line 194
.end method


# virtual methods
.method public final hide(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    cmpg-float v1, v1, v2

    .line 9
    if-nez v1, :cond_0

    .line 11
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-eqz v1, :cond_1

    .line 16
    return-void

    .line 18
    :cond_1
    new-instance v1, Lcom/android/systemui/controls/TooltipManager$hide$1;

    .line 19
    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/TooltipManager$hide$1;-><init>(ZLcom/android/systemui/controls/TooltipManager;)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 24
    return-void
    .line 27
.end method

.method public final show(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/controls/TooltipManager;->shown:I

    .line 2
    iget v1, p0, Lcom/android/systemui/controls/TooltipManager;->maxTimesShown:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/TooltipManager;->textView:Landroid/widget/TextView;

    .line 15
    const v1, 0x7f130332    # @string/controls_structure_tooltip 'Swipe to see more'

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 20
    iget v0, p0, Lcom/android/systemui/controls/TooltipManager;->shown:I

    .line 23
    add-int/2addr v0, v2

    .line 25
    iput v0, p0, Lcom/android/systemui/controls/TooltipManager;->shown:I

    .line 26
    iget-object v1, p0, Lcom/android/systemui/controls/TooltipManager;->preferenceStorer:Lkotlin/jvm/functions/Function1;

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v0

    .line 33
    check-cast v1, Lcom/android/systemui/controls/TooltipManager$preferenceStorer$1;

    .line 34
    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/TooltipManager$preferenceStorer$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/android/systemui/controls/TooltipManager$show$1;

    .line 39
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/TooltipManager$show$1;-><init>(Lcom/android/systemui/controls/TooltipManager;II)V

    .line 41
    iget-object p0, p0, Lcom/android/systemui/controls/TooltipManager;->layout:Landroid/view/ViewGroup;

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
    .line 49
.end method

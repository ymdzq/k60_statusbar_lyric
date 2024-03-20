.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final selectionListener:Lcom/google/android/material/timepicker/TimePickerView$1;

.field public final toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView$1;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->selectionListener:Lcom/google/android/material/timepicker/TimePickerView$1;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0178    # @layout/material_timepicker 'res/layout/material_timepicker.xml'

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a055c    # @id/material_clock_face

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    const p1, 0x7f0a0560    # @id/material_clock_period_toggle

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 8
    new-instance p3, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    .line 9
    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    .line 10
    invoke-virtual {p1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a0565    # @id/material_minute_tv

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    const p3, 0x7f0a0562    # @id/material_hour_tv

    .line 12
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/chip/Chip;

    const v0, 0x7f0a055d    # @id/material_clock_hand

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/ClockHandView;

    .line 14
    new-instance v0, Landroid/view/GestureDetector;

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/timepicker/TimePickerView$2;

    invoke-direct {v2, p0}, Lcom/google/android/material/timepicker/TimePickerView$2;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 16
    new-instance p0, Lcom/google/android/material/timepicker/TimePickerView$3;

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView$3;-><init>(Landroid/view/GestureDetector;)V

    .line 17
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 18
    invoke-virtual {p3, p0}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 p0, 0xc

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const v0, 0x7f0a0858    # @id/selection_type

    invoke-virtual {p1, v0, p0}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    const/16 p0, 0xa

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p0, "android.view.View"

    .line 23
    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p3, p0}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->updateToggleConstraints()V

    .line 5
    return-void
    .line 8
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    if-ne p1, p0, :cond_0

    .line 5
    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->updateToggleConstraints()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final updateToggleConstraints()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 10
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 12
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 15
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 18
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 20
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v1, :cond_0

    .line 26
    move v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v3

    .line 30
    :goto_0
    if-eqz v1, :cond_1

    .line 31
    const/4 v2, 0x2

    .line 33
    :cond_1
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 34
    const v4, 0x7f0a055b    # @id/material_clock_display

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v5

    .line 42
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 43
    move-result v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v4

    .line 52
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 56
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 57
    if-nez v1, :cond_2

    .line 59
    goto :goto_1

    .line 61
    :cond_2
    const/high16 v4, -0x80000000

    .line 62
    const/4 v5, -0x1

    .line 64
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 65
    packed-switch v2, :pswitch_data_0

    .line 67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    const-string/jumbo v0, "unknown constraint"

    .line 72
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0

    .line 78
    :pswitch_0
    const/high16 v2, -0x40800000    # -1.0f

    .line 79
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 81
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 83
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 85
    goto :goto_1

    .line 87
    :pswitch_1
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 88
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 90
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 92
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 94
    goto :goto_1

    .line 96
    :pswitch_2
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 97
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 99
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 101
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 103
    goto :goto_1

    .line 105
    :pswitch_3
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 106
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 108
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 110
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 112
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 114
    goto :goto_1

    .line 116
    :pswitch_4
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 117
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 119
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 121
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 123
    goto :goto_1

    .line 125
    :pswitch_5
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 126
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 128
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 130
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 132
    goto :goto_1

    .line 134
    :pswitch_6
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 135
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 137
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 139
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 141
    goto :goto_1

    .line 143
    :pswitch_7
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 144
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 146
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 148
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 150
    :cond_3
    :goto_1
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 152
    :cond_4
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 156
.end method

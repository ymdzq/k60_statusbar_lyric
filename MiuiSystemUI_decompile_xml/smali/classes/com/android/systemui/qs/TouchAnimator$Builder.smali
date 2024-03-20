.class public final Lcom/android/systemui/qs/TouchAnimator$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mEndDelay:F

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field public mStartDelay:F

.field public final mTargets:Ljava/util/List;

.field public final mValues:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mTargets:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mValues:Ljava/util/List;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final varargs addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 2
    instance-of v1, p1, Landroid/view/View;

    .line 4
    if-eqz v1, :cond_9

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    sparse-switch v1, :sswitch_data_0

    .line 13
    goto/16 :goto_0

    .line 16
    :sswitch_0
    const-string v1, "alpha"

    .line 18
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    goto/16 :goto_0

    .line 26
    :cond_0
    const/16 v2, 0x8

    .line 28
    goto/16 :goto_0

    .line 30
    :sswitch_1
    const-string/jumbo v1, "y"

    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x7

    .line 42
    goto :goto_0

    .line 43
    :sswitch_2
    const-string/jumbo v1, "x"

    .line 44
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    const/4 v2, 0x6

    .line 54
    goto :goto_0

    .line 55
    :sswitch_3
    const-string/jumbo v1, "rotation"

    .line 56
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    goto :goto_0

    .line 65
    :cond_3
    const/4 v2, 0x5

    .line 66
    goto :goto_0

    .line 67
    :sswitch_4
    const-string/jumbo v1, "scaleY"

    .line 68
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v1

    .line 74
    if-nez v1, :cond_4

    .line 75
    goto :goto_0

    .line 77
    :cond_4
    const/4 v2, 0x4

    .line 78
    goto :goto_0

    .line 79
    :sswitch_5
    const-string/jumbo v1, "scaleX"

    .line 80
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 86
    if-nez v1, :cond_5

    .line 87
    goto :goto_0

    .line 89
    :cond_5
    const/4 v2, 0x3

    .line 90
    goto :goto_0

    .line 91
    :sswitch_6
    const-string/jumbo v1, "translationZ"

    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 98
    if-nez v1, :cond_6

    .line 99
    goto :goto_0

    .line 101
    :cond_6
    const/4 v2, 0x2

    .line 102
    goto :goto_0

    .line 103
    :sswitch_7
    const-string/jumbo v1, "translationY"

    .line 104
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    goto :goto_0

    .line 113
    :cond_7
    const/4 v2, 0x1

    .line 114
    goto :goto_0

    .line 115
    :sswitch_8
    const-string/jumbo v1, "translationX"

    .line 116
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v1

    .line 122
    if-nez v1, :cond_8

    .line 123
    goto :goto_0

    .line 125
    :cond_8
    const/4 v2, 0x0

    .line 126
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 127
    goto :goto_1

    .line 130
    :pswitch_0
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 131
    goto :goto_2

    .line 133
    :pswitch_1
    sget-object p2, Landroid/view/View;->Y:Landroid/util/Property;

    .line 134
    goto :goto_2

    .line 136
    :pswitch_2
    sget-object p2, Landroid/view/View;->X:Landroid/util/Property;

    .line 137
    goto :goto_2

    .line 139
    :pswitch_3
    sget-object p2, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 140
    goto :goto_2

    .line 142
    :pswitch_4
    sget-object p2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 143
    goto :goto_2

    .line 145
    :pswitch_5
    sget-object p2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 146
    goto :goto_2

    .line 148
    :pswitch_6
    sget-object p2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 149
    goto :goto_2

    .line 151
    :pswitch_7
    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 152
    goto :goto_2

    .line 154
    :pswitch_8
    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 155
    goto :goto_2

    .line 157
    :cond_9
    :goto_1
    instance-of v1, p1, Lcom/android/systemui/qs/TouchAnimator;

    .line 158
    if-eqz v1, :cond_a

    .line 160
    const-string v1, "position"

    .line 162
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    move-result v1

    .line 167
    if-eqz v1, :cond_a

    .line 168
    sget-object p2, Lcom/android/systemui/qs/TouchAnimator;->POSITION:Lcom/android/systemui/qs/TouchAnimator$1;

    .line 170
    goto :goto_2

    .line 172
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    move-result-object v1

    .line 176
    invoke-static {v1, v0, p2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    .line 177
    move-result-object p2

    .line 180
    :goto_2
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;

    .line 181
    invoke-direct {v0, p2, p3}, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;-><init>(Landroid/util/Property;[F)V

    .line 183
    iget-object p2, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mTargets:Ljava/util/List;

    .line 186
    check-cast p2, Ljava/util/ArrayList;

    .line 188
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object p0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mValues:Ljava/util/List;

    .line 193
    check-cast p0, Ljava/util/ArrayList;

    .line 195
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    return-void

    .line 200
    nop

    .line 201
    :sswitch_data_0
    .sparse-switch
        -0x490b9c39 -> :sswitch_8
        -0x490b9c38 -> :sswitch_7
        -0x490b9c37 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        0x78 -> :sswitch_2
        0x79 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 240
.end method

.method public final build()Lcom/android/systemui/qs/TouchAnimator;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/systemui/qs/TouchAnimator;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mTargets:Ljava/util/List;

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mValues:Ljava/util/List;

    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v2

    .line 25
    new-array v2, v2, [Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    move-object v2, v0

    .line 32
    check-cast v2, [Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;

    .line 33
    iget v3, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 35
    iget v4, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    .line 37
    iget-object v5, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 39
    iget-object v6, p0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 41
    move-object v0, v7

    .line 43
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/TouchAnimator;-><init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;)V

    .line 44
    return-object v7
    .line 47
.end method

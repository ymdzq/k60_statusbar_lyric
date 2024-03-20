.class public final Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;
.super Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final extending:Z

.field public final size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

.field public final synthetic this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/AnimatorTracker;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/AnimatorTracker;)V

    .line 4
    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 7
    iput-boolean p4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final createAnimator()Landroid/animation/AnimatorSet;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->motionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->defaultMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->context:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->getDefaultMotionSpecResource()I

    .line 13
    move-result v1

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(ILandroid/content/Context;)Lcom/google/android/material/animation/MotionSpec;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->defaultMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->defaultMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    :goto_0
    const-string/jumbo v1, "width"

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 31
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 35
    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 37
    const/4 v5, 0x1

    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x0

    .line 41
    if-eqz v2, :cond_2

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 44
    move-result-object v2

    .line 47
    aget-object v8, v2, v7

    .line 48
    new-array v9, v6, [F

    .line 50
    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    .line 52
    move-result v10

    .line 55
    int-to-float v10, v10

    .line 56
    aput v10, v9, v7

    .line 57
    move-object v10, v3

    .line 59
    check-cast v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    .line 60
    invoke-virtual {v10}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->getWidth()I

    .line 62
    move-result v10

    .line 65
    int-to-float v10, v10

    .line 66
    aput v10, v9, v5

    .line 67
    invoke-virtual {v8, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 72
    :cond_2
    const-string v1, "height"

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 77
    move-result v2

    .line 80
    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 83
    move-result-object v2

    .line 86
    aget-object v8, v2, v7

    .line 87
    new-array v9, v6, [F

    .line 89
    invoke-virtual {v4}, Landroid/widget/Button;->getHeight()I

    .line 91
    move-result v10

    .line 94
    int-to-float v10, v10

    .line 95
    aput v10, v9, v7

    .line 96
    move-object v10, v3

    .line 98
    check-cast v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    .line 99
    iget v11, v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->$r8$classId:I

    .line 101
    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 103
    packed-switch v11, :pswitch_data_0

    .line 105
    goto :goto_1

    .line 108
    :pswitch_0
    invoke-virtual {v10}, Landroid/widget/Button;->getMeasuredHeight()I

    .line 109
    move-result v10

    .line 112
    goto :goto_2

    .line 113
    :goto_1
    invoke-virtual {v10}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    .line 114
    move-result v10

    .line 117
    :goto_2
    int-to-float v10, v10

    .line 118
    aput v10, v9, v5

    .line 119
    invoke-virtual {v8, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 124
    :cond_3
    const-string v1, "paddingStart"

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 129
    move-result v2

    .line 132
    if-eqz v2, :cond_4

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 135
    move-result-object v2

    .line 138
    aget-object v8, v2, v7

    .line 139
    new-array v9, v6, [F

    .line 141
    sget-object v10, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 143
    invoke-static {v4}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    .line 145
    move-result v10

    .line 148
    int-to-float v10, v10

    .line 149
    aput v10, v9, v7

    .line 150
    move-object v10, v3

    .line 152
    check-cast v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    .line 153
    iget v11, v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->$r8$classId:I

    .line 155
    iget-object v10, v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 157
    packed-switch v11, :pswitch_data_1

    .line 159
    goto :goto_3

    .line 162
    :pswitch_1
    iget v10, v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I

    .line 163
    goto :goto_4

    .line 165
    :goto_3
    invoke-virtual {v10}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    .line 166
    move-result v10

    .line 169
    :goto_4
    int-to-float v10, v10

    .line 170
    aput v10, v9, v5

    .line 171
    invoke-virtual {v8, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 176
    :cond_4
    const-string v1, "paddingEnd"

    .line 179
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 181
    move-result v2

    .line 184
    if-eqz v2, :cond_5

    .line 185
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 187
    move-result-object v2

    .line 190
    aget-object v8, v2, v7

    .line 191
    new-array v9, v6, [F

    .line 193
    sget-object v10, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 195
    invoke-static {v4}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    .line 197
    move-result v4

    .line 200
    int-to-float v4, v4

    .line 201
    aput v4, v9, v7

    .line 202
    check-cast v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    .line 204
    iget v4, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->$r8$classId:I

    .line 206
    iget-object v3, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 208
    packed-switch v4, :pswitch_data_2

    .line 210
    goto :goto_5

    .line 213
    :pswitch_2
    iget v3, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingEnd:I

    .line 214
    goto :goto_6

    .line 216
    :goto_5
    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    .line 217
    move-result v3

    .line 220
    :goto_6
    int-to-float v3, v3

    .line 221
    aput v3, v9, v5

    .line 222
    invoke-virtual {v8, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 224
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 227
    :cond_5
    const-string v1, "labelOpacity"

    .line 230
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 232
    move-result v2

    .line 235
    if-eqz v2, :cond_8

    .line 236
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 238
    move-result-object v2

    .line 241
    const/4 v3, 0x0

    .line 242
    const/high16 v4, 0x3f800000    # 1.0f

    .line 243
    iget-boolean v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 245
    if-eqz v8, :cond_6

    .line 247
    move v9, v3

    .line 249
    goto :goto_7

    .line 250
    :cond_6
    move v9, v4

    .line 251
    :goto_7
    if-eqz v8, :cond_7

    .line 252
    move v3, v4

    .line 254
    :cond_7
    aget-object v4, v2, v7

    .line 255
    new-array v6, v6, [F

    .line 257
    aput v9, v6, v7

    .line 259
    aput v3, v6, v5

    .line 261
    invoke-virtual {v4, v6}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 266
    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;

    .line 269
    move-result-object p0

    .line 272
    return-object p0

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 274
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 280
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
    .line 286
.end method

.method public final getDefaultMotionSpecResource()I
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const p0, 0x7f02002f    # @animator/mtrl_extended_fab_change_size_expand_motion_spec 'res/animator/mtrl_extended_fab_change_size_expand_motion_spec.xml'

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const p0, 0x7f02002e    # @animator/mtrl_extended_fab_change_size_collapse_motion_spec 'res/animator/mtrl_extended_fab_change_size_collapse_motion_spec.xml'

    .line 10
    :goto_0
    return p0
    .line 13
.end method

.method public final onAnimationEnd()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->tracker:Lcom/google/android/material/floatingactionbutton/AnimatorTracker;

    .line 3
    iput-object v0, v1, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Landroid/animation/Animator;

    .line 5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 7
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isTransforming:Z

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHorizontallyScrolling(Z)V

    .line 12
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    return-void

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 22
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v1

    .line 29
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object p0

    .line 37
    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    return-void
    .line 42
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->tracker:Lcom/google/android/material/floatingactionbutton/AnimatorTracker;

    .line 2
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Landroid/animation/Animator;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_0
    iput-object p1, v0, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Landroid/animation/Animator;

    .line 11
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 13
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 15
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 17
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isTransforming:Z

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setHorizontallyScrolling(Z)V

    .line 22
    return-void
    .line 25
.end method

.method public final onChange()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final performNow()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 2
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    iput-boolean v0, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 6
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 15
    check-cast p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object v2

    .line 22
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    move-result-object v2

    .line 30
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->$r8$classId:I

    .line 35
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 37
    packed-switch v0, :pswitch_data_0

    .line 39
    goto :goto_0

    .line 42
    :pswitch_0
    iget v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingStart:I

    .line 43
    goto :goto_1

    .line 45
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    .line 46
    move-result v0

    .line 49
    :goto_1
    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingTop()I

    .line 50
    move-result v2

    .line 53
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->$r8$classId:I

    .line 54
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 56
    packed-switch v3, :pswitch_data_1

    .line 58
    goto :goto_2

    .line 61
    :pswitch_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendedPaddingEnd:I

    .line 62
    goto :goto_3

    .line 64
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    .line 65
    move-result p0

    .line 68
    :goto_3
    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingBottom()I

    .line 69
    move-result v3

    .line 72
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 73
    invoke-static {v1, v0, v2, p0, v3}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 75
    invoke-virtual {v1}, Landroid/widget/Button;->requestLayout()V

    .line 78
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 82
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
    .line 88
.end method

.method public final shouldCancel()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 4
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 6
    if-eq p0, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    .line 16
    move-result-object p0

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
    .line 30
.end method

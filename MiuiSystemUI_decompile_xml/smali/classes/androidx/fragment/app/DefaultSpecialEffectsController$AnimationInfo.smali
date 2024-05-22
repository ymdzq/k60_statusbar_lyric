.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
.super Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public animation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

.field public isAnimLoaded:Z

.field public final isPop:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    .line 2
    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isPop:Z

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isAnimLoaded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->animation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 6
    goto/16 :goto_8

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 10
    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->fragment:Landroidx/fragment/app/Fragment;

    .line 12
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 14
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 16
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    move v0, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v3

    .line 24
    :goto_0
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 25
    if-nez v2, :cond_2

    .line 27
    move v5, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget v5, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 31
    :goto_1
    iget-boolean v6, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isPop:Z

    .line 33
    if-eqz v6, :cond_6

    .line 35
    if-eqz v0, :cond_4

    .line 37
    if-nez v2, :cond_3

    .line 39
    :goto_2
    move v2, v3

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 43
    goto :goto_3

    .line 45
    :cond_4
    if-nez v2, :cond_5

    .line 46
    goto :goto_2

    .line 48
    :cond_5
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 49
    goto :goto_3

    .line 51
    :cond_6
    if-eqz v0, :cond_8

    .line 52
    if-nez v2, :cond_7

    .line 54
    goto :goto_2

    .line 56
    :cond_7
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 57
    goto :goto_3

    .line 59
    :cond_8
    if-nez v2, :cond_9

    .line 60
    goto :goto_2

    .line 62
    :cond_9
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 63
    :goto_3
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 65
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 68
    const/4 v7, 0x0

    .line 70
    if-eqz v6, :cond_a

    .line 71
    const v8, 0x7f0a0a70    # @id/visible_removing_fragment_view_tag

    .line 73
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 76
    move-result-object v6

    .line 79
    if-eqz v6, :cond_a

    .line 80
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 82
    invoke-virtual {v6, v8, v7}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 84
    :cond_a
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 87
    if-eqz v1, :cond_b

    .line 89
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 91
    move-result-object v1

    .line 94
    if-eqz v1, :cond_b

    .line 95
    goto/16 :goto_6

    .line 97
    :cond_b
    if-nez v2, :cond_16

    .line 99
    if-eqz v5, :cond_16

    .line 101
    const/16 v1, 0x1001

    .line 103
    if-eq v5, v1, :cond_14

    .line 105
    const/16 v1, 0x2002

    .line 107
    if-eq v5, v1, :cond_12

    .line 109
    const/16 v1, 0x2005

    .line 111
    if-eq v5, v1, :cond_10

    .line 113
    const/16 v1, 0x1003

    .line 115
    if-eq v5, v1, :cond_e

    .line 117
    const/16 v1, 0x1004

    .line 119
    if-eq v5, v1, :cond_c

    .line 121
    const/4 v0, -0x1

    .line 123
    goto :goto_4

    .line 124
    :cond_c
    if-eqz v0, :cond_d

    .line 125
    const v0, 0x10100b8    # @android:attr/activityOpenEnterAnimation

    .line 127
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    .line 130
    move-result v0

    .line 133
    goto :goto_4

    .line 134
    :cond_d
    const v0, 0x10100b9    # @android:attr/activityOpenExitAnimation

    .line 135
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    .line 138
    move-result v0

    .line 141
    goto :goto_4

    .line 142
    :cond_e
    if-eqz v0, :cond_f

    .line 143
    const v0, 0x7f020006    # @animator/fragment_fade_enter 'res/animator/fragment_fade_enter.xml'

    .line 145
    goto :goto_4

    .line 148
    :cond_f
    const v0, 0x7f020007    # @animator/fragment_fade_exit 'res/animator/fragment_fade_exit.xml'

    .line 149
    goto :goto_4

    .line 152
    :cond_10
    if-eqz v0, :cond_11

    .line 153
    const v0, 0x10100ba    # @android:attr/activityCloseEnterAnimation

    .line 155
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    .line 158
    move-result v0

    .line 161
    goto :goto_4

    .line 162
    :cond_11
    const v0, 0x10100bb    # @android:attr/activityCloseExitAnimation

    .line 163
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(ILandroid/content/Context;)I

    .line 166
    move-result v0

    .line 169
    goto :goto_4

    .line 170
    :cond_12
    if-eqz v0, :cond_13

    .line 171
    const v0, 0x7f020004    # @animator/fragment_close_enter 'res/animator/fragment_close_enter.xml'

    .line 173
    goto :goto_4

    .line 176
    :cond_13
    const v0, 0x7f020005    # @animator/fragment_close_exit 'res/animator/fragment_close_exit.xml'

    .line 177
    goto :goto_4

    .line 180
    :cond_14
    if-eqz v0, :cond_15

    .line 181
    const v0, 0x7f020008    # @animator/fragment_open_enter 'res/animator/fragment_open_enter.xml'

    .line 183
    goto :goto_4

    .line 186
    :cond_15
    const v0, 0x7f020009    # @animator/fragment_open_exit 'res/animator/fragment_open_exit.xml'

    .line 187
    :goto_4
    move v2, v0

    .line 190
    :cond_16
    if-eqz v2, :cond_1a

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    move-result-object v0

    .line 196
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 200
    const-string v1, "anim"

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v0

    .line 206
    if-eqz v0, :cond_18

    .line 207
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 209
    move-result-object v1

    .line 212
    if-eqz v1, :cond_17

    .line 213
    new-instance v5, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 215
    invoke-direct {v5, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    move-object v0, v5

    .line 220
    goto :goto_7

    .line 221
    :cond_17
    move v3, v4

    .line 222
    goto :goto_5

    .line 223
    :catch_0
    move-exception p0

    .line 224
    throw p0

    .line 225
    :catch_1
    :cond_18
    :goto_5
    if-nez v3, :cond_1a

    .line 226
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 228
    move-result-object v1

    .line 231
    if-eqz v1, :cond_1a

    .line 232
    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 234
    invoke-direct {v3, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 236
    move-object v0, v3

    .line 239
    goto :goto_7

    .line 240
    :catch_2
    move-exception v1

    .line 241
    if-nez v0, :cond_19

    .line 242
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 244
    move-result-object p1

    .line 247
    if-eqz p1, :cond_1a

    .line 248
    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 250
    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    .line 252
    goto :goto_7

    .line 255
    :cond_19
    throw v1

    .line 256
    :cond_1a
    :goto_6
    move-object v0, v7

    .line 257
    :goto_7
    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->animation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 258
    iput-boolean v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isAnimLoaded:Z

    .line 260
    move-object p0, v0

    .line 262
    :goto_8
    return-object p0
    .line 263
.end method

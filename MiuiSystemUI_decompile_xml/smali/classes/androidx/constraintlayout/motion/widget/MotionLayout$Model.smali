.class public final Landroidx/constraintlayout/motion/widget/MotionLayout$Model;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

.field public mEndId:I

.field public mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field public mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field public mStart:Landroidx/constraintlayout/widget/ConstraintSet;

.field public mStartId:I

.field public final synthetic this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 7
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 12
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 14
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 19
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 22
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 24
    return-void
    .line 26
.end method

.method public static copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    .line 4
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    invoke-virtual {p1, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_6

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 34
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 36
    if-eqz v3, :cond_0

    .line 38
    new-instance v3, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 40
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Barrier;-><init>()V

    .line 42
    goto :goto_1

    .line 45
    :cond_0
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 46
    if-eqz v3, :cond_1

    .line 48
    new-instance v3, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 50
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    .line 52
    goto :goto_1

    .line 55
    :cond_1
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Flow;

    .line 56
    if-eqz v3, :cond_2

    .line 58
    new-instance v3, Landroidx/constraintlayout/core/widgets/Flow;

    .line 60
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Flow;-><init>()V

    .line 62
    goto :goto_1

    .line 65
    :cond_2
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Placeholder;

    .line 66
    if-eqz v3, :cond_3

    .line 68
    new-instance v3, Landroidx/constraintlayout/core/widgets/Placeholder;

    .line 70
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Placeholder;-><init>()V

    .line 72
    goto :goto_1

    .line 75
    :cond_3
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Helper;

    .line 76
    if-eqz v3, :cond_4

    .line 78
    new-instance v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 80
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    .line 82
    goto :goto_1

    .line 85
    :cond_4
    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 86
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    .line 88
    :goto_1
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 96
    if-eqz v4, :cond_5

    .line 98
    check-cast v4, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    .line 100
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    .line 107
    :cond_5
    iput-object p1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 110
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    goto :goto_0

    .line 115
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    move-result-object p0

    .line 119
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result p1

    .line 123
    if-eqz p1, :cond_7

    .line 124
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object p1

    .line 129
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 130
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 135
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 136
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 138
    goto :goto_2

    .line 141
    :cond_7
    return-void
    .line 142
.end method

.method public static getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 22
    if-ne v3, p1, :cond_1

    .line 24
    return-object v2

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return-object p0
    .line 31
.end method


# virtual methods
.method public final build()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v2

    .line 9
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 12
    new-instance v3, Landroid/util/SparseArray;

    .line 15
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 17
    new-array v4, v2, [I

    .line 20
    const/4 v6, 0x0

    .line 22
    :goto_0
    if-ge v6, v2, :cond_0

    .line 23
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v7

    .line 28
    new-instance v8, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 29
    invoke-direct {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    .line 31
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 34
    move-result v9

    .line 37
    aput v9, v4, v6

    .line 38
    invoke-virtual {v3, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 43
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v6, v6, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_0
    const/4 v6, 0x0

    .line 51
    :goto_1
    if-ge v6, v2, :cond_10

    .line 52
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v8

    .line 57
    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 58
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v9

    .line 63
    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 64
    if-nez v9, :cond_1

    .line 66
    move/from16 v18, v2

    .line 68
    move-object/from16 v16, v3

    .line 70
    move-object/from16 v17, v4

    .line 72
    move/from16 v19, v6

    .line 74
    goto/16 :goto_6

    .line 76
    :cond_1
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 78
    iget-object v11, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 80
    const-string v12, ")"

    .line 82
    const-string v13, " ("

    .line 84
    const-string v14, "no widget for  "

    .line 86
    const-string v15, "MotionLayout"

    .line 88
    if-eqz v10, :cond_b

    .line 90
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 92
    invoke-static {v10, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 94
    move-result-object v10

    .line 97
    if-eqz v10, :cond_a

    .line 98
    invoke-static {v1, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;

    .line 100
    move-result-object v10

    .line 103
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 104
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    .line 106
    move-result v7

    .line 109
    move-object/from16 v16, v3

    .line 110
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 112
    move-result v3

    .line 115
    move-object/from16 v17, v4

    .line 116
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 118
    if-eqz v4, :cond_2

    .line 120
    invoke-static {v4, v7, v3, v10, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 122
    :cond_2
    iget-object v3, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 125
    const/4 v7, 0x0

    .line 127
    iput v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 128
    iput v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 130
    invoke-virtual {v9, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 132
    iget v7, v10, Landroid/graphics/Rect;->left:I

    .line 135
    int-to-float v7, v7

    .line 137
    move/from16 v18, v2

    .line 138
    iget v2, v10, Landroid/graphics/Rect;->top:I

    .line 140
    int-to-float v2, v2

    .line 142
    move/from16 v19, v6

    .line 143
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 145
    move-result v6

    .line 148
    int-to-float v6, v6

    .line 149
    move-object/from16 v20, v11

    .line 150
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 152
    move-result v11

    .line 155
    int-to-float v11, v11

    .line 156
    invoke-virtual {v3, v7, v2, v6, v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 157
    iget v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 160
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 162
    move-result-object v2

    .line 165
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 166
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 169
    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    .line 171
    iput v6, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 173
    iget-object v6, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 175
    iget v7, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 177
    invoke-virtual {v6, v10, v5, v4, v7}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 179
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 182
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 184
    iput v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 186
    iget v2, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    .line 188
    iput v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    .line 190
    iget v2, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    .line 192
    iput v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 194
    iget-object v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 196
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 198
    move-result-object v2

    .line 201
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 202
    iget-object v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    .line 204
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 206
    const/4 v6, -0x2

    .line 208
    if-eq v4, v6, :cond_9

    .line 209
    const/4 v6, -0x1

    .line 211
    if-eq v4, v6, :cond_8

    .line 212
    if-eqz v4, :cond_7

    .line 214
    const/4 v2, 0x1

    .line 216
    if-eq v4, v2, :cond_6

    .line 217
    const/4 v2, 0x2

    .line 219
    if-eq v4, v2, :cond_5

    .line 220
    const/4 v2, 0x4

    .line 222
    if-eq v4, v2, :cond_4

    .line 223
    const/4 v2, 0x5

    .line 225
    if-eq v4, v2, :cond_3

    .line 226
    const/4 v2, 0x0

    .line 228
    goto :goto_2

    .line 229
    :cond_3
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    .line 230
    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 232
    goto :goto_2

    .line 235
    :cond_4
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    .line 236
    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 238
    goto :goto_2

    .line 241
    :cond_5
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 242
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 244
    goto :goto_2

    .line 247
    :cond_6
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 248
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 250
    goto :goto_2

    .line 253
    :cond_7
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 254
    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 256
    goto :goto_2

    .line 259
    :cond_8
    invoke-static {v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 260
    move-result-object v2

    .line 263
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionController$1;

    .line 264
    invoke-direct {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionController$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    .line 266
    goto :goto_3

    .line 269
    :cond_9
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 270
    move-result-object v2

    .line 273
    :goto_2
    move-object v3, v2

    .line 274
    :goto_3
    iput-object v3, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 275
    goto :goto_4

    .line 277
    :cond_a
    move/from16 v18, v2

    .line 278
    move-object/from16 v16, v3

    .line 280
    move-object/from16 v17, v4

    .line 282
    move/from16 v19, v6

    .line 284
    move-object/from16 v20, v11

    .line 286
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 288
    if-eqz v2, :cond_c

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    .line 292
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    .line 297
    move-result-object v3

    .line 300
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 307
    move-result-object v3

    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    move-result-object v3

    .line 320
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 321
    move-result-object v3

    .line 324
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object v2

    .line 334
    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    goto :goto_4

    .line 338
    :cond_b
    move/from16 v18, v2

    .line 339
    move-object/from16 v16, v3

    .line 341
    move-object/from16 v17, v4

    .line 343
    move/from16 v19, v6

    .line 345
    move-object/from16 v20, v11

    .line 347
    :cond_c
    :goto_4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 349
    if-eqz v2, :cond_f

    .line 351
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 353
    invoke-static {v2, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 355
    move-result-object v2

    .line 358
    if-eqz v2, :cond_e

    .line 359
    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;

    .line 361
    move-result-object v2

    .line 364
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 365
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    .line 367
    move-result v4

    .line 370
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 371
    move-result v5

    .line 374
    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 375
    if-eqz v6, :cond_d

    .line 377
    move-object/from16 v7, v20

    .line 379
    invoke-static {v6, v4, v5, v2, v7}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 381
    move-object v11, v7

    .line 384
    goto :goto_5

    .line 385
    :cond_d
    move-object v11, v2

    .line 386
    :goto_5
    iget-object v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 387
    const/high16 v4, 0x3f800000    # 1.0f

    .line 389
    iput v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 391
    iput v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 393
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 395
    iget v4, v11, Landroid/graphics/Rect;->left:I

    .line 398
    int-to-float v4, v4

    .line 400
    iget v5, v11, Landroid/graphics/Rect;->top:I

    .line 401
    int-to-float v5, v5

    .line 403
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 404
    move-result v7

    .line 407
    int-to-float v7, v7

    .line 408
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 409
    move-result v8

    .line 412
    int-to-float v8, v8

    .line 413
    invoke-virtual {v2, v4, v5, v7, v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 414
    iget v4, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 417
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 419
    move-result-object v4

    .line 422
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 423
    iget-object v2, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 426
    iget v4, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 428
    invoke-virtual {v2, v11, v3, v6, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 430
    goto :goto_6

    .line 433
    :cond_e
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 434
    if-eqz v2, :cond_f

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    .line 438
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    .line 443
    move-result-object v3

    .line 446
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 453
    move-result-object v3

    .line 456
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    move-result-object v3

    .line 466
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 467
    move-result-object v3

    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    move-result-object v2

    .line 480
    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_f
    :goto_6
    add-int/lit8 v6, v19, 0x1

    .line 484
    move-object/from16 v3, v16

    .line 486
    move-object/from16 v4, v17

    .line 488
    move/from16 v2, v18

    .line 490
    goto/16 :goto_1

    .line 492
    :cond_10
    move-object/from16 v16, v3

    .line 494
    move-object/from16 v17, v4

    .line 496
    move v0, v2

    .line 498
    const/4 v5, 0x0

    .line 499
    :goto_7
    if-ge v5, v0, :cond_12

    .line 500
    aget v1, v17, v5

    .line 502
    move-object/from16 v2, v16

    .line 504
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 506
    move-result-object v1

    .line 509
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 510
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 512
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 514
    const/4 v4, -0x1

    .line 516
    if-eq v3, v4, :cond_11

    .line 517
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 519
    move-result-object v3

    .line 522
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 523
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 525
    iget-object v7, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 527
    invoke-virtual {v7, v3, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 529
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 532
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 534
    invoke-virtual {v1, v3, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 536
    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 539
    move-object/from16 v16, v2

    .line 541
    goto :goto_7

    .line 543
    :cond_12
    return-void
    .line 544
.end method

.method public final computeStartEndSize(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    .line 4
    move-result v1

    .line 7
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 8
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    .line 10
    move-result v3

    .line 13
    if-ne v2, v3, :cond_6

    .line 14
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 16
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 18
    if-eqz v3, :cond_1

    .line 20
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 22
    if-nez v4, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    move v4, p2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move v4, p1

    .line 29
    :goto_1
    if-eqz v3, :cond_3

    .line 30
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 32
    if-nez v3, :cond_2

    .line 34
    goto :goto_2

    .line 36
    :cond_2
    move v3, p1

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    :goto_2
    move v3, p2

    .line 39
    :goto_3
    invoke-virtual {v0, v2, v1, v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 40
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 43
    if-eqz v2, :cond_e

    .line 45
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 47
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 49
    if-nez v2, :cond_4

    .line 51
    move v3, p1

    .line 53
    goto :goto_4

    .line 54
    :cond_4
    move v3, p2

    .line 55
    :goto_4
    if-nez v2, :cond_5

    .line 56
    move p1, p2

    .line 58
    :cond_5
    invoke-virtual {v0, p0, v1, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 59
    goto :goto_9

    .line 62
    :cond_6
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 63
    if-eqz v2, :cond_9

    .line 65
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 67
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 69
    if-nez v2, :cond_7

    .line 71
    move v4, p1

    .line 73
    goto :goto_5

    .line 74
    :cond_7
    move v4, p2

    .line 75
    :goto_5
    if-nez v2, :cond_8

    .line 76
    move v2, p2

    .line 78
    goto :goto_6

    .line 79
    :cond_8
    move v2, p1

    .line 80
    :goto_6
    invoke-virtual {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 81
    :cond_9
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 84
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 86
    if-eqz p0, :cond_b

    .line 88
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 90
    if-nez v3, :cond_a

    .line 92
    goto :goto_7

    .line 94
    :cond_a
    move v3, p2

    .line 95
    goto :goto_8

    .line 96
    :cond_b
    :goto_7
    move v3, p1

    .line 97
    :goto_8
    if-eqz p0, :cond_c

    .line 98
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 100
    if-nez p0, :cond_d

    .line 102
    :cond_c
    move p1, p2

    .line 104
    :cond_d
    invoke-virtual {v0, v2, v1, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 105
    :cond_e
    :goto_9
    return-void
    .line 108
.end method

.method public final initFrom(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 4
    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 6
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 11
    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 13
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 18
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 20
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 24
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 26
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 28
    iput-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 30
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 32
    iput-object v4, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 34
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 36
    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 38
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 40
    iput-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 42
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 49
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 56
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 58
    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 60
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 63
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 65
    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 67
    iget v0, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 70
    float-to-double v0, v0

    .line 72
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 73
    cmpl-double v0, v0, v3

    .line 75
    if-lez v0, :cond_1

    .line 77
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 81
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 83
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 86
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 88
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 92
    invoke-virtual {p0, v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 94
    if-eqz p1, :cond_2

    .line 97
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 99
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 101
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 104
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 106
    move-result p2

    .line 109
    iput-boolean p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 110
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 112
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 114
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 116
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 119
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 121
    move-result p2

    .line 124
    iput-boolean p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 125
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 127
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 129
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 131
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    move-result-object p1

    .line 137
    if-eqz p1, :cond_4

    .line 138
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 142
    const/4 v1, -0x2

    .line 144
    if-ne p2, v1, :cond_3

    .line 145
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 147
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 149
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 152
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 154
    :cond_3
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    if-ne p1, v1, :cond_4

    .line 159
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 161
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 163
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 166
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 168
    :cond_4
    return-void
    .line 171
.end method

.method public final reEvaluateState()V
    .locals 12

    .line 1
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    iget v1, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 4
    iget v2, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    .line 6
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v0

    .line 11
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result v3

    .line 15
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    .line 16
    iput v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    .line 18
    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->computeStartEndSize(II)V

    .line 20
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v4

    .line 26
    instance-of v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 27
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x1

    .line 30
    if-eqz v4, :cond_0

    .line 31
    const/high16 v4, 0x40000000    # 2.0f

    .line 33
    if-ne v0, v4, :cond_0

    .line 35
    if-ne v3, v4, :cond_0

    .line 37
    move v0, v8

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v9

    .line 41
    :goto_0
    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->computeStartEndSize(II)V

    .line 44
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 47
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 49
    move-result v0

    .line 52
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 53
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 55
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 57
    move-result v0

    .line 60
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 63
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 65
    move-result v0

    .line 68
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 69
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 71
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 73
    move-result v0

    .line 76
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    .line 77
    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 79
    iget v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 81
    if-ne v3, v4, :cond_2

    .line 83
    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 85
    if-eq v3, v0, :cond_1

    .line 87
    goto :goto_1

    .line 89
    :cond_1
    move v0, v8

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    :goto_1
    move v0, v9

    .line 92
    :goto_2
    iput-boolean v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 93
    :cond_3
    iget v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    .line 95
    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    .line 97
    iget v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    .line 99
    const/high16 v5, -0x80000000

    .line 101
    if-eq v4, v5, :cond_4

    .line 103
    if-nez v4, :cond_5

    .line 105
    :cond_4
    int-to-float v4, v0

    .line 107
    iget v6, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 108
    iget v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    .line 110
    sub-int/2addr v10, v0

    .line 112
    int-to-float v0, v10

    .line 113
    mul-float/2addr v6, v0

    .line 114
    add-float/2addr v6, v4

    .line 115
    float-to-int v0, v6

    .line 116
    :cond_5
    move v4, v0

    .line 117
    iget v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    .line 118
    if-eq v0, v5, :cond_7

    .line 120
    if-nez v0, :cond_6

    .line 122
    goto :goto_3

    .line 124
    :cond_6
    move v5, v3

    .line 125
    goto :goto_4

    .line 126
    :cond_7
    :goto_3
    int-to-float v0, v3

    .line 127
    iget v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 128
    iget v6, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    .line 130
    sub-int/2addr v6, v3

    .line 132
    int-to-float v3, v6

    .line 133
    mul-float/2addr v5, v3

    .line 134
    add-float/2addr v5, v0

    .line 135
    float-to-int v0, v5

    .line 136
    move v5, v0

    .line 137
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 138
    iget-boolean v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 140
    if-nez v3, :cond_9

    .line 142
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 144
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 146
    if-eqz v3, :cond_8

    .line 148
    goto :goto_5

    .line 150
    :cond_8
    move v6, v8

    .line 151
    goto :goto_6

    .line 152
    :cond_9
    :goto_5
    move v6, v9

    .line 153
    :goto_6
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 154
    if-nez v0, :cond_b

    .line 156
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 158
    iget-boolean p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 160
    if-eqz p0, :cond_a

    .line 162
    goto :goto_7

    .line 164
    :cond_a
    move p0, v8

    .line 165
    goto :goto_8

    .line 166
    :cond_b
    :goto_7
    move p0, v9

    .line 167
    :goto_8
    move-object v0, v7

    .line 168
    move v3, v4

    .line 169
    move v4, v5

    .line 170
    move v5, v6

    .line 171
    move v6, p0

    .line 172
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    .line 173
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 176
    move-result p0

    .line 179
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 180
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    .line 182
    iput-boolean v9, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    .line 187
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 189
    move v1, v8

    .line 192
    :goto_9
    if-ge v1, p0, :cond_c

    .line 193
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 195
    move-result-object v2

    .line 198
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 199
    move-result v3

    .line 202
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 203
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    move-result-object v2

    .line 208
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 209
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    .line 214
    goto :goto_9

    .line 216
    :cond_c
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    .line 217
    move-result v0

    .line 220
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    .line 221
    move-result v1

    .line 224
    iget-object v2, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 225
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 227
    const/4 v3, -0x1

    .line 229
    if-eqz v2, :cond_d

    .line 230
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    .line 232
    goto :goto_a

    .line 234
    :cond_d
    move v2, v3

    .line 235
    :goto_a
    if-eq v2, v3, :cond_f

    .line 236
    move v4, v8

    .line 238
    :goto_b
    if-ge v4, p0, :cond_f

    .line 239
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 241
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 243
    move-result-object v6

    .line 246
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-result-object v5

    .line 250
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 251
    if-eqz v5, :cond_e

    .line 253
    iput v2, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 255
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 257
    goto :goto_b

    .line 259
    :cond_f
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 260
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 262
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 265
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 267
    move-result v4

    .line 270
    new-array v4, v4, [I

    .line 271
    move v5, v8

    .line 273
    move v6, v5

    .line 274
    :goto_c
    if-ge v5, p0, :cond_11

    .line 275
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 277
    move-result-object v10

    .line 280
    iget-object v11, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 281
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    move-result-object v10

    .line 286
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 287
    iget-object v11, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 289
    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 291
    if-eq v11, v3, :cond_10

    .line 293
    invoke-virtual {v2, v11, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 295
    add-int/lit8 v11, v6, 0x1

    .line 298
    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 300
    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 302
    aput v10, v4, v6

    .line 304
    move v6, v11

    .line 306
    :cond_10
    add-int/lit8 v5, v5, 0x1

    .line 307
    goto :goto_c

    .line 309
    :cond_11
    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 310
    if-eqz v3, :cond_16

    .line 312
    move v3, v8

    .line 314
    :goto_d
    if-ge v3, v6, :cond_13

    .line 315
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 317
    aget v10, v4, v3

    .line 319
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 321
    move-result-object v10

    .line 324
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    move-result-object v5

    .line 328
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 329
    if-nez v5, :cond_12

    .line 331
    goto :goto_e

    .line 333
    :cond_12
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 334
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 336
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 339
    goto :goto_d

    .line 341
    :cond_13
    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    .line 342
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 344
    move-result-object v3

    .line 347
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    move-result v5

    .line 351
    if-eqz v5, :cond_14

    .line 352
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    move-result-object v5

    .line 357
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 358
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 360
    invoke-virtual {v5, v7, v10}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    .line 362
    goto :goto_f

    .line 365
    :cond_14
    move v3, v8

    .line 366
    :goto_10
    if-ge v3, v6, :cond_18

    .line 367
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 369
    aget v10, v4, v3

    .line 371
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 373
    move-result-object v10

    .line 376
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    move-result-object v5

    .line 380
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 381
    if-nez v5, :cond_15

    .line 383
    goto :goto_11

    .line 385
    :cond_15
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 386
    move-result-wide v10

    .line 389
    invoke-virtual {v5, v0, v1, v10, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIJ)V

    .line 390
    :goto_11
    add-int/lit8 v3, v3, 0x1

    .line 393
    goto :goto_10

    .line 395
    :cond_16
    move v3, v8

    .line 396
    :goto_12
    if-ge v3, v6, :cond_18

    .line 397
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 399
    aget v10, v4, v3

    .line 401
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 403
    move-result-object v10

    .line 406
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    move-result-object v5

    .line 410
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 411
    if-nez v5, :cond_17

    .line 413
    goto :goto_13

    .line 415
    :cond_17
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 416
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 418
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 421
    move-result-wide v10

    .line 424
    invoke-virtual {v5, v0, v1, v10, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIJ)V

    .line 425
    :goto_13
    add-int/lit8 v3, v3, 0x1

    .line 428
    goto :goto_12

    .line 430
    :cond_18
    move v3, v8

    .line 431
    :goto_14
    if-ge v3, p0, :cond_1b

    .line 432
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 434
    move-result-object v4

    .line 437
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 438
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    move-result-object v5

    .line 443
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 444
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 446
    move-result v4

    .line 449
    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 450
    move-result v4

    .line 453
    if-eqz v4, :cond_19

    .line 454
    goto :goto_15

    .line 456
    :cond_19
    if-eqz v5, :cond_1a

    .line 457
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 459
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 461
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 464
    move-result-wide v10

    .line 467
    invoke-virtual {v5, v0, v1, v10, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIJ)V

    .line 468
    :cond_1a
    :goto_15
    add-int/lit8 v3, v3, 0x1

    .line 471
    goto :goto_14

    .line 473
    :cond_1b
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 474
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 476
    const/4 v1, 0x0

    .line 478
    if-eqz v0, :cond_1c

    .line 479
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 481
    goto :goto_16

    .line 483
    :cond_1c
    move v0, v1

    .line 484
    :goto_16
    cmpl-float v1, v0, v1

    .line 485
    if-eqz v1, :cond_27

    .line 487
    float-to-double v1, v0

    .line 489
    const-wide/16 v3, 0x0

    .line 490
    cmpg-double v1, v1, v3

    .line 492
    if-gez v1, :cond_1d

    .line 494
    move v1, v9

    .line 496
    goto :goto_17

    .line 497
    :cond_1d
    move v1, v8

    .line 498
    :goto_17
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 499
    move-result v0

    .line 502
    const v2, -0x800001

    .line 503
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 506
    move v6, v2

    .line 509
    move v5, v3

    .line 510
    move v4, v8

    .line 511
    :goto_18
    if-ge v4, p0, :cond_20

    .line 512
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 514
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 516
    move-result-object v11

    .line 519
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    move-result-object v10

    .line 523
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 524
    iget v11, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 526
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    .line 528
    move-result v11

    .line 531
    if-nez v11, :cond_1e

    .line 532
    goto :goto_1a

    .line 534
    :cond_1e
    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 535
    iget v11, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 537
    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 539
    if-eqz v1, :cond_1f

    .line 541
    sub-float/2addr v10, v11

    .line 543
    goto :goto_19

    .line 544
    :cond_1f
    add-float/2addr v10, v11

    .line 545
    :goto_19
    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    .line 546
    move-result v5

    .line 549
    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    .line 550
    move-result v6

    .line 553
    add-int/lit8 v4, v4, 0x1

    .line 554
    goto :goto_18

    .line 556
    :cond_20
    move v9, v8

    .line 557
    :goto_1a
    const/high16 v4, 0x3f800000    # 1.0f

    .line 558
    if-eqz v9, :cond_25

    .line 560
    move v5, v8

    .line 562
    :goto_1b
    if-ge v5, p0, :cond_22

    .line 563
    iget-object v6, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 565
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 567
    move-result-object v9

    .line 570
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    move-result-object v6

    .line 574
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 575
    iget v9, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 577
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 579
    move-result v9

    .line 582
    if-nez v9, :cond_21

    .line 583
    iget v9, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 585
    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    .line 587
    move-result v3

    .line 590
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 591
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    .line 593
    move-result v2

    .line 596
    :cond_21
    add-int/lit8 v5, v5, 0x1

    .line 597
    goto :goto_1b

    .line 599
    :cond_22
    :goto_1c
    if-ge v8, p0, :cond_27

    .line 600
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 602
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 604
    move-result-object v6

    .line 607
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    move-result-object v5

    .line 611
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 612
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 614
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 616
    move-result v6

    .line 619
    if-nez v6, :cond_24

    .line 620
    sub-float v6, v4, v0

    .line 622
    div-float v6, v4, v6

    .line 624
    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 626
    if-eqz v1, :cond_23

    .line 628
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 630
    sub-float v6, v2, v6

    .line 632
    sub-float v9, v2, v3

    .line 634
    div-float/2addr v6, v9

    .line 636
    mul-float/2addr v6, v0

    .line 637
    sub-float v6, v0, v6

    .line 638
    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 640
    goto :goto_1d

    .line 642
    :cond_23
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 643
    sub-float/2addr v6, v3

    .line 645
    mul-float/2addr v6, v0

    .line 646
    sub-float v9, v2, v3

    .line 647
    div-float/2addr v6, v9

    .line 649
    sub-float v6, v0, v6

    .line 650
    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 652
    :cond_24
    :goto_1d
    add-int/lit8 v8, v8, 0x1

    .line 654
    goto :goto_1c

    .line 656
    :cond_25
    :goto_1e
    if-ge v8, p0, :cond_27

    .line 657
    iget-object v2, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 659
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 661
    move-result-object v3

    .line 664
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    move-result-object v2

    .line 668
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 669
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 671
    iget v9, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 673
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 675
    if-eqz v1, :cond_26

    .line 677
    sub-float/2addr v3, v9

    .line 679
    goto :goto_1f

    .line 680
    :cond_26
    add-float/2addr v3, v9

    .line 681
    :goto_1f
    sub-float v9, v4, v0

    .line 682
    div-float v9, v4, v9

    .line 684
    iput v9, v2, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 686
    sub-float/2addr v3, v5

    .line 688
    mul-float/2addr v3, v0

    .line 689
    sub-float v9, v6, v5

    .line 690
    div-float/2addr v3, v9

    .line 692
    sub-float v3, v0, v3

    .line 693
    iput v3, v2, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 695
    add-int/lit8 v8, v8, 0x1

    .line 697
    goto :goto_1e

    .line 699
    :cond_27
    return-void
    .line 700
.end method

.method public final setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    new-instance v9, Landroid/util/SparseArray;

    .line 8
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 10
    new-instance v10, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 13
    const/4 v3, -0x2

    .line 15
    invoke-direct {v10, v3, v3}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 19
    const/4 v11, 0x0

    .line 22
    invoke-virtual {v9, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 26
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getId()I

    .line 28
    move-result v3

    .line 31
    invoke-virtual {v9, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    if-eqz v2, :cond_0

    .line 35
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 37
    if-eqz v3, :cond_0

    .line 39
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 41
    invoke-virtual {v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    .line 43
    move-result v4

    .line 46
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getHeight()I

    .line 47
    move-result v5

    .line 50
    const/high16 v6, 0x40000000    # 2.0f

    .line 51
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    move-result v5

    .line 56
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getWidth()I

    .line 57
    move-result v7

    .line 60
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 61
    move-result v6

    .line 64
    sget-boolean v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 65
    invoke-virtual {v12, v3, v4, v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 67
    :cond_0
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v3

    .line 75
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v4

    .line 79
    const/4 v13, 0x1

    .line 80
    if-eqz v4, :cond_1

    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v4

    .line 86
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 87
    iput-boolean v13, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    .line 89
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 91
    check-cast v5, Landroid/view/View;

    .line 93
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 95
    move-result v5

    .line 98
    invoke-virtual {v9, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    goto :goto_0

    .line 102
    :cond_1
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object v14

    .line 108
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v3

    .line 112
    if-eqz v3, :cond_6

    .line 113
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v3

    .line 118
    move-object v15, v3

    .line 119
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 120
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 122
    move-object v8, v3

    .line 124
    check-cast v8, Landroid/view/View;

    .line 125
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 127
    move-result v3

    .line 130
    iget-object v4, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v5

    .line 136
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 137
    move-result v5

    .line 140
    if-eqz v5, :cond_2

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v3

    .line 146
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-result-object v3

    .line 150
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 151
    if-eqz v3, :cond_2

    .line 153
    invoke-virtual {v3, v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 155
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 158
    move-result v3

    .line 161
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 162
    move-result-object v3

    .line 165
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 166
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 168
    invoke-virtual {v15, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 170
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 173
    move-result v3

    .line 176
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 177
    move-result-object v3

    .line 180
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 181
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 183
    invoke-virtual {v15, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 185
    instance-of v3, v8, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 188
    if-eqz v3, :cond_4

    .line 190
    move-object v3, v8

    .line 192
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 193
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 195
    move-result v4

    .line 198
    iget-object v5, v2, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 199
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    move-result-object v6

    .line 204
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 205
    move-result v6

    .line 208
    if-eqz v6, :cond_3

    .line 209
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object v4

    .line 214
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    move-result-object v4

    .line 218
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 219
    if-eqz v4, :cond_3

    .line 221
    instance-of v5, v15, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 223
    if-eqz v5, :cond_3

    .line 225
    move-object v5, v15

    .line 227
    check-cast v5, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 228
    invoke-virtual {v3, v4, v5, v10, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/core/widgets/HelperWidget;Landroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/util/SparseArray;)V

    .line 230
    :cond_3
    instance-of v3, v8, Landroidx/constraintlayout/widget/Barrier;

    .line 233
    if-eqz v3, :cond_4

    .line 235
    move-object v3, v8

    .line 237
    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    .line 238
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 240
    :cond_4
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 243
    move-result v3

    .line 246
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 247
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 250
    const/4 v4, 0x0

    .line 252
    sget-boolean v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 253
    move-object v5, v8

    .line 255
    move-object v6, v15

    .line 256
    move-object v7, v10

    .line 257
    move-object/from16 v16, v8

    .line 258
    move-object v8, v9

    .line 260
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 261
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    .line 264
    move-result v3

    .line 267
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 268
    move-result-object v3

    .line 271
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 272
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 274
    if-ne v3, v13, :cond_5

    .line 276
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    .line 278
    move-result v3

    .line 281
    iput v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 282
    goto/16 :goto_1

    .line 284
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    .line 286
    move-result v3

    .line 289
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 290
    move-result-object v3

    .line 293
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 294
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 296
    iput v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 298
    goto/16 :goto_1

    .line 300
    :cond_6
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 302
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 304
    move-result-object v0

    .line 307
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    move-result v1

    .line 311
    if-eqz v1, :cond_9

    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    move-result-object v1

    .line 317
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 318
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 320
    if-eqz v2, :cond_7

    .line 322
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 324
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 326
    check-cast v1, Landroidx/constraintlayout/core/widgets/Helper;

    .line 328
    invoke-virtual {v2, v1, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/core/widgets/Helper;Landroid/util/SparseArray;)V

    .line 330
    check-cast v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 333
    move v2, v11

    .line 335
    :goto_2
    iget v3, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 336
    if-ge v2, v3, :cond_7

    .line 338
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 340
    aget-object v3, v3, v2

    .line 342
    if-eqz v3, :cond_8

    .line 344
    iput-boolean v13, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 346
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 348
    goto :goto_2

    .line 350
    :cond_9
    return-void
    .line 351
.end method

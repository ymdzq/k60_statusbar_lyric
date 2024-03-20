.class public final Lmiuix/internal/view/CheckWidgetDrawableAnims;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBackgroundDisableAlpha:I

.field public final mBackgroundNormalAlpha:I

.field public final mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

.field public final mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

.field public final mCircleAlphaFloatProperty:Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

.field public final mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

.field public final mIsSingleSelection:Z

.field public final mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

.field public mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field public final mParentContentAlphaFloatProperty:Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

.field public final mParentInvalidListener:Lmiuix/internal/view/CheckWidgetDrawableAnims$$ExternalSyntheticLambda0;

.field public mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

.field public final mParentScaleFloatProperty:Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

.field public final mParentScaleInvalidListener:Lmiuix/internal/view/CheckWidgetDrawableAnims$1;

.field public mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mScale:F

.field public mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field public final scaleFloatProperty:Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

.field public unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;


# direct methods
.method public constructor <init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, p6

    move/from16 v11, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v12, 0x3f800000    # 1.0f

    .line 2
    iput v12, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    .line 3
    new-instance v13, Lmiuix/internal/view/CheckWidgetDrawableAnims$$ExternalSyntheticLambda0;

    invoke-direct {v13, v0}, Lmiuix/internal/view/CheckWidgetDrawableAnims$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    iput-object v13, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/internal/view/CheckWidgetDrawableAnims$$ExternalSyntheticLambda0;

    .line 4
    new-instance v14, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;

    const/4 v15, 0x0

    invoke-direct {v14, v0, v15}, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;I)V

    iput-object v14, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiuix/internal/view/CheckWidgetDrawableAnims$1;

    .line 5
    new-instance v9, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

    const-string v3, "Scale"

    invoke-direct {v9, v0, v3, v15}, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;I)V

    iput-object v9, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

    .line 6
    new-instance v8, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

    const-string v4, "ContentAlpha"

    const/4 v7, 0x1

    invoke-direct {v8, v0, v4, v7}, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;I)V

    iput-object v8, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

    .line 7
    new-instance v6, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

    const/4 v4, 0x2

    invoke-direct {v6, v0, v3, v4}, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;I)V

    iput-object v6, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

    .line 8
    new-instance v5, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

    const-string v3, "Alpha"

    const/4 v4, 0x3

    invoke-direct {v5, v0, v3, v4}, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;I)V

    iput-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

    .line 9
    iput-boolean v15, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    .line 10
    iput v10, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    .line 11
    iput v11, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundDisableAlpha:I

    .line 12
    iput-boolean v2, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    .line 13
    new-instance v4, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    move-object v3, v4

    move-object v12, v4

    move/from16 v4, p3

    move-object/from16 v16, v5

    move/from16 v5, p6

    move-object/from16 v17, v6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v18, v8

    move/from16 v8, p9

    move-object/from16 v19, v9

    move/from16 v9, p10

    invoke-direct/range {v3 .. v9}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(IIIIII)V

    iput-object v12, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 14
    invoke-virtual {v12, v10}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 15
    new-instance v3, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    move/from16 v4, p4

    invoke-direct {v3, v4, v10, v11}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(III)V

    iput-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 16
    invoke-virtual {v3, v15}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 17
    new-instance v4, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    move/from16 v5, p5

    invoke-direct {v4, v5, v10, v11}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(III)V

    iput-object v4, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/16 v5, 0xff

    .line 18
    invoke-virtual {v4, v5}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 19
    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 20
    new-instance v5, Lmiuix/animation/physics/SpringAnimation;

    const v6, 0x3f59999a    # 0.85f

    move-object/from16 v7, v17

    invoke-direct {v5, v0, v7, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 21
    invoke-virtual {v5}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v5

    const v8, 0x4476bd71

    invoke-virtual {v5, v8}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 22
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v5}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v5

    const v9, 0x3f7d70a4    # 0.99f

    invoke-virtual {v5, v9}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 23
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v5}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v6}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    .line 24
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const v6, 0x3b03126f    # 0.002f

    invoke-virtual {v5, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 25
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v5, v14}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 26
    new-instance v5, Lmiuix/animation/physics/SpringAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v7, v10}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 27
    invoke-virtual {v5}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v8}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 28
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v5}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v5

    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {v5, v7}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 29
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v5, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 30
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    new-instance v10, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;

    const/4 v11, 0x1

    invoke-direct {v10, v0, v11}, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;I)V

    invoke-virtual {v5, v10}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 31
    new-instance v5, Lmiuix/animation/physics/SpringAnimation;

    const/high16 v10, 0x3f000000    # 0.5f

    move-object/from16 v11, v18

    invoke-direct {v5, v1, v11, v10}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 32
    invoke-virtual {v5}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v8}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 33
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v5}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v9}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 34
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v10, 0x3b800000    # 0.00390625f

    invoke-virtual {v5, v10}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 35
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v5, v13}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 36
    new-instance v5, Lmiuix/animation/physics/SpringAnimation;

    const v12, 0x3dcccccd    # 0.1f

    move-object/from16 v15, v16

    invoke-direct {v5, v3, v15, v12}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 37
    invoke-virtual {v5}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v8}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 38
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v5}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v9}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 39
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v5, v10}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 40
    iget-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v5, v13}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 41
    new-instance v5, Lmiuix/animation/physics/SpringAnimation;

    const/4 v12, 0x0

    invoke-direct {v5, v3, v15, v12}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v5, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 42
    invoke-virtual {v5}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v3

    invoke-virtual {v3, v8}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 43
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v3

    invoke-virtual {v3, v9}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 44
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3, v10}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 45
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3, v13}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 46
    new-instance v3, Lmiuix/animation/physics/SpringAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v15, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 47
    invoke-virtual {v3}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v3

    invoke-virtual {v3, v8}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 48
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v3

    const v5, 0x3f333333    # 0.7f

    invoke-virtual {v3, v5}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 49
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3, v10}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 50
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3, v13}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 51
    new-instance v3, Lmiuix/animation/physics/SpringAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v11, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 52
    invoke-virtual {v3}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v3

    const v5, 0x43db51ec

    invoke-virtual {v3, v5}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 53
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v3

    invoke-virtual {v3, v7}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 54
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3, v10}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 55
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3, v13}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 56
    new-instance v3, Lmiuix/animation/physics/SpringAnimation;

    invoke-direct {v3, v4, v15, v12}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 57
    invoke-virtual {v3}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v3

    invoke-virtual {v3, v8}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 58
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v3

    invoke-virtual {v3, v9}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 59
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3, v10}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 60
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3, v13}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 61
    new-instance v3, Lmiuix/animation/physics/SpringAnimation;

    move-object/from16 v4, v19

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v10}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 62
    invoke-virtual {v3}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 63
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v3

    invoke-virtual {v3, v7}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 64
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 65
    iget-object v3, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v3, v13}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    goto :goto_0

    .line 67
    :cond_0
    iget-object v2, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 68
    :goto_0
    new-instance v2, Lmiuix/animation/physics/SpringAnimation;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v2, v1, v4, v3}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v2, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 69
    invoke-virtual {v2}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    invoke-virtual {v1, v8}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 70
    iget-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v1

    invoke-virtual {v1, v9}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 71
    iget-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v1, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 72
    iget-object v0, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v14}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    return-void
.end method

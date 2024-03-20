.class public Lmiuix/internal/view/CheckWidgetDrawableAnims;
.super Ljava/lang/Object;
.source "CheckWidgetDrawableAnims.java"


# instance fields
.field private mBackgroundDisableAlpha:I

.field private mBackgroundNormalAlpha:I

.field private mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

.field private mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

.field private mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/internal/view/CheckWidgetCircleDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

.field private mIsSingleSelection:Z

.field private mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

.field private mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mParentContentAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mParentScaleFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mParentScaleInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mScale:F

.field private mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field private scaleFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/internal/view/CheckWidgetDrawableAnims;",
            ">;"
        }
    .end annotation
.end field

.field private unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;


# direct methods
.method public static synthetic $r8$lambda$C00fPW-RGPY_TlAmddm4_6fERDo(Lmiuix/internal/view/CheckWidgetDrawableAnims;Lmiuix/animation/physics/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->lambda$new$0(Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V
    .locals 11

    move-object v0, p0

    move/from16 v8, p6

    move/from16 v9, p7

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    iput v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    .line 63
    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 68
    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;

    invoke-direct {v1, p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 77
    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;

    const-string v2, "Scale"

    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 90
    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$3;

    const-string v3, "ContentAlpha"

    invoke-direct {v1, p0, v3}, Lmiuix/internal/view/CheckWidgetDrawableAnims$3;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 107
    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$4;

    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$4;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 120
    new-instance v1, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;

    const-string v2, "Alpha"

    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$5;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 141
    iput v8, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    .line 142
    iput v9, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundDisableAlpha:I

    move v1, p2

    .line 143
    iput-boolean v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    .line 144
    new-instance v10, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    move-object v1, v10

    move v2, p3

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(IIIIII)V

    iput-object v10, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 145
    iget v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    invoke-virtual {v10, v1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 146
    new-instance v1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    move v2, p4

    invoke-direct {v1, p4, v8, v9}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(III)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/4 v2, 0x0

    .line 147
    invoke-virtual {v1, v2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 148
    new-instance v1, Lmiuix/internal/view/CheckWidgetCircleDrawable;

    move/from16 v2, p5

    invoke-direct {v1, v2, v8, v9}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(III)V

    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/16 v2, 0xff

    .line 149
    invoke-virtual {v1, v2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    move-object v1, p1

    .line 150
    iput-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 151
    invoke-direct {p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->initAnim()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;
    .locals 0

    .line 23
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;
    .locals 0

    .line 23
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;
    .locals 0

    .line 23
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    return-object p0
.end method

.method private initAnim()V
    .locals 11

    .line 155
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {v0, p0, v1, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 156
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 157
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v3, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 158
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    .line 159
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const v2, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 160
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 162
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->scaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v4, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 163
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 164
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 165
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 166
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    new-instance v6, Lmiuix/internal/view/CheckWidgetDrawableAnims$6;

    invoke-direct {v6, p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims$6;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 173
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v6, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v0, v6, v7, v8}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 174
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 175
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 176
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v6, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 177
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 179
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    const v9, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v7, v8, v9}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 180
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 181
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 182
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 183
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 185
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    const/4 v9, 0x0

    invoke-direct {v0, v7, v8, v9}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 186
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 187
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 188
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 189
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 191
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v7, v8, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 192
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 193
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v7, 0x3f333333    # 0.7f

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 194
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 195
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 197
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v7, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentContentAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v7, v8, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 198
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v7, 0x43db51ec

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 199
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 200
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 201
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v8}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 204
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object v10, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mCircleAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v8, v10, v9}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 206
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 207
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 208
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 209
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v6, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 212
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v6, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v8, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v6, v8, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 213
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v7}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 214
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 215
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 216
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 217
    iget-boolean v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 223
    :goto_0
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    iget-object v5, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 224
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 225
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 226
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 227
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentScaleInvalidListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, p0}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    return-void
.end method

.method private synthetic lambda$new$0(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .locals 0

    .line 65
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParent:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 243
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getScale()F
    .locals 0

    .line 231
    iget p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    return p0
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 248
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 249
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 255
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 256
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 235
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    .line 236
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    .line 237
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setScale(F)V

    .line 238
    iput p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mScale:F

    return-void
.end method

.method protected startPressedAnim(ZZ)V
    .locals 1

    if-eqz p2, :cond_a

    .line 278
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 281
    :cond_0
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1

    .line 282
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 284
    :cond_1
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2

    .line 285
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_2
    if-nez p1, :cond_3

    .line 287
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    .line 288
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 291
    :cond_3
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 292
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 295
    :cond_4
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 296
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 299
    :cond_5
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 300
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 303
    :cond_6
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 304
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 307
    :cond_7
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 308
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 311
    :cond_8
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 312
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 314
    :cond_9
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 315
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_a
    :goto_0
    return-void
.end method

.method protected startUnPressedAnim(ZZ)V
    .locals 2

    if-eqz p2, :cond_c

    .line 321
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p2, v0, :cond_0

    goto/16 :goto_1

    .line 331
    :cond_0
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 332
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 334
    :cond_1
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 335
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 337
    :cond_2
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 338
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 340
    :cond_3
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_4

    .line 341
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_4
    if-eqz p1, :cond_8

    .line 345
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 346
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 348
    :cond_5
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6

    .line 349
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 351
    :cond_6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;

    invoke-direct {p2, p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    iget-boolean p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    if-eqz p1, :cond_7

    .line 363
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    goto :goto_0

    .line 365
    :cond_7
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    goto :goto_0

    .line 369
    :cond_8
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 370
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 372
    :cond_9
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_a

    .line 373
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 375
    :cond_a
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_b

    .line 376
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 379
    :cond_b
    :goto_0
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    return-void

    :cond_c
    :goto_1
    const/high16 p2, 0x437f0000    # 255.0f

    if-eqz p1, :cond_d

    .line 323
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 324
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    move-result p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    .line 323
    invoke-virtual {p1, p0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    goto :goto_2

    .line 326
    :cond_d
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 327
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    move-result p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    .line 326
    invoke-virtual {p1, p0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    :goto_2
    return-void
.end method

.method protected verifyChecked(ZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 263
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    const/16 p2, 0x19

    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 266
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 268
    :goto_0
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    invoke-virtual {p1, p0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    goto :goto_1

    .line 270
    :cond_1
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 271
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p1, v0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 272
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    iget p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundDisableAlpha:I

    invoke-virtual {p1, p0}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    :goto_1
    return-void
.end method

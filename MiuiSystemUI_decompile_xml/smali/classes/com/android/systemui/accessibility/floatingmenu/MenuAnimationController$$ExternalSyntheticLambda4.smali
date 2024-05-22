.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;

.field public final synthetic f$1:Ljava/lang/Float;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public final synthetic f$5:Landroidx/dynamicanimation/animation/SpringForce;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;Ljava/lang/Float;FFLandroidx/dynamicanimation/animation/DynamicAnimation$1;Landroidx/dynamicanimation/animation/SpringForce;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Float;

    .line 7
    iput p3, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$2:F

    .line 9
    iput p4, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$3:F

    .line 11
    iput-object p5, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$4:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$5:Landroidx/dynamicanimation/animation/SpringForce;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    if-eqz p2, :cond_0

    .line 7
    goto :goto_1

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Float;

    .line 10
    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result p2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$3:F

    .line 19
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 21
    move-result p2

    .line 24
    iget p3, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$2:F

    .line 25
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 27
    move-result p2

    .line 30
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$4:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;->f$5:Landroidx/dynamicanimation/animation/SpringForce;

    .line 33
    invoke-virtual {p1, p3, p0, p4, p2}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->springMenuWith(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF)V

    .line 35
    :goto_1
    return-void
    .line 38
.end method

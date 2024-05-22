.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$8;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

.field public final synthetic val$params:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$8;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$8;->val$view:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$8;->val$params:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 6
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$8;->val$view:Landroid/view/View;

    .line 5
    instance-of v0, p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    move-object v0, p1

    .line 11
    check-cast v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 12
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 18
    if-eqz v1, :cond_1

    .line 20
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 22
    const-string v1, "fraction"

    .line 24
    invoke-static {p2, v1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 26
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 30
    move-result p2

    .line 33
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$8;->val$params:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 34
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->getDrawable()Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 36
    move-result-object v2

    .line 39
    if-eq v0, v2, :cond_0

    .line 40
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$8;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 42
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->initDrawable()V

    .line 44
    invoke-virtual {v1, p2}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->setFraction(F)V

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 50
    cmpl-float p0, p2, p0

    .line 51
    if-nez p0, :cond_1

    .line 53
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->toFirstFrame()V

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 58
    return-void
    .line 61
.end method

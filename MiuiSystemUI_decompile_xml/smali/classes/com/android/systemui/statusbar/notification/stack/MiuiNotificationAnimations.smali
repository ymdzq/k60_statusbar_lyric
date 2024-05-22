.class public abstract Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final FOCUS_STATUS_BAR_PROMPT_INTERPOLATOR:Lcom/miui/utils/animation/PhysicBasedInterpolator;

.field public static final HEADS_UP_APPEAR_INTERPOLATOR:Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

.field public static final HEADS_UP_DISAPPEAR_INTERPOLATOR:Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;

.field public static final PANEL_APPEAR_DISAPPEAR_FILTER:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field public static final RELEASE_SPRING_FILTER:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 4
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimationExtensionsKt;->PROPERTY_SPRING_Y_OFFSET:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 7
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    .line 9
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    .line 11
    invoke-virtual {v2, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 13
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->RELEASE_SPRING_FILTER:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 18
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 20
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateScale()V

    .line 26
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->PANEL_APPEAR_DISAPPEAR_FILTER:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 29
    new-instance v0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 31
    const/high16 v1, 0x40000000    # 2.0f

    .line 33
    const v2, 0x3fb33333    # 1.4f

    .line 35
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    .line 38
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->HEADS_UP_APPEAR_INTERPOLATOR:Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 41
    new-instance v0, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;

    .line 43
    invoke-direct {v0}, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    .line 45
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->HEADS_UP_DISAPPEAR_INTERPOLATOR:Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;

    .line 48
    new-instance v0, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 50
    const v1, 0x3f733333    # 0.95f

    .line 52
    const v2, 0x3f46e979    # 0.777f

    .line 55
    invoke-direct {v0, v1, v2}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 58
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->FOCUS_STATUS_BAR_PROMPT_INTERPOLATOR:Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 61
    return-void
    .line 63
.end method

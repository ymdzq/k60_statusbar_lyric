.class public final Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCancelled:Z

.field public final synthetic val$endAction:Ljava/util/function/Consumer;

.field public final synthetic val$property:Landroid/util/Property;


# direct methods
.method public constructor <init>(Landroid/util/Property;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->val$property:Landroid/util/Property;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->val$endAction:Ljava/util/function/Consumer;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->mCancelled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->mCancelled:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->val$endAction:Ljava/util/function/Consumer;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$2;->val$property:Landroid/util/Property;

    .line 10
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

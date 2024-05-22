.class public final Lcom/android/systemui/media/controls/ui/LightSourceDrawable$illuminate$1$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;

    .line 2
    invoke-static {p1}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->access$getRippleData$p(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;)Lcom/android/systemui/media/controls/ui/RippleData;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p1, Lcom/android/systemui/media/controls/ui/RippleData;->progress:F

    .line 9
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Lcom/android/systemui/media/controls/ui/LightSourceDrawable;->access$setRippleAnimation$p(Lcom/android/systemui/media/controls/ui/LightSourceDrawable;Landroid/animation/Animator;)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/controls/ui/LightSourceDrawable;

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 19
    return-void
    .line 22
.end method

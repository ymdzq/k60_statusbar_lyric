.class public final Lcom/android/settingslib/animation/AppearAnimationUtils$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic val$endTranslationY:F

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(FLandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$3;->val$view:Landroid/view/View;

    .line 2
    iput p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$3;->val$endTranslationY:F

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$3;->val$view:Landroid/view/View;

    .line 2
    iget p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$3;->val$endTranslationY:F

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    return-void
    .line 9
.end method

.class public final Lcom/android/systemui/qs/customize/QSCustomizer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 2
    iget-boolean v0, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 15
    const/4 p1, 0x0

    .line 17
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QSContainerController;->setCustomizerAnimating(Z)V

    .line 18
    return-void
    .line 21
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 2
    iget-boolean v0, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 15
    const/4 p1, 0x0

    .line 17
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QSContainerController;->setCustomizerAnimating(Z)V

    .line 18
    return-void
    .line 21
.end method

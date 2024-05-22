.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$6;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$6;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$6;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 17
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 19
    const/4 v2, 0x1

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 24
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 26
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 29
    const/4 v1, 0x0

    .line 32
    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateChildren(FI)V

    .line 35
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;

    .line 43
    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 48
    :cond_0
    return v2
    .line 51
.end method

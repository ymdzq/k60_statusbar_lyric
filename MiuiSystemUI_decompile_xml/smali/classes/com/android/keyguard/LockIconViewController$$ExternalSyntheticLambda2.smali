.class public final synthetic Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/LockIconViewController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onAccessibilityStateChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/LockIconViewController;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 6
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    check-cast v0, Lcom/android/keyguard/LockIconView;

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mA11yClickListener:Lcom/android/keyguard/LockIconViewController$$ExternalSyntheticLambda1;

    .line 16
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    check-cast v0, Lcom/android/keyguard/LockIconView;

    .line 22
    const/4 p0, 0x0

    .line 24
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :goto_0
    return-void
    .line 28
.end method

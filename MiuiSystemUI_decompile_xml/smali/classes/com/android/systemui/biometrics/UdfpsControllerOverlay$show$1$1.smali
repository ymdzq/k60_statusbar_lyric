.class public final Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic $this_apply:Lcom/android/systemui/biometrics/UdfpsView;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;Lcom/android/systemui/biometrics/UdfpsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->$this_apply:Lcom/android/systemui/biometrics/UdfpsView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 6
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->$this_apply:Lcom/android/systemui/biometrics/UdfpsView;

    .line 13
    new-instance v1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1$1;

    .line 15
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 17
    invoke-direct {v1, v2}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1$1;-><init>(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;)V

    .line 19
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 22
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->$this_apply:Lcom/android/systemui/biometrics/UdfpsView;

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 30
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->touchExplorationEnabled:Z

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->$this_apply:Lcom/android/systemui/biometrics/UdfpsView;

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 38
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->$this_apply:Lcom/android/systemui/biometrics/UdfpsView;

    .line 41
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1$2;

    .line 43
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 45
    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1$2;-><init>(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 53
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->touchExplorationEnabled:Z

    .line 56
    :goto_0
    return-void
    .line 58
.end method

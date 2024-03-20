.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;->this$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 10
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->dismiss()V

    .line 12
    return-void

    .line 15
    :pswitch_1
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;->this$0:Ljava/lang/Object;

    .line 16
    check-cast p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 18
    iget-boolean v0, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTeachMode:Z

    .line 20
    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 32
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;->this$0:Ljava/lang/Object;

    .line 38
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 40
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->dismiss()V

    .line 42
    :cond_0
    return-void

    .line 45
    :goto_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;->this$0:Ljava/lang/Object;

    .line 46
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;

    .line 48
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 50
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->dismiss()V

    .line 52
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 56
.end method

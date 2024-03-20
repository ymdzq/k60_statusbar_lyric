.class public final Lcom/android/systemui/statusbar/phone/KeyguardLiftController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardLiftController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->bouncerVisible:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    .line 6
    return-void
    .line 9
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardLiftController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardLiftController;->updateListeningState()V

    .line 4
    return-void
    .line 7
.end method

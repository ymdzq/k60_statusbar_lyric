.class public final Lcom/android/keyguard/EmergencyButtonController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/EmergencyButtonController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/EmergencyButtonController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPhoneStateChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    .line 4
    return-void
    .line 7
.end method

.method public final onSimStateChanged(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$1;->this$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    .line 4
    return-void
    .line 7
.end method

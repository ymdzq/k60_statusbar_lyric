.class public final Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "miui.intent.action.TOGGLE_TORCH"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const-string v1, "FlashlightController"

    .line 12
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    const-string p1, "miui.intent.extra.IS_TOGGLE"

    .line 18
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 26
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashlightEnabled:Z

    .line 28
    xor-int/2addr v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "miui.intent.extra.IS_ENABLE"

    .line 32
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 34
    move-result v0

    .line 37
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object p1

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getSender()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 49
    filled-new-array {p1, v2, p2}, [Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 53
    const-string p2, "onReceive: isToggle=%b, newState=%b, from=%s"

    .line 54
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->setFlashlight(Z)V

    .line 65
    goto :goto_2

    .line 68
    :cond_1
    const-string v0, "action_temp_state_change"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    const-string/jumbo p1, "temp_state"

    .line 77
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 80
    move-result p1

    .line 83
    rem-int/lit8 p1, p1, 0xa

    .line 84
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 86
    iget v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mForceOffLightState:I

    .line 88
    if-eq p1, v0, :cond_3

    .line 90
    if-eq p1, v2, :cond_3

    .line 92
    const/4 v0, 0x5

    .line 94
    if-ne p1, v0, :cond_2

    .line 95
    goto :goto_1

    .line 97
    :cond_2
    move v2, v3

    .line 98
    :cond_3
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    move-result-object v0

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object p1

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getSender()Ljava/lang/String;

    .line 107
    move-result-object p2

    .line 110
    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 114
    const-string p2, "onReceive: forceOff=%b, state=%s, from=%s"

    .line 115
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 120
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 p1, 0x2

    .line 124
    if-eqz v2, :cond_4

    .line 125
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 127
    iget-boolean v0, p2, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mFlashlightEnabled:Z

    .line 129
    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p2, v3}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->setFlashlight(Z)V

    .line 133
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    new-instance v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;

    .line 141
    invoke-direct {v0, p2, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;I)V

    .line 143
    iget-object p2, p2, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    .line 146
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 151
    iget-boolean p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mForceOff:Z

    .line 153
    if-eq p2, v2, :cond_5

    .line 155
    iput-boolean v2, p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->mForceOff:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->isAvailable()Z

    .line 159
    move-result p2

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->dispatchListeners(IZ)V

    .line 163
    :cond_5
    :goto_2
    return-void
    .line 166
.end method

.class public final Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/ThermalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/ThermalController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ThermalController;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 9
    const-string/jumbo v0, "thermal_temp_state_value"

    .line 10
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    move-result p1

    .line 17
    const v0, 0xf4240

    .line 18
    div-int/2addr p1, v0

    .line 21
    rem-int/lit8 p1, p1, 0xa

    .line 22
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ThermalController;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->uiHandler:Landroid/os/Handler;

    .line 26
    new-instance v1, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1$onChange$1;

    .line 28
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1$onChange$1;-><init>(Lcom/android/systemui/controlcenter/policy/ThermalController;I)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
    .line 36
.end method

.class public final synthetic Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/EmergencyButton;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/EmergencyButton;

    .line 2
    iget-boolean p1, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    .line 4
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 9
    invoke-virtual {p1}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    .line 11
    move-result p1

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez p1, :cond_1

    .line 16
    sget-object p1, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 18
    const-string/jumbo p1, "ro.miui.region"

    .line 20
    const-string v2, "CN"

    .line 23
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    const-string v2, "IN"

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 37
    if-eqz p1, :cond_0

    .line 39
    move p1, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move p1, v0

    .line 43
    :goto_0
    if-eqz p1, :cond_2

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    .line 48
    move v0, v1

    .line 51
    :cond_2
    return v0
    .line 52
.end method

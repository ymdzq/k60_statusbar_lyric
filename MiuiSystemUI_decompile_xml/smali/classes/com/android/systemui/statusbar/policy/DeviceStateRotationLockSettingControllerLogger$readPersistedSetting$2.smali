.class final Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$readPersistedSetting$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$readPersistedSetting$2;->this$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 8
    move-result v1

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger$readPersistedSetting$2;->this$0:Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;

    .line 12
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 14
    move-result v2

    .line 17
    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;->access$toDevicePostureString(Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingControllerLogger;I)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt2()I

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    const/4 v3, 0x1

    .line 28
    if-eq v2, v3, :cond_1

    .line 29
    const/4 v3, 0x2

    .line 31
    if-eq v2, v3, :cond_0

    .line 32
    const-string v2, "Unknown"

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    const-string v2, "UNLOCKED"

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const-string v2, "LOCKED"

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    const-string v2, "IGNORED"

    .line 43
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool1()Z

    .line 45
    move-result v3

    .line 48
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool2()Z

    .line 49
    move-result p1

    .line 52
    const-string v4, "readPersistedSetting: caller="

    .line 53
    const-string v5, ", state="

    .line 55
    const-string v6, " ["

    .line 57
    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/keyguard/wallpaper/entity/ClockInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object v0

    .line 62
    const-string v1, "], rotationLockSettingForState: "

    .line 63
    const-string v4, ", shouldBeLocked="

    .line 65
    invoke-static {v0, p0, v1, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    const-string p0, ", isLocked="

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    return-object p0
    .line 85
.end method

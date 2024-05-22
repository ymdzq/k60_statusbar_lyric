.class public final Lcom/android/systemui/statusbar/policy/HDController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public isVisible:Z

.field public final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field public mIconId:I

.field public mIsAirplaneMode:Z

.field public mSubCount:I

.field public final mVolte:[Z

.field public mWifiAvailable:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Landroid/telephony/TelephonyManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HDController;->isVisible:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HDController;->mWifiAvailable:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HDController;->mIsAirplaneMode:Z

    .line 10
    const v1, 0x7f08189d    # @drawable/stat_sys_signal_hd_1 'res/drawable/stat_sys_signal_hd_1.xml'

    .line 12
    iput v1, p0, Lcom/android/systemui/statusbar/policy/HDController;->mIconId:I

    .line 15
    iput v0, p0, Lcom/android/systemui/statusbar/policy/HDController;->mSubCount:I

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HDController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 19
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 21
    move-result p2

    .line 24
    new-array p2, p2, [Z

    .line 25
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HDController;->mVolte:[Z

    .line 27
    iget p2, p0, Lcom/android/systemui/statusbar/policy/HDController;->mIconId:I

    .line 29
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 31
    const-string v0, "HD"

    .line 33
    const-string v1, "hd"

    .line 35
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 37
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/HDController;->isVisible:Z

    .line 40
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 42
    const-class p1, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 45
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 55
    return-void
    .line 58
.end method


# virtual methods
.method public final setIsAirplaneMode(Lcom/android/systemui/statusbar/connectivity/IconState;)V
    .locals 2

    .line 1
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HDController;->mIsAirplaneMode:Z

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v1, "setIsAirplaneMode: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    const-string v1, "HDController"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HDController;->mIsAirplaneMode:Z

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HDController;->update()V

    .line 30
    :cond_0
    return-void
    .line 33
.end method

.method public final setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->slotId:I

    .line 2
    if-ltz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HDController;->mVolte:[Z

    .line 6
    array-length v2, v1

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    aget-boolean v2, v1, v0

    .line 11
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->volte:Z

    .line 13
    if-eq v2, p1, :cond_0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v3, "setMobileDataIndicators: slotId="

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v3, ", volte="

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 39
    const-string v3, "HDController"

    .line 40
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    aput-boolean p1, v1, v0

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HDController;->update()V

    .line 47
    :cond_0
    return-void
    .line 50
.end method

.method public final setSubs(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    move-result p1

    .line 5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HDController;->mSubCount:I

    .line 6
    if-eq v0, p1, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v1, "setSubs: subCount="

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "HDController"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HDController;->mSubCount:I

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HDController;->update()V

    .line 32
    :cond_0
    return-void
    .line 35
.end method

.method public final update()V
    .locals 7

    .line 1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 2
    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HDController;->mVolte:[Z

    .line 5
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-nez v0, :cond_4

    .line 9
    array-length v0, v2

    .line 11
    if-ne v0, v1, :cond_4

    .line 12
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HDController;->mSubCount:I

    .line 14
    if-eq v0, v1, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 19
    if-nez v0, :cond_1

    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HDController;->mWifiAvailable:Z

    .line 23
    if-eqz v0, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HDController;->mIsAirplaneMode:Z

    .line 28
    if-eqz v0, :cond_2

    .line 30
    goto :goto_1

    .line 32
    :cond_2
    array-length v0, v2

    .line 33
    move v5, v3

    .line 34
    :goto_0
    if-ge v5, v0, :cond_4

    .line 35
    aget-boolean v6, v2, v5

    .line 37
    if-eqz v6, :cond_3

    .line 39
    move v0, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_4
    :goto_1
    move v0, v3

    .line 46
    :goto_2
    iget v5, p0, Lcom/android/systemui/statusbar/policy/HDController;->mIconId:I

    .line 47
    if-eqz v2, :cond_7

    .line 49
    array-length v6, v2

    .line 51
    if-ne v6, v1, :cond_7

    .line 52
    aget-boolean v1, v2, v3

    .line 54
    if-eqz v1, :cond_5

    .line 56
    aget-boolean v3, v2, v4

    .line 58
    if-eqz v3, :cond_5

    .line 60
    const v1, 0x7f08189e    # @drawable/stat_sys_signal_hd_12 'res/drawable/stat_sys_signal_hd_12.xml'

    .line 62
    goto :goto_3

    .line 65
    :cond_5
    if-eqz v1, :cond_6

    .line 66
    const v1, 0x7f08189d    # @drawable/stat_sys_signal_hd_1 'res/drawable/stat_sys_signal_hd_1.xml'

    .line 68
    goto :goto_3

    .line 71
    :cond_6
    aget-boolean v1, v2, v4

    .line 72
    if-eqz v1, :cond_7

    .line 74
    const v1, 0x7f0818a3    # @drawable/stat_sys_signal_hd_2 'res/drawable/stat_sys_signal_hd_2.xml'

    .line 76
    goto :goto_3

    .line 79
    :cond_7
    move v1, v5

    .line 80
    :goto_3
    const-string v2, "hd"

    .line 81
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HDController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 83
    if-eq v1, v5, :cond_8

    .line 85
    iput v1, p0, Lcom/android/systemui/statusbar/policy/HDController;->mIconId:I

    .line 87
    const-string v4, "HD"

    .line 89
    move-object v5, v3

    .line 91
    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 92
    invoke-virtual {v5, v4, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 94
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HDController;->isVisible:Z

    .line 97
    if-eq v0, v1, :cond_9

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HDController;->isVisible:Z

    .line 101
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 103
    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 105
    :cond_9
    return-void
    .line 108
.end method

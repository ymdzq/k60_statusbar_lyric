.class public final Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;
.super Lcom/miui/maml/ScreenElementRoot;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;


# instance fields
.field public curCategory:Ljava/lang/String;

.field public mBatteryInfo:Lcom/miui/charge/MiuiBatteryStatus;

.field public final mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

.field public final mBatteryState:Lcom/miui/maml/data/IndexedVariable;

.field public final mBatteryType:Lcom/miui/maml/data/IndexedVariable;

.field public mFrameRateBatteryFull:F

.field public mFrameRateBatteryLow:F

.field public mFrameRateCharging:F

.field public mInit:Z

.field public mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

.field public mNormalFrameRate:F


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenContext;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 2
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 7
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 9
    const-string v2, "battery_state"

    .line 11
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, v2, v1, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 14
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lcom/miui/maml/data/IndexedVariable;

    .line 17
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 19
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 21
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 23
    const-string v2, "battery_type"

    .line 25
    invoke-direct {v0, v2, v1, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 27
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mBatteryType:Lcom/miui/maml/data/IndexedVariable;

    .line 30
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 32
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 34
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 36
    const-string v2, "battery_level"

    .line 38
    invoke-direct {v0, v2, v1, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 40
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 43
    invoke-virtual {p0, p0}, Lcom/miui/maml/ScreenElementRoot;->setOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 45
    new-instance p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockscreenBitmapProviderFactory;

    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreenImp/LockscreenBitmapProviderFactory;-><init>()V

    .line 50
    const-string v0, "BitmapProvider"

    .line 53
    invoke-virtual {p1, v0, p0}, Lcom/miui/maml/ScreenContext;->registerObjectFactory(Ljava/lang/String;Lcom/miui/maml/ObjectFactory;)V

    .line 55
    new-instance p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockscreenActionCommandFactory;

    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreenImp/LockscreenActionCommandFactory;-><init>()V

    .line 60
    const-string v0, "ActionCommand"

    .line 63
    invoke-virtual {p1, v0, p0}, Lcom/miui/maml/ScreenContext;->registerObjectFactory(Ljava/lang/String;Lcom/miui/maml/ObjectFactory;)V

    .line 65
    return-void
    .line 68
.end method

.method public static endUnlockMoving(Lcom/miui/maml/elements/ElementGroup;Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/ScreenElement;

    .line 3
    instance-of v1, v0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eq p1, v0, :cond_1

    .line 5
    iget-boolean v1, v0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 8
    :cond_2
    instance-of v1, v0, Lcom/miui/maml/elements/ElementGroup;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lcom/miui/maml/elements/ElementGroup;

    invoke-static {v0, p1}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lcom/miui/maml/elements/ElementGroup;Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static startUnlockMoving(Lcom/miui/maml/elements/ElementGroup;Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/ScreenElement;

    .line 3
    instance-of v1, v0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;

    if-eq p1, v0, :cond_1

    .line 5
    iget-boolean v1, v0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mAlwaysShow:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;->mUnlockingHide:Z

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 9
    :cond_2
    instance-of v1, v0, Lcom/miui/maml/elements/ElementGroup;

    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Lcom/miui/maml/elements/ElementGroup;

    invoke-static {v0, p1}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lcom/miui/maml/elements/ElementGroup;Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final endUnlockMoving(Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-static {p0, p1}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->endUnlockMoving(Lcom/miui/maml/elements/ElementGroup;Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;)V

    return-void
.end method

.method public final finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ScreenElementRoot;->finish()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 6
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    .line 9
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/charge/MiuiBatteryStatus;

    .line 11
    return-void
    .line 13
.end method

.method public final haptic(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 2
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 7
    return-void
    .line 10
.end method

.method public final init()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 2
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 10
    move-result v1

    .line 13
    const-string v2, "pref_key_enable_notification_body"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-ne v0, v3, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move v0, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 32
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 34
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 36
    const-wide/16 v6, 0x0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    move-wide v8, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-wide v8, v6

    .line 44
    :goto_1
    const-string/jumbo v10, "sms_body_preview"

    .line 45
    invoke-static {v10, v2, v8, v9}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 48
    iput-boolean v3, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    .line 51
    if-nez v0, :cond_2

    .line 53
    new-instance v0, Lcom/android/keyguard/AwesomeLockScreenImp/BlockedColumnsSetter;

    .line 55
    const-string v2, "body"

    .line 57
    filled-new-array {v2}, [Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 62
    invoke-direct {v0, v2}, Lcom/android/keyguard/AwesomeLockScreenImp/BlockedColumnsSetter;-><init>([Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 66
    invoke-virtual {v2, v0}, Lcom/miui/maml/data/VariableBinderManager;->acceptVisitor(Lcom/miui/maml/data/VariableBinderVisitor;)V

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 79
    const-string v1, "__is_secure"

    .line 80
    invoke-virtual {p0, v1, v0}, Lcom/miui/maml/ScreenElementRoot;->putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    .line 85
    if-eqz v0, :cond_3

    .line 87
    goto :goto_2

    .line 89
    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    .line 90
    if-eqz v0, :cond_4

    .line 92
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 94
    goto :goto_2

    .line 96
    :cond_4
    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    .line 97
    if-eqz v0, :cond_5

    .line 99
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 101
    goto :goto_2

    .line 103
    :cond_5
    move-wide v4, v6

    .line 104
    :goto_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 105
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 107
    const-string v1, "operator_customization"

    .line 109
    invoke-static {v1, v0, v4, v5}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 111
    invoke-super {p0}, Lcom/miui/maml/ScreenElementRoot;->init()V

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/charge/MiuiBatteryStatus;

    .line 117
    if-eqz v0, :cond_6

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->onRefreshBatteryInfo(Lcom/miui/charge/MiuiBatteryStatus;)V

    .line 121
    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/charge/MiuiBatteryStatus;

    .line 125
    :cond_6
    return-void
    .line 127
.end method

.method public final onAddVariableUpdater(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onAddVariableUpdater(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 2
    new-instance p0, Lcom/miui/maml/data/BatteryVariableUpdater;

    .line 5
    invoke-direct {p0, p1}, Lcom/miui/maml/data/BatteryVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 7
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 10
    new-instance p0, Lcom/miui/maml/data/VolumeVariableUpdater;

    .line 13
    invoke-direct {p0, p1}, Lcom/miui/maml/data/VolumeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 15
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 18
    return-void
    .line 21
.end method

.method public final onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo p3, "unlock"

    .line 2
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    move-result p3

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p3, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 12
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 14
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/AwesomeLockScreen;->unlocked(Landroid/content/Intent;I)V

    .line 17
    goto/16 :goto_0

    .line 20
    :cond_0
    const-string p3, "pokewakelock"

    .line 22
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p3

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz p3, :cond_1

    .line 29
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 31
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 35
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 37
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 39
    if-ne p1, v1, :cond_b

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 43
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 49
    goto/16 :goto_0

    .line 52
    :cond_1
    const-string p3, "disableFod"

    .line 54
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p3

    .line 59
    if-eqz p3, :cond_3

    .line 60
    if-eqz p2, :cond_2

    .line 62
    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    .line 64
    move-result p1

    .line 67
    if-ne p1, v1, :cond_2

    .line 68
    move v0, v1

    .line 70
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 71
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 78
    move-result-object p0

    .line 81
    invoke-interface {p0, v0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->disableLockScreenFod(Z)V

    .line 82
    goto/16 :goto_0

    .line 85
    :cond_3
    const-string p3, "disableFodAnim"

    .line 87
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p3

    .line 92
    if-eqz p3, :cond_5

    .line 93
    if-eqz p2, :cond_4

    .line 95
    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    .line 97
    move-result p1

    .line 100
    if-ne p1, v1, :cond_4

    .line 101
    move v0, v1

    .line 103
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 104
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 111
    move-result-object p0

    .line 114
    invoke-interface {p0, v0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->disableLockScreenFodAnim(Z)V

    .line 115
    goto :goto_0

    .line 118
    :cond_5
    const-string p3, "disableChargeAnim"

    .line 119
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result p3

    .line 124
    if-eqz p3, :cond_7

    .line 125
    if-eqz p2, :cond_6

    .line 127
    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    .line 129
    move-result p1

    .line 132
    if-ne p1, v1, :cond_6

    .line 133
    move v0, v1

    .line 135
    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 136
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    sput-boolean v0, Lcom/miui/charge/ChargeUtils;->sChargeAnimationDisabled:Z

    .line 143
    goto :goto_0

    .line 145
    :cond_7
    const-string/jumbo p3, "startFaceUnlock"

    .line 146
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result p3

    .line 152
    if-eqz p3, :cond_8

    .line 153
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 155
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 157
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 159
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_THIRD_THEME_REQUESTED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestAuthInternal(Lcom/android/keyguard/FaceAuthUiEvent;)Z

    .line 163
    goto :goto_0

    .line 166
    :cond_8
    const-string/jumbo p3, "stopFaceUnlock"

    .line 167
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result p3

    .line 173
    if-eqz p3, :cond_9

    .line 174
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 176
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 183
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    move-result-object p0

    .line 188
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    sget-object p1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 196
    goto :goto_0

    .line 199
    :cond_9
    const-string p3, "disableKeyguardFaceUnlockAnim"

    .line 200
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result p1

    .line 205
    if-eqz p1, :cond_b

    .line 206
    if-eqz p2, :cond_a

    .line 208
    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    .line 210
    move-result p1

    .line 213
    if-ne p1, v1, :cond_a

    .line 214
    move v0, v1

    .line 216
    :cond_a
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 217
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/keyguard/AwesomeLockScreen;->disableLockScreenFaceUnlockAnim(Z)V

    .line 221
    :cond_b
    :goto_0
    return-void
    .line 224
.end method

.method public final onLoad(Lorg/w3c/dom/Element;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const-string v0, "frameRate"

    .line 10
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 12
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 14
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    .line 18
    const-string v1, "frameRateCharging"

    .line 20
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 22
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    .line 26
    const-string v0, "frameRateBatteryLow"

    .line 28
    iget v1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    .line 30
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 32
    move-result v0

    .line 35
    iput v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    .line 36
    const-string v0, "frameRateBatteryFull"

    .line 38
    iget v1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    .line 40
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 42
    move-result v0

    .line 45
    iput v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    .line 46
    const-string v0, "clearCanvas"

    .line 48
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    const-string v0, "false"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 56
    move-result p1

    .line 59
    const/4 v0, 0x1

    .line 60
    xor-int/2addr p1, v0

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setClearCanvas(Z)V

    .line 62
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    .line 65
    const-string v1, "_id"

    .line 67
    const-string v2, "number"

    .line 69
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 74
    const-string v3, "content://call_log/calls"

    .line 75
    invoke-virtual {p1, v3}, Lcom/miui/maml/data/VariableBinderManager;->addContentProviderBinder(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    .line 77
    move-result-object v3

    .line 80
    invoke-virtual {v3, v2}, Lcom/miui/maml/data/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    .line 81
    move-result-object v2

    .line 84
    const-string/jumbo v3, "type=3 AND new=1"

    .line 85
    invoke-virtual {v2, v3}, Lcom/miui/maml/data/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    .line 88
    move-result-object v2

    .line 91
    const-string v3, "call_missed_count"

    .line 92
    invoke-virtual {v2, v3}, Lcom/miui/maml/data/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    .line 94
    filled-new-array {v1}, [Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 100
    const-string v2, "content://sms/inbox"

    .line 101
    invoke-virtual {p1, v2}, Lcom/miui/maml/data/VariableBinderManager;->addContentProviderBinder(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    .line 103
    move-result-object p1

    .line 106
    invoke-virtual {p1, v1}, Lcom/miui/maml/data/ContentProviderBinder$Builder;->setColumns([Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    .line 107
    move-result-object p1

    .line 110
    const-string/jumbo v1, "seen=0 AND read=0"

    .line 111
    invoke-virtual {p1, v1}, Lcom/miui/maml/data/ContentProviderBinder$Builder;->setWhere(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    .line 114
    move-result-object p1

    .line 117
    const-string/jumbo v1, "sms_unread_count"

    .line 118
    invoke-virtual {p1, v1}, Lcom/miui/maml/data/ContentProviderBinder$Builder;->setCountName(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    .line 121
    iget p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    .line 124
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 126
    return v0
    .line 128
.end method

.method public final onRefreshBatteryInfo(Lcom/miui/charge/MiuiBatteryStatus;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mInit:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mBatteryInfo:Lcom/miui/charge/MiuiBatteryStatus;

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

    .line 9
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 11
    int-to-double v1, v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 14
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mBatteryType:Lcom/miui/maml/data/IndexedVariable;

    .line 17
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->plugged:I

    .line 19
    int-to-double v1, v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 22
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 25
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 27
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 29
    int-to-double v1, v1

    .line 31
    const-string v3, "ChargeWireState"

    .line 32
    invoke-static {v3, v0, v1, v2}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 34
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 37
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 39
    iget v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 41
    int-to-double v1, v1

    .line 43
    const-string v3, "ChargeSpeed"

    .line 44
    invoke-static {v3, v0, v1, v2}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 46
    invoke-virtual {p1}, Lcom/miui/charge/MiuiBatteryStatus;->isPluggedIn()Z

    .line 49
    move-result v0

    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v2, 0x1

    .line 54
    const-string v3, "BatteryFull"

    .line 55
    const-string v4, "Charging"

    .line 57
    const-string v5, "Normal"

    .line 59
    const-string v6, "BatteryLow"

    .line 61
    if-nez v0, :cond_3

    .line 63
    iget v0, p1, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 65
    const/16 v7, 0x14

    .line 67
    if-ge v0, v7, :cond_1

    .line 69
    move v0, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move v0, v1

    .line 73
    :goto_0
    if-eqz v0, :cond_2

    .line 74
    goto :goto_1

    .line 76
    :cond_2
    iget p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mNormalFrameRate:F

    .line 77
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 79
    move p1, v1

    .line 81
    move-object v0, v5

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/miui/charge/MiuiBatteryStatus;->isPluggedIn()Z

    .line 84
    move-result v0

    .line 87
    if-eqz v0, :cond_5

    .line 88
    iget p1, p1, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 90
    const/16 v0, 0x64

    .line 92
    if-lt p1, v0, :cond_4

    .line 94
    iget p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    .line 96
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 98
    const/4 p1, 0x3

    .line 100
    move-object v0, v3

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    iget p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    .line 103
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 105
    move p1, v2

    .line 107
    move-object v0, v4

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    iget p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    .line 110
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 112
    const/4 p1, 0x2

    .line 114
    move-object v0, v6

    .line 115
    :goto_2
    iget-object v7, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 116
    if-ne v0, v7, :cond_6

    .line 118
    return-void

    .line 120
    :cond_6
    iget v7, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 121
    invoke-virtual {p0, v7}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 123
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 126
    iget-object v7, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lcom/miui/maml/data/IndexedVariable;

    .line 129
    int-to-double v8, p1

    .line 131
    invoke-virtual {v7, v8, v9}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 132
    invoke-virtual {p0, v3, v1}, Lcom/miui/maml/ScreenElementRoot;->showCategory(Ljava/lang/String;Z)V

    .line 135
    invoke-virtual {p0, v4, v1}, Lcom/miui/maml/ScreenElementRoot;->showCategory(Ljava/lang/String;Z)V

    .line 138
    invoke-virtual {p0, v6, v1}, Lcom/miui/maml/ScreenElementRoot;->showCategory(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p0, v5, v1}, Lcom/miui/maml/ScreenElementRoot;->showCategory(Ljava/lang/String;Z)V

    .line 144
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/ScreenElementRoot;->showCategory(Ljava/lang/String;Z)V

    .line 147
    iput-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 150
    return-void
    .line 152
.end method

.method public final onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 17
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 22
    const/4 p1, 0x0

    .line 24
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 25
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/AwesomeLockScreen;->unlocked(Landroid/content/Intent;I)V

    .line 28
    return v0
    .line 31
.end method

.method public final onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 2
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 6
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 8
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 10
    const/4 p2, 0x1

    .line 12
    if-ne p1, p2, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 15
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public final shouldPlaySound()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 2
    check-cast p0, Lcom/android/keyguard/AwesomeLockScreen;

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->isSoundEnable()Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final startUnlockMoving(Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-static {p0, p1}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->startUnlockMoving(Lcom/miui/maml/elements/ElementGroup;Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;)V

    return-void
.end method

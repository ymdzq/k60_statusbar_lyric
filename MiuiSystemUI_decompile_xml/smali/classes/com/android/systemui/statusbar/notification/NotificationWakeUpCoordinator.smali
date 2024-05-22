.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final delayedDozeAmount:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;

.field public static final notificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;


# instance fields
.field public final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public collapsedEnoughToHide:Z

.field public delayedDozeAmountAnimator:Landroidx/core/animation/ObjectAnimator;

.field public delayedDozeAmountOverride:F

.field public final dozeAmountInterpolator:Landroid/view/animation/Interpolator;

.field public final dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public fullyAwake:Z

.field public hardDozeAmountOverride:Ljava/lang/Float;

.field public hardDozeAmountOverrideSource:Ljava/lang/String;

.field public inputEasedDozeAmount:F

.field public inputLinearDozeAmount:F

.field public final logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

.field public final mEntrySetToClearWhenFinished:Ljava/util/Set;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mLinearVisibilityAmount:F

.field public mNotificationsVisible:Z

.field public mNotificationsVisibleForExpansion:Z

.field public mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public mVisibilityAmount:F

.field public mVisibilityAnimator:Landroidx/core/animation/ObjectAnimator;

.field public mVisibilityInterpolator:Landroid/view/animation/Interpolator;

.field public notificationsFullyHidden:Z

.field public outputEasedDozeAmount:F

.field public outputLinearDozeAmount:F

.field public pulseExpanding:Z

.field public pulsing:Z

.field public final screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public state:I

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final wakeUpListeners:Ljava/util/ArrayList;

.field public wakingUp:Z

.field public willWakeUp:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;-><init>(I)V

    .line 5
    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;

    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;-><init>(I)V

    .line 13
    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmount:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;

    .line 16
    return-void
    .line 18
.end method

.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 13
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    .line 15
    sget-object p5, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 17
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    .line 19
    const-string p5, "n/a"

    .line 21
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverrideSource:Ljava/lang/String;

    .line 23
    sget-object p5, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 25
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeAmountInterpolator:Landroid/view/animation/Interpolator;

    .line 27
    new-instance p5, Ljava/util/LinkedHashSet;

    .line 29
    invoke-direct {p5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 31
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    .line 34
    new-instance p5, Ljava/util/ArrayList;

    .line 36
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    .line 41
    const/4 p6, 0x1

    .line 43
    iput p6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    .line 44
    new-instance p6, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$bypassStateChangedListener$1;

    .line 46
    invoke-direct {p6, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$bypassStateChangedListener$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    .line 48
    invoke-virtual {p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 51
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 54
    invoke-interface {p3, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 57
    invoke-virtual {p4, p6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->registerOnBypassStateChangedListener(Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;)V

    .line 60
    new-instance p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;

    .line 63
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    .line 65
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
    .line 71
.end method

.method public static synthetic getDozeAmountInterpolator$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getStatusBarState$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final clearHardDozeAmountOverride()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverrideSource:Ljava/lang/String;

    .line 11
    const-string v1, "Cleared: "

    .line 13
    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverrideSource:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateDozeAmount()V

    .line 21
    const/4 p0, 0x1

    .line 24
    return p0
    .line 25
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputLinearDozeAmount:F

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "inputLinearDozeAmount: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputEasedDozeAmount:F

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "inputEasedDozeAmount: "

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountOverride:F

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "delayedDozeAmountOverride: "

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    const-string v1, "hardDozeAmountOverride: "

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverrideSource:Ljava/lang/String;

    .line 78
    const-string v0, "hardDozeAmountOverrideSource: "

    .line 80
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 82
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "outputLinearDozeAmount: "

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputEasedDozeAmount:F

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "outputEasedDozeAmount: "

    .line 108
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string p2, "mNotificationVisibleAmount: 0.0"

    .line 123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    .line 128
    const-string v0, "mNotificationsVisible: "

    .line 130
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 132
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    .line 135
    const-string v0, "mNotificationsVisibleForExpansion: "

    .line 137
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 139
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "mVisibilityAmount: "

    .line 146
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p2

    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "mLinearVisibilityAmount: "

    .line 165
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p2

    .line 176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulseExpanding:Z

    .line 180
    const-string v0, "pulseExpanding: "

    .line 182
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 184
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    .line 187
    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 189
    move-result-object p2

    .line 192
    const-string/jumbo v0, "state: "

    .line 193
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 196
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    .line 199
    const-string v0, "fullyAwake: "

    .line 201
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 203
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    .line 206
    const-string/jumbo v0, "wakingUp: "

    .line 208
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 211
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    .line 214
    const-string/jumbo v0, "willWakeUp: "

    .line 216
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 219
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    .line 222
    const-string v0, "collapsedEnoughToHide: "

    .line 224
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 226
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    .line 229
    const-string v0, "pulsing: "

    .line 231
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 233
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    .line 238
    const-string v1, "notificationsFullyHidden: "

    .line 240
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object p2

    .line 251
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    .line 255
    move-result p0

    .line 258
    const-string p2, "canShowPulsingHuns: "

    .line 259
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 261
    return-void
    .line 264
.end method

.method public final getCanShowPulsingHuns()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 4
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v0, :cond_2

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    .line 20
    if-nez v0, :cond_0

    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    .line 24
    if-eqz v0, :cond_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 28
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 30
    move-result v0

    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    move v0, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    move v0, v2

    .line 39
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    .line 40
    if-eqz p0, :cond_3

    .line 42
    move v0, v1

    .line 44
    :cond_3
    return v0
    .line 45
.end method

.method public final logDelayingClockWakeUpAnimation(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logDelayingClockWakeUpAnimation$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logDelayingClockWakeUpAnimation$2;

    .line 9
    const-string v2, "NotificationWakeUpCoordinator"

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 23
    return-void
    .line 26
.end method

.method public final maybeClearHardDozeAmountOverrideHidingNotifs()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 8
    move-result v0

    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    cmpl-float v0, v0, v3

    .line 14
    if-nez v0, :cond_0

    .line 16
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 23
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 25
    move-result v3

    .line 28
    if-ne v3, v1, :cond_1

    .line 29
    move v3, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v2

    .line 33
    :goto_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 34
    move-result v0

    .line 37
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 38
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 40
    move-result v4

    .line 43
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 44
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->overrideNotificationsFullyDozingOnKeyguard()Z

    .line 46
    if-eqz v3, :cond_2

    .line 49
    if-nez v0, :cond_3

    .line 51
    :cond_2
    if-nez v4, :cond_3

    .line 53
    goto :goto_2

    .line 55
    :cond_3
    move v1, v2

    .line 56
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 62
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logMaybeClearHardDozeAmountOverrideHidingNotifs$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logMaybeClearHardDozeAmountOverrideHidingNotifs$2;

    .line 64
    const/4 v7, 0x0

    .line 66
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 67
    const-string v8, "NotificationWakeUpCoordinator"

    .line 69
    invoke-virtual {v2, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 71
    move-result-object v5

    .line 74
    const-string/jumbo v6, "willRemove="

    .line 75
    const-string v7, " onKeyguard="

    .line 78
    const-string v8, " dozing="

    .line 80
    invoke-static {v6, v1, v7, v3, v8}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v3

    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    const-string v0, " bypass="

    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, " animating=false"

    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 105
    invoke-interface {v5, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 109
    if-eqz v1, :cond_4

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->clearHardDozeAmountOverride()Z

    .line 114
    :cond_4
    return-void
    .line 117
.end method

.method public final notifyAnimationStart(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 9
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    .line 11
    const/4 v1, 0x0

    .line 13
    cmpl-float v1, v0, v1

    .line 14
    if-eqz v1, :cond_1

    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    cmpl-float v0, v0, v1

    .line 20
    if-nez v0, :cond_4

    .line 22
    :cond_1
    if-eqz p1, :cond_2

    .line 24
    const v0, 0x3fe66666    # 1.8f

    .line 26
    goto :goto_0

    .line 29
    :cond_2
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 30
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBackgroundXFactor:F

    .line 32
    if-eqz p1, :cond_3

    .line 34
    sget-object p1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 36
    goto :goto_1

    .line 38
    :cond_3
    sget-object p1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 39
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHideXInterpolator:Landroid/view/animation/Interpolator;

    .line 41
    :cond_4
    return-void
    .line 43
.end method

.method public final onDozeAmountChanged(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    cmpg-float v1, p1, v1

    .line 9
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v3

    .line 17
    :goto_0
    if-nez v1, :cond_2

    .line 18
    const/4 v1, 0x0

    .line 20
    cmpg-float v1, p1, v1

    .line 21
    if-nez v1, :cond_1

    .line 23
    move v1, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v1, v3

    .line 27
    :goto_1
    if-nez v1, :cond_2

    .line 28
    goto :goto_2

    .line 30
    :cond_2
    move v2, v3

    .line 31
    :goto_2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastOnDozeAmountChangedLogWasFractional:Z

    .line 32
    if-eqz v1, :cond_3

    .line 34
    if-eqz v2, :cond_3

    .line 36
    goto :goto_3

    .line 38
    :cond_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastOnDozeAmountChangedLogWasFractional:Z

    .line 39
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 41
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logOnDozeAmountChanged$2;

    .line 43
    const/4 v3, 0x0

    .line 45
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 46
    const-string v4, "NotificationWakeUpCoordinator"

    .line 48
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 50
    move-result-object v1

    .line 53
    float-to-double v2, p1

    .line 54
    invoke-interface {v1, v2, v3}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 55
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 61
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 65
    :goto_3
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputLinearDozeAmount:F

    .line 68
    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputEasedDozeAmount:F

    .line 70
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->overrideNotificationsFullyDozingOnKeyguard()Z

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->overrideDozeAmountIfBypass()Z

    .line 77
    move-result p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    return-void

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->clearHardDozeAmountOverride()Z

    .line 84
    move-result p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    return-void

    .line 90
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateDozeAmount()V

    .line 91
    return-void
    .line 94
.end method

.method public final onDozingChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p1, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    .line 5
    :cond_0
    return-void
    .line 8
.end method

.method public final onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez p2, :cond_5

    .line 9
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    .line 11
    const/4 v3, 0x0

    .line 13
    cmpg-float p2, p2, v3

    .line 14
    const/4 v4, 0x1

    .line 16
    if-nez p2, :cond_0

    .line 17
    move p2, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p2, v2

    .line 21
    :goto_0
    if-nez p2, :cond_6

    .line 22
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    .line 24
    cmpg-float p2, p2, v3

    .line 26
    if-nez p2, :cond_1

    .line 28
    move p2, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move p2, v2

    .line 32
    :goto_1
    if-nez p2, :cond_6

    .line 33
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 35
    if-eqz p2, :cond_2

    .line 37
    iget-boolean v3, p2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDismissed:Z

    .line 39
    if-eqz v3, :cond_2

    .line 41
    move v3, v4

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v3, v2

    .line 45
    :goto_2
    if-eqz v3, :cond_3

    .line 46
    move v0, v2

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    .line 50
    if-nez v3, :cond_6

    .line 52
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    .line 54
    if-nez v3, :cond_6

    .line 56
    if-eqz p2, :cond_4

    .line 58
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 60
    :cond_4
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_3

    .line 66
    :cond_5
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 67
    move-result p2

    .line 70
    if-eqz p2, :cond_6

    .line 71
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 76
    if-eqz p1, :cond_6

    .line 78
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 80
    :cond_6
    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    .line 83
    return-void
    .line 86
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    .line 1
    const v0, 0x3f666666    # 0.9f

    .line 2
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 5
    cmpg-float p1, p1, v0

    .line 7
    const/4 v0, 0x1

    .line 9
    if-gtz p1, :cond_0

    .line 10
    move p1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    .line 15
    if-eq p1, v1, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    .line 19
    move-result v1

    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    .line 27
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 38
    :cond_1
    return-void
    .line 41
.end method

.method public final onStateChanged(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logOnStateChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logOnStateChanged$2;

    .line 11
    const/4 v4, 0x0

    .line 13
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 14
    const-string v5, "NotificationWakeUpCoordinator"

    .line 16
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v2

    .line 21
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 22
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 25
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    .line 31
    if-nez v0, :cond_0

    .line 33
    if-nez p1, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    const-string v1, "Override: Shade->Shade (lock cancelled by unlock)"

    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setHardDozeAmountOverride(Ljava/lang/String;Z)V

    .line 40
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    .line 43
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->overrideNotificationsFullyDozingOnKeyguard()Z

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->overrideDozeAmountIfBypass()Z

    .line 51
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    .line 57
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->maybeClearHardDozeAmountOverrideHidingNotifs()V

    .line 60
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    .line 63
    return-void
    .line 65
.end method

.method public final overrideDozeAmountIfBypass()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 11
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 13
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    const-string v0, "Override: bypass (keyguard)"

    .line 20
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setHardDozeAmountOverride(Ljava/lang/String;Z)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "Override: bypass (shade)"

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setHardDozeAmountOverride(Ljava/lang/String;Z)V

    .line 28
    :goto_0
    return v2

    .line 31
    :cond_1
    return v1
    .line 32
.end method

.method public final setHardDozeAmountOverride(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetDozeAmountOverride$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetDozeAmountOverride$2;

    .line 9
    const/4 v3, 0x0

    .line 11
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 12
    const-string v4, "NotificationWakeUpCoordinator"

    .line 14
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object v1

    .line 19
    invoke-interface {v1, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 20
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 26
    if-eqz p2, :cond_0

    .line 29
    const/high16 p2, 0x3f800000    # 1.0f

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    const/4 p2, 0x0

    .line 34
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverrideSource:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateDozeAmount()V

    .line 43
    return-void
    .line 46
.end method

.method public final setNotificationsVisible(ZZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAnimator:Landroidx/core/animation/ObjectAnimator;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Landroidx/core/animation/ValueAnimator;->cancel()V

    .line 13
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    const/4 v1, 0x0

    .line 18
    if-eqz p2, :cond_5

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifyAnimationStart(Z)V

    .line 21
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    .line 24
    if-eqz p1, :cond_2

    .line 26
    sget-object p2, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    sget-object p2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 31
    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    .line 33
    if-eqz p1, :cond_3

    .line 35
    goto :goto_1

    .line 37
    :cond_3
    move v0, v1

    .line 38
    :goto_1
    const/4 p1, 0x1

    .line 39
    new-array p1, p1, [F

    .line 40
    const/4 p2, 0x0

    .line 42
    aput v0, p1, p2

    .line 43
    sget-object p2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;

    .line 45
    invoke-static {p0, p2, p1}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;

    .line 47
    move-result-object p1

    .line 50
    sget-object p2, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR:Landroidx/core/animation/LinearInterpolator;

    .line 51
    invoke-virtual {p1, p2}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 53
    const-wide/16 v0, 0x1f4

    .line 56
    if-eqz p3, :cond_4

    .line 58
    long-to-float p2, v0

    .line 60
    const/high16 p3, 0x3fc00000    # 1.5f

    .line 61
    div-float/2addr p2, p3

    .line 63
    float-to-long v0, p2

    .line 64
    :cond_4
    invoke-virtual {p1, v0, v1}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    .line 65
    invoke-virtual {p1}, Landroidx/core/animation/ObjectAnimator;->start()V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAnimator:Landroidx/core/animation/ObjectAnimator;

    .line 71
    goto :goto_3

    .line 73
    :cond_5
    if-eqz p1, :cond_6

    .line 74
    goto :goto_2

    .line 76
    :cond_6
    move v0, v1

    .line 77
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setVisibilityAmount(F)V

    .line 78
    :goto_3
    return-void
    .line 81
.end method

.method public final setNotificationsVisibleForExpansion(ZZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    .line 4
    if-nez p1, :cond_0

    .line 7
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public final setVisibilityAmount(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    cmpg-float v1, p1, v1

    .line 9
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v1, :cond_0

    .line 13
    move v1, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    :goto_0
    const/4 v4, 0x0

    .line 18
    if-nez v1, :cond_2

    .line 19
    cmpg-float v1, p1, v4

    .line 21
    if-nez v1, :cond_1

    .line 23
    move v1, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v1, v2

    .line 27
    :goto_1
    if-nez v1, :cond_2

    .line 28
    move v1, v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move v1, v2

    .line 32
    :goto_2
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetVisibilityAmountLogWasFractional:Z

    .line 33
    if-eqz v5, :cond_3

    .line 35
    if-eqz v1, :cond_3

    .line 37
    goto :goto_3

    .line 39
    :cond_3
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetVisibilityAmountLogWasFractional:Z

    .line 40
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 42
    sget-object v5, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetVisibilityAmount$2;

    .line 44
    const/4 v6, 0x0

    .line 46
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 47
    const-string v7, "NotificationWakeUpCoordinator"

    .line 49
    invoke-virtual {v0, v7, v1, v5, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 51
    move-result-object v1

    .line 54
    float-to-double v5, p1

    .line 55
    invoke-interface {v1, v5, v6}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 59
    :goto_3
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 66
    move-result p1

    .line 69
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    .line 70
    iget p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    .line 72
    cmpg-float p1, p1, v4

    .line 74
    if-nez p1, :cond_4

    .line 76
    move p1, v3

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    move p1, v2

    .line 80
    :goto_4
    if-nez p1, :cond_6

    .line 81
    iget p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    .line 83
    cmpg-float p1, p1, v4

    .line 85
    if-nez p1, :cond_5

    .line 87
    goto :goto_5

    .line 89
    :cond_5
    move v3, v2

    .line 90
    :goto_5
    if-eqz v3, :cond_9

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    .line 93
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    move-result-object v0

    .line 98
    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    move-result v1

    .line 102
    if-eqz v1, :cond_8

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    move-result-object v1

    .line 108
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 109
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 111
    if-eqz v1, :cond_7

    .line 113
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    .line 115
    goto :goto_6

    .line 118
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 119
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateHideAmount()V

    .line 122
    return-void
    .line 125
.end method

.method public final setWakingUp(ZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 13
    sget-object v5, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetWakingUp$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetWakingUp$2;

    .line 15
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 17
    const-string v6, "NotificationWakeUpCoordinator"

    .line 19
    const/4 v7, 0x0

    .line 21
    invoke-virtual {v3, v6, v4, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 22
    move-result-object v4

    .line 25
    invoke-interface {v4, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 26
    invoke-interface {v4, v2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 29
    invoke-virtual {v3, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 32
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    .line 35
    const/4 v4, 0x0

    .line 37
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    .line 38
    const/4 v5, 0x1

    .line 40
    if-eqz v1, :cond_8

    .line 41
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    .line 43
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 45
    if-eqz v8, :cond_7

    .line 47
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    .line 49
    if-nez v8, :cond_7

    .line 51
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 53
    move-result v8

    .line 56
    if-nez v8, :cond_7

    .line 57
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 59
    if-nez v8, :cond_0

    .line 61
    move-object v8, v7

    .line 63
    :cond_0
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 64
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getWakeUpHeight()F

    .line 66
    move-result v10

    .line 69
    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulseHeight(F)F

    .line 70
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    .line 73
    move-result v10

    .line 76
    const/high16 v11, -0x40800000    # -1.0f

    .line 77
    move v12, v4

    .line 79
    move v13, v5

    .line 80
    :goto_0
    if-ge v12, v10, :cond_6

    .line 81
    invoke-virtual {v8, v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtIndex(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 83
    move-result-object v14

    .line 86
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 87
    move-result v15

    .line 90
    const/16 v7, 0x8

    .line 91
    if-ne v15, v7, :cond_1

    .line 93
    goto :goto_2

    .line 95
    :cond_1
    iget-object v7, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 96
    if-ne v14, v7, :cond_2

    .line 98
    move v7, v5

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    move v7, v4

    .line 102
    :goto_1
    instance-of v15, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 103
    if-nez v15, :cond_3

    .line 105
    if-nez v7, :cond_3

    .line 107
    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 110
    move-result v15

    .line 113
    if-nez v15, :cond_4

    .line 114
    if-nez v7, :cond_4

    .line 116
    if-eqz v13, :cond_5

    .line 118
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 120
    move-result v7

    .line 123
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 124
    move-result v11

    .line 127
    int-to-float v11, v11

    .line 128
    add-float/2addr v7, v11

    .line 129
    iget-object v11, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 130
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 132
    move-result v11

    .line 135
    int-to-float v11, v11

    .line 136
    sub-float/2addr v7, v11

    .line 137
    move v13, v4

    .line 138
    move v11, v7

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    if-nez v13, :cond_5

    .line 141
    invoke-virtual {v14, v11}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 143
    :cond_5
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 146
    const/4 v7, 0x0

    .line 148
    goto :goto_0

    .line 149
    :cond_6
    iput-boolean v5, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 150
    :cond_7
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 152
    move-result v7

    .line 155
    if-eqz v7, :cond_8

    .line 156
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    .line 158
    if-nez v7, :cond_8

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    .line 162
    move-result v7

    .line 165
    invoke-virtual {v0, v7, v4}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    .line 166
    :cond_8
    if-eqz v1, :cond_b

    .line 169
    if-eqz v2, :cond_b

    .line 171
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountAnimator:Landroidx/core/animation/ObjectAnimator;

    .line 173
    if-eqz v1, :cond_9

    .line 175
    move v1, v5

    .line 177
    goto :goto_3

    .line 178
    :cond_9
    move v1, v4

    .line 179
    :goto_3
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 180
    sget-object v7, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logStartDelayedDozeAmountAnimation$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logStartDelayedDozeAmountAnimation$2;

    .line 182
    const/4 v8, 0x0

    .line 184
    invoke-virtual {v3, v6, v2, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 185
    move-result-object v2

    .line 188
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 189
    invoke-virtual {v3, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 192
    if-eqz v1, :cond_a

    .line 195
    goto :goto_4

    .line 197
    :cond_a
    const/high16 v1, 0x3f800000    # 1.0f

    .line 198
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmount:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;

    .line 200
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$Companion$delayedDozeAmount$1;->setValue(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;F)V

    .line 202
    new-array v1, v5, [F

    .line 205
    const/4 v3, 0x0

    .line 207
    aput v3, v1, v4

    .line 208
    invoke-static {v0, v2, v1}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;

    .line 210
    move-result-object v1

    .line 213
    sget-object v2, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR:Landroidx/core/animation/LinearInterpolator;

    .line 214
    invoke-virtual {v1, v2}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 216
    const-wide/16 v2, 0x1f4

    .line 219
    invoke-virtual {v1, v2, v3}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    .line 221
    const-wide/16 v2, 0xfa

    .line 224
    invoke-virtual {v1, v2, v3}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 226
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnEnd$1;

    .line 229
    invoke-direct {v2, v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;I)V

    .line 231
    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    .line 234
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnEnd$1;

    .line 237
    invoke-direct {v2, v0, v4}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$scheduleDelayedDozeAmountAnimation$lambda$4$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;I)V

    .line 239
    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    .line 242
    invoke-virtual {v1}, Landroidx/core/animation/ObjectAnimator;->start()V

    .line 245
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountAnimator:Landroidx/core/animation/ObjectAnimator;

    .line 248
    :cond_b
    :goto_4
    return-void
    .line 250
.end method

.method public final shouldAnimateVisibility()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    .line 10
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public final updateDozeAmount()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 6
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputLinearDozeAmount:F

    .line 11
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountOverride:F

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 15
    move-result v0

    .line 18
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    .line 19
    cmpg-float v2, v1, v0

    .line 21
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-nez v2, :cond_1

    .line 25
    move v2, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v2, v3

    .line 29
    :goto_1
    xor-int/2addr v2, v4

    .line 30
    const/high16 v5, 0x3f800000    # 1.0f

    .line 31
    cmpg-float v6, v0, v5

    .line 33
    if-nez v6, :cond_2

    .line 35
    move v6, v4

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v6, v3

    .line 39
    :goto_2
    const/4 v7, 0x0

    .line 40
    if-nez v6, :cond_8

    .line 41
    cmpg-float v6, v0, v7

    .line 43
    if-nez v6, :cond_3

    .line 45
    move v6, v4

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move v6, v3

    .line 49
    :goto_3
    if-nez v6, :cond_8

    .line 50
    cmpg-float v6, v1, v7

    .line 52
    if-nez v6, :cond_4

    .line 54
    move v6, v4

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    move v6, v3

    .line 58
    :goto_4
    if-nez v6, :cond_6

    .line 59
    cmpg-float v6, v1, v5

    .line 61
    if-nez v6, :cond_5

    .line 63
    move v6, v4

    .line 65
    goto :goto_5

    .line 66
    :cond_5
    move v6, v3

    .line 67
    :goto_5
    if-eqz v6, :cond_8

    .line 68
    :cond_6
    cmpg-float v1, v1, v5

    .line 70
    if-nez v1, :cond_7

    .line 72
    move v1, v4

    .line 74
    goto :goto_6

    .line 75
    :cond_7
    move v1, v3

    .line 76
    :goto_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifyAnimationStart(Z)V

    .line 77
    :cond_8
    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeAmountInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    check-cast v1, Landroid/view/animation/PathInterpolator;

    .line 84
    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 86
    move-result v0

    .line 89
    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputEasedDozeAmount:F

    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->inputLinearDozeAmount:F

    .line 92
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->delayedDozeAmountOverride:F

    .line 94
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->hardDozeAmountOverride:Ljava/lang/Float;

    .line 96
    iget v8, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    .line 98
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 100
    invoke-interface {v9}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 102
    move-result v9

    .line 105
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    .line 106
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    cmpg-float v11, v0, v5

    .line 111
    if-nez v11, :cond_9

    .line 113
    move v11, v4

    .line 115
    goto :goto_7

    .line 116
    :cond_9
    move v11, v3

    .line 117
    :goto_7
    if-nez v11, :cond_b

    .line 118
    cmpg-float v11, v0, v7

    .line 120
    if-nez v11, :cond_a

    .line 122
    move v11, v4

    .line 124
    goto :goto_8

    .line 125
    :cond_a
    move v11, v3

    .line 126
    :goto_8
    if-nez v11, :cond_b

    .line 127
    move v11, v4

    .line 129
    goto :goto_9

    .line 130
    :cond_b
    move v11, v3

    .line 131
    :goto_9
    cmpg-float v5, v1, v5

    .line 132
    if-nez v5, :cond_c

    .line 134
    move v5, v4

    .line 136
    goto :goto_a

    .line 137
    :cond_c
    move v5, v3

    .line 138
    :goto_a
    if-nez v5, :cond_e

    .line 139
    cmpg-float v5, v1, v7

    .line 141
    if-nez v5, :cond_d

    .line 143
    move v5, v4

    .line 145
    goto :goto_b

    .line 146
    :cond_d
    move v5, v3

    .line 147
    :goto_b
    if-nez v5, :cond_e

    .line 148
    move v5, v4

    .line 150
    goto :goto_c

    .line 151
    :cond_e
    move v5, v3

    .line 152
    :goto_c
    const/4 v12, 0x0

    .line 153
    if-nez v11, :cond_f

    .line 154
    if-eqz v5, :cond_12

    .line 156
    :cond_f
    iget-boolean v13, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogInputWasFractional:Z

    .line 158
    if-ne v13, v11, :cond_12

    .line 160
    iget-boolean v13, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogDelayWasFractional:Z

    .line 162
    if-ne v13, v5, :cond_12

    .line 164
    iget v13, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogState:I

    .line 166
    if-ne v13, v9, :cond_12

    .line 168
    iget-object v13, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHardOverride:Ljava/lang/Float;

    .line 170
    if-nez v13, :cond_10

    .line 172
    if-nez v6, :cond_11

    .line 174
    goto :goto_d

    .line 176
    :cond_10
    if-eqz v6, :cond_11

    .line 177
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 179
    move-result v13

    .line 182
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 183
    move-result v14

    .line 186
    cmpl-float v13, v13, v14

    .line 187
    if-nez v13, :cond_11

    .line 189
    :goto_d
    move v13, v4

    .line 191
    goto :goto_e

    .line 192
    :cond_11
    move v13, v3

    .line 193
    :goto_e
    if-eqz v13, :cond_12

    .line 194
    goto :goto_f

    .line 196
    :cond_12
    iput-boolean v11, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogInputWasFractional:Z

    .line 197
    iput-boolean v5, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogDelayWasFractional:Z

    .line 199
    iput v9, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetDozeAmountLogState:I

    .line 201
    iput-object v6, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHardOverride:Ljava/lang/Float;

    .line 203
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 205
    sget-object v11, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logUpdateDozeAmount$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logUpdateDozeAmount$2;

    .line 207
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 209
    const-string v13, "NotificationWakeUpCoordinator"

    .line 211
    invoke-virtual {v10, v13, v5, v11, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 213
    move-result-object v5

    .line 216
    float-to-double v13, v0

    .line 217
    invoke-interface {v5, v13, v14}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 218
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    move-result-object v0

    .line 224
    invoke-interface {v5, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 225
    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 228
    move-result-object v0

    .line 231
    invoke-interface {v5, v0}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 232
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 238
    invoke-interface {v5, v0}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 239
    invoke-interface {v5, v9}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 242
    invoke-interface {v5, v2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 245
    invoke-virtual {v10, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 248
    :goto_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 251
    if-nez v0, :cond_13

    .line 253
    goto :goto_10

    .line 255
    :cond_13
    move-object v12, v0

    .line 256
    :goto_10
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputEasedDozeAmount:F

    .line 257
    iget-object v1, v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 259
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDozeAmount(F)V

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateHideAmount()V

    .line 264
    if-eqz v2, :cond_15

    .line 267
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    .line 269
    cmpg-float v0, v0, v7

    .line 271
    if-nez v0, :cond_14

    .line 273
    goto :goto_11

    .line 275
    :cond_14
    move v4, v3

    .line 276
    :goto_11
    if-eqz v4, :cond_15

    .line 277
    invoke-virtual {p0, v3, v3, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    .line 279
    invoke-virtual {p0, v3, v3, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    .line 282
    :cond_15
    return-void
    .line 285
.end method

.method public final updateHideAmount()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    sub-float v0, v1, v0

    .line 6
    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    .line 8
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 10
    move-result v0

    .line 13
    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    .line 14
    sub-float v2, v1, v2

    .line 16
    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputEasedDozeAmount:F

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 20
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logger:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;

    .line 24
    iget v4, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHideAmount:F

    .line 26
    cmpg-float v4, v4, v0

    .line 28
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    if-nez v4, :cond_0

    .line 32
    move v4, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v4, v5

    .line 36
    :goto_0
    const/4 v7, 0x0

    .line 37
    if-eqz v4, :cond_1

    .line 38
    goto :goto_4

    .line 40
    :cond_1
    iput v0, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHideAmount:F

    .line 41
    cmpg-float v4, v0, v1

    .line 43
    if-nez v4, :cond_2

    .line 45
    move v4, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v4, v5

    .line 49
    :goto_1
    if-nez v4, :cond_4

    .line 50
    const/4 v4, 0x0

    .line 52
    cmpg-float v4, v0, v4

    .line 53
    if-nez v4, :cond_3

    .line 55
    move v4, v6

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move v4, v5

    .line 59
    :goto_2
    if-nez v4, :cond_4

    .line 60
    move v4, v6

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move v4, v5

    .line 64
    :goto_3
    iget-boolean v8, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHideAmountLogWasFractional:Z

    .line 65
    if-eqz v8, :cond_5

    .line 67
    if-eqz v4, :cond_5

    .line 69
    goto :goto_4

    .line 71
    :cond_5
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->lastSetHideAmountLogWasFractional:Z

    .line 72
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 74
    sget-object v8, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetHideAmount$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logSetHideAmount$2;

    .line 76
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 78
    const-string v9, "NotificationWakeUpCoordinator"

    .line 80
    invoke-virtual {v3, v9, v4, v8, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 82
    move-result-object v4

    .line 85
    float-to-double v8, v0

    .line 86
    invoke-interface {v4, v8, v9}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 87
    invoke-virtual {v3, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 90
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 93
    if-nez v3, :cond_6

    .line 95
    goto :goto_5

    .line 97
    :cond_6
    move-object v7, v3

    .line 98
    :goto_5
    iget-object v3, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 99
    iput v0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLinearHideAmount:F

    .line 101
    iput v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInterpolatedHideAmount:F

    .line 103
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 105
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    .line 107
    move-result v4

    .line 110
    iget-object v7, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 111
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    .line 113
    move-result v7

    .line 116
    iget-object v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 117
    cmpl-float v9, v2, v1

    .line 119
    if-nez v9, :cond_7

    .line 121
    iget v9, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    .line 123
    cmpl-float v9, v9, v2

    .line 125
    if-eqz v9, :cond_7

    .line 127
    iget v9, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    .line 129
    const v10, 0x47c35000    # 100000.0f

    .line 131
    cmpl-float v9, v10, v9

    .line 134
    if-eqz v9, :cond_7

    .line 136
    iput v10, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    .line 138
    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOnPulseHeightChangedListener:Ljava/lang/Runnable;

    .line 140
    if-eqz v9, :cond_7

    .line 142
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 144
    :cond_7
    iput v2, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    .line 147
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 149
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isFullyHidden()Z

    .line 151
    move-result v2

    .line 154
    iget-object v8, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 155
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isHiddenAtAll()Z

    .line 157
    move-result v8

    .line 160
    if-eq v2, v4, :cond_8

    .line 161
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateVisibility()V

    .line 163
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetAllSwipeState()V

    .line 166
    :cond_8
    if-nez v7, :cond_9

    .line 169
    if-eqz v8, :cond_9

    .line 171
    iget-object v9, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 173
    invoke-virtual {v9, v6, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 175
    :cond_9
    if-ne v2, v4, :cond_a

    .line 178
    if-eq v7, v8, :cond_b

    .line 180
    :cond_a
    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidateOutline()V

    .line 182
    :cond_b
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 185
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateBackgroundDimming()V

    .line 188
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 191
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateOwnTranslationZ()V

    .line 194
    cmpg-float v0, v0, v1

    .line 197
    if-nez v0, :cond_c

    .line 199
    move v5, v6

    .line 201
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    .line 202
    if-eq v0, v5, :cond_d

    .line 204
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 210
    move-result-object p0

    .line 213
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    move-result v0

    .line 217
    if-eqz v0, :cond_d

    .line 218
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    move-result-object v0

    .line 223
    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    .line 224
    invoke-interface {v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;->onFullyHiddenChanged(Z)V

    .line 226
    goto :goto_6

    .line 229
    :cond_d
    return-void
    .line 230
.end method

.method public final updateNotificationVisibility(ZZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 12
    move-result v0

    .line 15
    xor-int/2addr v0, v2

    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v0, v2

    .line 22
    :goto_1
    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    move v0, v2

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v0, v1

    .line 33
    :goto_2
    if-nez v0, :cond_5

    .line 34
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    .line 36
    if-eqz v3, :cond_5

    .line 38
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    .line 40
    if-nez v3, :cond_3

    .line 42
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    .line 44
    if-eqz v3, :cond_5

    .line 46
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->outputLinearDozeAmount:F

    .line 48
    const/4 v4, 0x0

    .line 50
    cmpg-float v3, v3, v4

    .line 51
    if-nez v3, :cond_4

    .line 53
    move v1, v2

    .line 55
    :cond_4
    if-nez v1, :cond_5

    .line 56
    return-void

    .line 58
    :cond_5
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    .line 59
    return-void
    .line 62
.end method

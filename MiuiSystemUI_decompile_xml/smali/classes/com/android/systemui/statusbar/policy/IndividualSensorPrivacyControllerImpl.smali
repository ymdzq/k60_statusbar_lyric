.class public final Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;


# static fields
.field public static final SENSORS:[I


# instance fields
.field public final mCallbacks:Ljava/util/Set;

.field public final mHardwareToggleState:Landroid/util/SparseBooleanArray;

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mSoftwareToggleState:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    filled-new-array {v0, v1}, [I

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->SENSORS:[I

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/hardware/SensorPrivacyManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSoftwareToggleState:Landroid/util/SparseBooleanArray;

    .line 10
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mHardwareToggleState:Landroid/util/SparseBooleanArray;

    .line 17
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mCallbacks:Ljava/util/Set;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mCallbacks:Ljava/util/Set;

    .line 4
    check-cast p0, Landroid/util/ArraySet;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final init()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;)V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 7
    invoke-virtual {v1, v0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 9
    sget-object v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->SENSORS:[I

    .line 12
    const/4 v2, 0x0

    .line 14
    :goto_0
    const/4 v3, 0x2

    .line 15
    if-ge v2, v3, :cond_0

    .line 16
    aget v4, v0, v2

    .line 18
    const/4 v5, 0x1

    .line 20
    invoke-virtual {v1, v5, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    .line 21
    move-result v5

    .line 24
    invoke-virtual {v1, v3, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    .line 25
    move-result v3

    .line 28
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSoftwareToggleState:Landroid/util/SparseBooleanArray;

    .line 29
    invoke-virtual {v6, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 31
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mHardwareToggleState:Landroid/util/SparseBooleanArray;

    .line 34
    invoke-virtual {v5, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    return-void
    .line 42
.end method

.method public final isSensorBlocked(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSoftwareToggleState:Landroid/util/SparseBooleanArray;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mHardwareToggleState:Landroid/util/SparseBooleanArray;

    .line 11
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 13
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 19
    :cond_1
    return v1
    .line 20
.end method

.method public final isSensorBlockedByHardwareToggle(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mHardwareToggleState:Landroid/util/SparseBooleanArray;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mCallbacks:Ljava/util/Set;

    .line 4
    check-cast p0, Landroid/util/ArraySet;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final setSensorBlocked(IIZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroup(IIZ)V

    .line 4
    return-void
    .line 7
.end method

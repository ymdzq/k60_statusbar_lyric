.class public final Lcom/android/systemui/controlcenter/policy/ThermalController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final context:Landroid/content/Context;

.field public final listeners:Ljava/util/ArrayList;

.field public final thermalObserver:Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1;

.field public thermalValue:I

.field public final uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->uiHandler:Landroid/os/Handler;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->listeners:Ljava/util/ArrayList;

    .line 14
    new-instance p2, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1;

    .line 16
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1;-><init>(Lcom/android/systemui/controlcenter/policy/ThermalController;Landroid/os/Handler;)V

    .line 18
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->thermalObserver:Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object p0

    .line 26
    const-string/jumbo p1, "thermal_temp_state_value"

    .line 27
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    move-result-object p1

    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-virtual {p0, p1, p3, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 35
    invoke-virtual {p2, p3}, Lcom/android/systemui/controlcenter/policy/ThermalController$thermalObserver$1;->onChange(Z)V

    .line 38
    return-void
    .line 41
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ThermalController$ThermalListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->listeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p1}, Lcom/android/systemui/controlcenter/policy/ThermalController$ThermalListener;->onThermalChanged()V

    .line 9
    return-void
    .line 12
.end method

.method public final isCellularAvailable()Z
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->thermalValue:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    const/4 v2, 0x4

    .line 8
    if-eq p0, v2, :cond_0

    .line 9
    const/4 v2, 0x6

    .line 11
    if-eq p0, v2, :cond_0

    .line 12
    const/4 v2, 0x7

    .line 14
    if-eq p0, v2, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    return v0
    .line 19
.end method

.method public final isGpsAvailable()Z
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->thermalValue:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    const/4 v2, 0x3

    .line 8
    if-eq p0, v2, :cond_0

    .line 9
    const/4 v2, 0x5

    .line 11
    if-eq p0, v2, :cond_0

    .line 12
    const/4 v2, 0x7

    .line 14
    if-eq p0, v2, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    return v0
    .line 19
.end method

.method public final isHotspotAvailable()Z
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->thermalValue:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    const/4 v2, 0x2

    .line 8
    if-eq p0, v2, :cond_0

    .line 9
    const/4 v2, 0x5

    .line 11
    if-eq p0, v2, :cond_0

    .line 12
    const/4 v2, 0x6

    .line 14
    if-eq p0, v2, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    return v0
    .line 19
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ThermalController$ThermalListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ThermalController;->listeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

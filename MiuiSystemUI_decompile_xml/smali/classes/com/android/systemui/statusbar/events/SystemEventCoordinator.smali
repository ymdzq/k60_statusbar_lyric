.class public final Lcom/android/systemui/statusbar/events/SystemEventCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Landroid/content/Context;

.field public miuiOptimization:Z

.field public final miuiOptimizationChangedListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$miuiOptimizationChangedListener$1;

.field public final privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public final privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

.field public scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field public final settingsManager:Lcom/miui/systemui/SettingsManager;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/privacy/PrivacyItemController;Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lcom/miui/systemui/SettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->context:Landroid/content/Context;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->settingsManager:Lcom/miui/systemui/SettingsManager;

    .line 11
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    .line 13
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    .line 18
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$miuiOptimizationChangedListener$1;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$miuiOptimizationChangedListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->miuiOptimizationChangedListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$miuiOptimizationChangedListener$1;

    .line 25
    return-void
    .line 27
.end method

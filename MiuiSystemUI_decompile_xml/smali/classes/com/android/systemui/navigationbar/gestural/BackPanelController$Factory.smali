.class public final Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final latencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mainHandler:Landroid/os/Handler;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final viewConfiguration:Landroid/view/ViewConfiguration;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/view/ViewConfiguration;Landroid/os/Handler;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/util/LatencyTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->windowManager:Landroid/view/WindowManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->viewConfiguration:Landroid/view/ViewConfiguration;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->mainHandler:Landroid/os/Handler;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 15
    return-void
    .line 17
.end method

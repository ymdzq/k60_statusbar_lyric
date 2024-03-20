.class public final Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mMultiTaskStatusBarDotsAreaController:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/android/systemui/statusbar/FeatureController;->SPLIT_SCREEN_STATUS_BAR_DOTS_AREA_AVOIDANCE_FEATURE:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerImpl;

    .line 9
    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerImpl;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;->mMultiTaskStatusBarDotsAreaController:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerBaseImpl;

    .line 17
    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerBaseImpl;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;->mMultiTaskStatusBarDotsAreaController:Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaController;

    .line 22
    :goto_0
    return-void
.end method

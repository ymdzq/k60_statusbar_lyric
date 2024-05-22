.class public final Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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

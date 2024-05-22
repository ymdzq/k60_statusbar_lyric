.class public final synthetic Lcom/android/systemui/statusbar/notification/zen/ZenModeView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/zen/ZenModeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 2
    sget-object v0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->TRANSITION_ALPHA:Lcom/android/systemui/statusbar/notification/zen/ZenModeView$2;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string v0, "ZenModeView"

    .line 13
    const-string v1, "animateTouchScale scale=$scale, changing=$isGroupExpansionChanging"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/RowAnimationUtils;->startTouchAnimationIfNeed(FLcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 22
    return-void
    .line 25
.end method

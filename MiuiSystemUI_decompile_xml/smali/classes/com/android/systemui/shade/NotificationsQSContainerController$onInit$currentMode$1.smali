.class public final Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$currentMode$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$currentMode$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 2
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$onInit$currentMode$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->isGestureNavigation:Z

    .line 8
    return-void
    .line 10
.end method

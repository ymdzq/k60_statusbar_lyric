.class public final Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTaskbarStatusUpdated(ZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$taskbarVisibilityListener$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->taskbarVisible:Z

    .line 4
    return-void
    .line 6
.end method

.class public final Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    .line 6
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const-string v1, "NotificationShadeWindowController"

    .line 13
    const-string v2, "Failed to call setHasTopUi"

    .line 15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 20
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    .line 24
    return-void
    .line 26
.end method

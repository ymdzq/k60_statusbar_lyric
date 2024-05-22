.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mPanelAppeared$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $value:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mPanelAppeared$1;->$value:Z

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mPanelAppeared$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mPanelAppeared$1;->$value:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mPanelAppeared$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 8
    iget v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setQsExpansion(F)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerShowing:Z

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateKeyguardElementsExpansion(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mKeyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardVisibility:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateAwesomeState()V

    .line 6
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateKeyguardElementsExpansion(Z)V

    .line 10
    return-void
    .line 13
.end method

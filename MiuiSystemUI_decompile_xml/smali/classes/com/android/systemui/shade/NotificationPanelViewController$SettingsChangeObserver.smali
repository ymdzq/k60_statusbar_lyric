.class public final Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->reInflateViews()V

    .line 9
    return-void
    .line 12
.end method

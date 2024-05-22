.class public final Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager$configurationListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLocaleListChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->reinflateZenModeView()V

    .line 4
    return-void
    .line 7
.end method

.method public final onUiModeChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager$configurationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->getZenModeView()Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mContent:Landroid/view/ViewGroup;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mContent:Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->loadContentViews()V

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->resetContentText()V

    .line 29
    :cond_1
    :goto_0
    return-void
    .line 32
.end method

.class public final Lcom/android/keyguard/LockIconViewController$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->updateConfiguration()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 7
    check-cast p0, Lcom/android/keyguard/LockIconView;

    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconView;->updateColorAndBackgroundVisibility()V

    .line 11
    return-void
    .line 14
.end method

.method public final onThemeChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast p0, Lcom/android/keyguard/LockIconView;

    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconView;->updateColorAndBackgroundVisibility()V

    .line 8
    return-void
    .line 11
.end method

.method public final onUiModeChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast p0, Lcom/android/keyguard/LockIconView;

    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconView;->updateColorAndBackgroundVisibility()V

    .line 8
    return-void
    .line 11
.end method

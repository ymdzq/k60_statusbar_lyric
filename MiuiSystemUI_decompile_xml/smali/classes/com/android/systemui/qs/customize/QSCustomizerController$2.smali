.class public final Lcom/android/systemui/qs/customize/QSCustomizerController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 17
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 19
    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 23
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 25
    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 27
    if-nez v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->hide()V

    .line 31
    :cond_1
    return-void
    .line 34
.end method

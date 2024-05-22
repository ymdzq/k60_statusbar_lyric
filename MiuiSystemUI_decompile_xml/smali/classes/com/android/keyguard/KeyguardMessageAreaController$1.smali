.class public final Lcom/android/keyguard/KeyguardMessageAreaController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardMessageAreaController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardMessageAreaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 10
    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    .line 12
    iget-object v0, v0, Lcom/android/keyguard/KeyguardMessageAreaController;->mAnnounceRunnable:Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;

    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 19
    iget-object v1, v0, Lcom/android/keyguard/KeyguardMessageAreaController;->mAnnounceRunnable:Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;

    .line 21
    iput-object p1, v1, Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;->mTextToAnnounce:Ljava/lang/CharSequence;

    .line 23
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 25
    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    .line 27
    new-instance v1, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;

    .line 29
    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardMessageAreaController$1;Ljava/lang/CharSequence;)V

    .line 31
    const-wide/16 p0, 0xfa

    .line 34
    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    :cond_0
    return-void
    .line 39
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

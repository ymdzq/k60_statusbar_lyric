.class public final synthetic Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPinViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPinViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardPinViewController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardPinViewController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast p0, Lcom/android/keyguard/KeyguardPINView;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    return-void
    .line 11
.end method

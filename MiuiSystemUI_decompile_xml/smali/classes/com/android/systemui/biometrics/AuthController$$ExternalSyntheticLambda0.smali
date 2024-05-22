.class public final synthetic Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->updateSensorLocations()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 11
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->maybeUpdatePositionForUdfps(Z)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    invoke-interface {p0}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->onOrientationChanged()V

    .line 21
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    return-object p0
    .line 26
.end method

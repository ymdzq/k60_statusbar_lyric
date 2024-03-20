.class public final synthetic Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/biometrics/AuthController;

    .line 5
    iput p2, p0, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/biometrics/AuthController;

    .line 2
    iget p0, p0, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    .line 8
    const v2, 0x104041e    # @android:string/grant_credentials_permission_message_header

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    check-cast v1, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 17
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->onAuthenticationFailed(ILjava/lang/String;)V

    .line 19
    return-void
    .line 22
.end method

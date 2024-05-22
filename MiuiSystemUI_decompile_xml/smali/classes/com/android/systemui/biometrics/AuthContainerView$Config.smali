.class public final Lcom/android/systemui/biometrics/AuthContainerView$Config;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCallback:Lcom/android/systemui/biometrics/AuthController;

.field public mContext:Landroid/content/Context;

.field public mOpPackageName:Ljava/lang/String;

.field public mOperationId:J

.field public mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public mRequestId:J

.field public mRequireConfirmation:Z

.field public mScaleProvider:Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;

.field public mSensorIds:[I

.field public mSkipIntro:Z

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    .line 7
    return-void
    .line 9
.end method

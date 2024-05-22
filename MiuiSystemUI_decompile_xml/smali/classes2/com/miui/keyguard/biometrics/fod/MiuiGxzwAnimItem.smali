.class public abstract Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAodFalse:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

.field public final mAodRecognizing:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

.field public final mLightFalse:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

.field public final mLightRecognizing:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

.field public final mNormalFalse:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

.field public final mNormalRecognizing:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->generalNormalRecognizing()Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mAodRecognizing:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 9
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->generalNormalRecognizing()Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mAodFalse:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 15
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->generalNormalRecognizing()Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mNormalRecognizing:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 21
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->generalNormalRecognizing()Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 23
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mNormalFalse:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 27
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->generalNormalRecognizing()Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 29
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mLightRecognizing:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 33
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->generalNormalRecognizing()Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 35
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mLightFalse:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 39
    return-void
    .line 41
.end method


# virtual methods
.method public abstract generalNormalRecognizing()Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;
.end method

.method public abstract getFodMotionRtpId()I
.end method

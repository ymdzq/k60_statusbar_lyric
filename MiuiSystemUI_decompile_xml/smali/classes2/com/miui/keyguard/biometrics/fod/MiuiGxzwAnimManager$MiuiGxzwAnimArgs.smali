.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public aod:Z

.field public backgroundFrame:I

.field public backgroundRes:I

.field public feedback:Z

.field public frameInterval:I

.field public repeat:Z

.field public final res:[I

.field public final startPosition:I

.field public translateX:I

.field public translateY:I


# direct methods
.method public constructor <init>([IIZIIIZZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->res:[I

    .line 5
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->startPosition:I

    .line 7
    iput-boolean p3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->repeat:Z

    .line 9
    iput p4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->frameInterval:I

    .line 11
    iput p5, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->backgroundRes:I

    .line 13
    iput p6, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->backgroundFrame:I

    .line 15
    iput-boolean p7, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->feedback:Z

    .line 17
    iput-boolean p8, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->aod:Z

    .line 19
    iput p9, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->translateX:I

    .line 21
    iput p10, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->translateY:I

    .line 23
    return-void
    .line 25
.end method

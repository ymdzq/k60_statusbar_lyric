.class public final Lmiui/stub/MiuiProxy$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic val$iCallbacks:Lcom/miui/sysuiinterfaces/ICommandQueue$ICallbacks;


# direct methods
.method public constructor <init>(Lcom/miui/sysuiinterfaces/ICommandQueue$ICallbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiui/stub/MiuiProxy$2;->val$iCallbacks:Lcom/miui/sysuiinterfaces/ICommandQueue$ICallbacks;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/stub/MiuiProxy$2;->val$iCallbacks:Lcom/miui/sysuiinterfaces/ICommandQueue$ICallbacks;

    if-eqz p0, :cond_1

    .line 2
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 3
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mDisableFingerprintIcon:Z

    and-int/lit16 p2, p2, 0x800

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    iput-boolean p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mDisableFingerprintIcon:Z

    if-eq p1, p2, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "disable: mDisableFingerprintIcon = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mDisableFingerprintIcon:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiGxzwManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->updateGxzwState()V

    :cond_1
    return-void
.end method

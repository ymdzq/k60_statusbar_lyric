.class public final Lcom/android/systemui/statusbar/policy/BlurUtilsExt$settingsListener$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/BlurUtilsExt;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt$settingsListener$1;->this$0:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 2
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt$settingsListener$1;->this$0:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 9
    const-string v0, "disable_window_blurs"

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 19
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurDisabledBySettings:Z

    .line 20
    return-void
    .line 22
.end method

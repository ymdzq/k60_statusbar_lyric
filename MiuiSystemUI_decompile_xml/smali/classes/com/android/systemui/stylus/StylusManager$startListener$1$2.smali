.class final Lcom/android/systemui/stylus/StylusManager$startListener$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stylus/StylusManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/stylus/StylusManager$startListener$1$2;->this$0:Lcom/android/systemui/stylus/StylusManager;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/view/InputDevice;

    .line 2
    const/16 v0, 0x4002

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/view/InputDevice;->isExternal()Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusManager$startListener$1$2;->this$0:Lcom/android/systemui/stylus/StylusManager;

    .line 25
    invoke-virtual {p1}, Landroid/view/InputDevice;->getBatteryState()Landroid/hardware/BatteryState;

    .line 27
    move-result-object p1

    .line 30
    sget-object v0, Lcom/android/systemui/stylus/StylusManager;->TAG:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-virtual {p1}, Landroid/hardware/BatteryState;->isPresent()Z

    .line 36
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/hardware/BatteryState;->getCapacity()F

    .line 42
    move-result p0

    .line 45
    const/4 p1, 0x0

    .line 46
    cmpl-float p0, p0, p1

    .line 47
    if-lez p0, :cond_1

    .line 49
    move p0, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move p0, v1

    .line 53
    :goto_1
    if-eqz p0, :cond_2

    .line 54
    move v1, v2

    .line 56
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object p0

    .line 60
    return-object p0
    .line 61
.end method

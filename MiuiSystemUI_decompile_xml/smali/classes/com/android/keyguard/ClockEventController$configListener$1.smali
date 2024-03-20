.class public final Lcom/android/keyguard/ClockEventController$configListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$configListener$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$configListener$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->updateFontSizes()V

    .line 4
    return-void
    .line 7
.end method

.method public final onThemeChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$configListener$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockController;->getEvents()Lcom/android/systemui/plugins/ClockEvents;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->resources:Landroid/content/res/Resources;

    .line 12
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ClockEvents;->onColorPaletteChanged(Landroid/content/res/Resources;)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->updateColors()V

    .line 17
    return-void
    .line 20
.end method

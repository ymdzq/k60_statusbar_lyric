.class public final Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;
.super Lcom/android/systemui/accessibility/SecureSettingsContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    .line 1
    const-string v0, "accessibility_button_targets"

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onValueChanged(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver$TargetsChangedListener;

    .line 2
    invoke-interface {p1, p2}, Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver$TargetsChangedListener;->onAccessibilityButtonTargetsChanged(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

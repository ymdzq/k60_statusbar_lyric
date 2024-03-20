.class Lcom/android/settings/accessibility/VisualAccessibilitySettings$3;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "VisualAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/VisualAccessibilitySettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/VisualAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/VisualAccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/VisualAccessibilitySettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/VisualAccessibilitySettings;

    invoke-static {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->-$$Nest$mupdateAllPreferences(Lcom/android/settings/accessibility/VisualAccessibilitySettings;)V

    return-void
.end method

.class Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$4;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "PhysicalAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$4;->this$0:Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$4;->this$0:Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;

    invoke-static {p0}, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;->-$$Nest$mupdateAllPreferences(Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;)V

    return-void
.end method

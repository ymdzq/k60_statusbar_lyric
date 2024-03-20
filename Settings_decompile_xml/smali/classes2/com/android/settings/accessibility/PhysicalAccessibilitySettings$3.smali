.class Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "PhysicalAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;->-$$Nest$fgetmHandler(Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;

    invoke-static {p0}, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;->-$$Nest$fgetmUpdateRunnable(Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$3;->sendUpdate()V

    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$3;->sendUpdate()V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$3;->sendUpdate()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings$3;->sendUpdate()V

    return-void
.end method

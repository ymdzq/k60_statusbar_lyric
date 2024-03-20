.class Lcom/android/settings/accessibility/GeneralAccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "GeneralAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/GeneralAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/GeneralAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/GeneralAccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/GeneralAccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->-$$Nest$fgetmHandler(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$2;->this$0:Lcom/android/settings/accessibility/GeneralAccessibilitySettings;

    invoke-static {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->-$$Nest$fgetmUpdateRunnable(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$2;->sendUpdate()V

    return-void
.end method

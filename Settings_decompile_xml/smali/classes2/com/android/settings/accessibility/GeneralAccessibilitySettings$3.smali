.class Lcom/android/settings/accessibility/GeneralAccessibilitySettings$3;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "GeneralAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/GeneralAccessibilitySettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/GeneralAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/GeneralAccessibilitySettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$3;->this$0:Lcom/android/settings/accessibility/GeneralAccessibilitySettings;

    invoke-static {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->-$$Nest$mupdateAllPreferences(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;)V

    return-void
.end method

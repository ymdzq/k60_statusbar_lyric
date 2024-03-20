.class Lcom/android/settings/accessibility/HearingAccessibilitySettings$4;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "HearingAccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/HearingAccessibilitySettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/HearingAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/HearingAccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$4;->this$0:Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$4;->this$0:Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    invoke-static {p0}, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->-$$Nest$mupdateAllPreferences(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)V

    return-void
.end method

.class Lcom/android/settings/accessibility/HapticSettingsFragment$1;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "HapticSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/HapticSettingsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/HapticSettingsFragment;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$1;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment$1;->this$0:Lcom/android/settings/accessibility/HapticSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->-$$Nest$mupdateAllPreferences(Lcom/android/settings/accessibility/HapticSettingsFragment;)V

    return-void
.end method

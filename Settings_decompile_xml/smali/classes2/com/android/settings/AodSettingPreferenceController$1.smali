.class Lcom/android/settings/AodSettingPreferenceController$1;
.super Ljava/lang/Object;
.source "AodSettingPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AodSettingPreferenceController;->handleToggleInversionPreferenceChange(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AodSettingPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/AodSettingPreferenceController;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/AodSettingPreferenceController$1;->this$0:Lcom/android/settings/AodSettingPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settings/AodSettingPreferenceController$1;->this$0:Lcom/android/settings/AodSettingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/AodSettingPreferenceController;->access$000(Lcom/android/settings/AodSettingPreferenceController;)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.class Lcom/android/settings/wireless/TetherEntryController$2;
.super Ljava/lang/Object;
.source "TetherEntryController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wireless/TetherEntryController;->updateValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wireless/TetherEntryController;


# direct methods
.method constructor <init>(Lcom/android/settings/wireless/TetherEntryController;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/wireless/TetherEntryController$2;->this$0:Lcom/android/settings/wireless/TetherEntryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/wireless/TetherEntryController$2;->this$0:Lcom/android/settings/wireless/TetherEntryController;

    invoke-static {v0}, Lcom/android/settings/wireless/TetherEntryController;->-$$Nest$fgetmPreference(Lcom/android/settings/wireless/TetherEntryController;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary2Value(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/wireless/TetherEntryController$2;->this$0:Lcom/android/settings/wireless/TetherEntryController;

    invoke-static {v0}, Lcom/android/settings/wireless/TetherEntryController;->-$$Nest$fgetmPreference(Lcom/android/settings/wireless/TetherEntryController;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wireless/TetherEntryController$2;->this$0:Lcom/android/settings/wireless/TetherEntryController;

    invoke-static {p0}, Lcom/android/settings/wireless/TetherEntryController;->access$000(Lcom/android/settings/wireless/TetherEntryController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wireless/TetherEntryController;->isWifiTetherEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 97
    sget p0, Lcom/android/settings/R$string;->wireless_on:I

    goto :goto_0

    .line 98
    :cond_0
    sget p0, Lcom/android/settings/R$string;->wireless_off:I

    .line 96
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.class Lcom/android/settings/wireless/MiuiNFCController$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiNFCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wireless/MiuiNFCController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wireless/MiuiNFCController;


# direct methods
.method constructor <init>(Lcom/android/settings/wireless/MiuiNFCController;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/wireless/MiuiNFCController$1;->this$0:Lcom/android/settings/wireless/MiuiNFCController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; mPreference: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNFCController$1;->this$0:Lcom/android/settings/wireless/MiuiNFCController;

    invoke-static {v0}, Lcom/android/settings/wireless/MiuiNFCController;->-$$Nest$fgetmPreference(Lcom/android/settings/wireless/MiuiNFCController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiNFCController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNFCController$1;->this$0:Lcom/android/settings/wireless/MiuiNFCController;

    invoke-static {v0}, Lcom/android/settings/wireless/MiuiNFCController;->-$$Nest$fgetmPreference(Lcom/android/settings/wireless/MiuiNFCController;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 43
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNFCController$1;->this$0:Lcom/android/settings/wireless/MiuiNFCController;

    invoke-static {p0}, Lcom/android/settings/wireless/MiuiNFCController;->-$$Nest$fgetmPreference(Lcom/android/settings/wireless/MiuiNFCController;)Landroidx/preference/Preference;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->accessibility_feature_state_on:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNFCController$1;->this$0:Lcom/android/settings/wireless/MiuiNFCController;

    invoke-static {p0}, Lcom/android/settings/wireless/MiuiNFCController;->-$$Nest$fgetmPreference(Lcom/android/settings/wireless/MiuiNFCController;)Landroidx/preference/Preference;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->accessibility_feature_state_off:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.class Lcom/android/settings/bluetooth/AuracastSourceController$3;
.super Ljava/lang/Object;
.source "AuracastSourceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/AuracastSourceController;->createDialogForBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/AuracastSourceController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AuracastSourceController;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$3;->this$0:Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$3;->this$0:Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/AuracastSourceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$3;->this$0:Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fgetmBapBroadcastProfile(Lcom/android/settings/bluetooth/AuracastSourceController;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getBroadcastStatus(Ljava/lang/Object;)I

    move-result p1

    .line 186
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController$3;->this$0:Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/AuracastSourceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.class Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;
.super Landroid/os/Handler;
.source "AuracastSourceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/AuracastSourceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MainHandler"
.end annotation


# instance fields
.field mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/AuracastSourceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AuracastSourceController;)V
    .locals 1

    .line 227
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BT state, msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuracastSourceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage mController is null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/16 v1, 0x65

    if-eq p1, v1, :cond_4

    const/16 v2, 0x66

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 240
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/AuracastSourceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/AuracastSourceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 242
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/AuracastSourceController;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 244
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastSourceController;

    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    .line 245
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-static {v0}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fgetmManager(Lcom/android/settings/bluetooth/AuracastSourceController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getBroadcastProfile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fputmBapBroadcastProfile(Lcom/android/settings/bluetooth/AuracastSourceController;Ljava/lang/Object;)V

    .line 246
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AuracastSourceController;->refreshPreference()V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastSourceController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$mupdatePreferenceState(Lcom/android/settings/bluetooth/AuracastSourceController;Z)V

    .line 252
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastSourceController;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fputmBapBroadcastProfile(Lcom/android/settings/bluetooth/AuracastSourceController;Ljava/lang/Object;)V

    .line 253
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/AuracastSourceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->bluetooth_auracast_source_explain_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 255
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/AuracastSourceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 261
    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AuracastSourceController;->refreshPreference()V

    goto :goto_0

    .line 258
    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceController$MainHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastSourceController;->-$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/AuracastSourceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

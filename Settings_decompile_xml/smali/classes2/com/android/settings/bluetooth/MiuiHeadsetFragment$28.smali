.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->initButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 4224
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 4227
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object p1

    .line 4228
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sHeadset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object p1

    .line 4229
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object p1

    .line 4230
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "common"

    .line 4232
    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4240
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$maskUnpair(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    goto :goto_1

    .line 4233
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$munpairDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    .line 4234
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mdeleteOnSavedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    .line 4235
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmPrefConfig(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4236
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmPrefConfig(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;->clearSharedPreferencesConfig(Landroid/app/Activity;)V

    .line 4238
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->finish()V

    :goto_1
    return-void
.end method

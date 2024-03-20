.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$30;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateSilentUpgrdeSwitch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4362
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$30;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$30;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4366
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$30;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    .line 4367
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$30;->val$status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4368
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$30;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4369
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$30;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmSilentUpgradeStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 4371
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$30;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4372
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$30;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmSilentUpgradeStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4376
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

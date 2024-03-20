.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$48;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->askUnpair()V
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

    .line 5843
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$48;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5845
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$48;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$munpairDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    .line 5846
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$48;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mdeleteOnSavedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    .line 5847
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$48;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmPrefConfig(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$48;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5848
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$48;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmPrefConfig(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$48;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;->clearSharedPreferencesConfig(Landroid/app/Activity;)V

    .line 5850
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$48;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->finish()V

    return-void
.end method

.class Lcom/android/settings/VonrSwitchView$1$1;
.super Ljava/lang/Object;
.source "VonrSwitchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VonrSwitchView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/VonrSwitchView$1;

.field final synthetic val$isChecked:Z

.field final synthetic val$isEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/settings/VonrSwitchView$1;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/android/settings/VonrSwitchView$1$1;->this$1:Lcom/android/settings/VonrSwitchView$1;

    iput-boolean p2, p0, Lcom/android/settings/VonrSwitchView$1$1;->val$isEnabled:Z

    iput-boolean p3, p0, Lcom/android/settings/VonrSwitchView$1$1;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settings/VonrSwitchView$1$1;->this$1:Lcom/android/settings/VonrSwitchView$1;

    iget-object v0, v0, Lcom/android/settings/VonrSwitchView$1;->this$0:Lcom/android/settings/VonrSwitchView;

    invoke-static {v0}, Lcom/android/settings/VonrSwitchView;->-$$Nest$fgetmButtonVonr(Lcom/android/settings/VonrSwitchView;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/VonrSwitchView$1$1;->val$isEnabled:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/VonrSwitchView$1$1;->this$1:Lcom/android/settings/VonrSwitchView$1;

    iget-object v0, v0, Lcom/android/settings/VonrSwitchView$1;->this$0:Lcom/android/settings/VonrSwitchView;

    invoke-static {v0}, Lcom/android/settings/VonrSwitchView;->-$$Nest$fgetmButtonVonr(Lcom/android/settings/VonrSwitchView;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/settings/VonrSwitchView$1$1;->val$isChecked:Z

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

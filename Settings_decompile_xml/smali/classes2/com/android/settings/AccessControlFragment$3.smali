.class Lcom/android/settings/AccessControlFragment$3;
.super Ljava/lang/Object;
.source "AccessControlFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessControlFragment;->updatePrivacyEnabledPreference(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessControlFragment;

.field final synthetic val$checkBoxPreference:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlFragment;Landroidx/preference/CheckBoxPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/android/settings/AccessControlFragment$3;->this$0:Lcom/android/settings/AccessControlFragment;

    iput-object p2, p0, Lcom/android/settings/AccessControlFragment$3;->val$checkBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/android/settings/AccessControlFragment$3;->this$0:Lcom/android/settings/AccessControlFragment;

    invoke-static {p1}, Lcom/android/settings/AccessControlFragment;->-$$Nest$fgetmChooseLockSettingsHelper(Lcom/android/settings/AccessControlFragment;)Landroid/security/ChooseLockSettingsHelper;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    .line 167
    iget-object p0, p0, Lcom/android/settings/AccessControlFragment$3;->val$checkBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
